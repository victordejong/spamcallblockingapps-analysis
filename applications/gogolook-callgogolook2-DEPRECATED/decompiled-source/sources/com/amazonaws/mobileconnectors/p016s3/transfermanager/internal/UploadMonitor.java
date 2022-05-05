package com.amazonaws.mobileconnectors.p016s3.transfermanager.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListenerCallbackExecutor;
import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.TransferManager;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.model.UploadResult;
import com.amazonaws.services.p017s3.AmazonS3;
import com.amazonaws.services.p017s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.p017s3.model.PartETag;
import com.amazonaws.services.p017s3.model.PutObjectRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.LogFactory;
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadMonitor */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor.class */
public class UploadMonitor implements Callable<UploadResult>, TransferMonitor {
    public final UploadCallable multipartUploadCallable;
    public final ProgressListenerCallbackExecutor progressListenerChainCallbackExecutor;
    public final PutObjectRequest putObjectRequest;

    /* renamed from: s3 */
    public final AmazonS3 f809s3;
    public final ExecutorService threadPool;
    public ScheduledExecutorService timedThreadPool;
    public final UploadImpl transfer;
    public String uploadId;
    public final List<Future<PartETag>> futures = new ArrayList();
    public int pollInterval = 5000;

    static {
        LogFactory.getLog(UploadMonitor.class);
    }

    public UploadMonitor(TransferManager transferManager, UploadImpl uploadImpl, ExecutorService executorService, UploadCallable uploadCallable, PutObjectRequest putObjectRequest, ProgressListenerChain progressListenerChain) {
        this.f809s3 = transferManager.getAmazonS3Client();
        transferManager.getConfiguration();
        this.multipartUploadCallable = uploadCallable;
        this.threadPool = executorService;
        this.putObjectRequest = putObjectRequest;
        this.progressListenerChainCallbackExecutor = ProgressListenerCallbackExecutor.wrapListener(progressListenerChain);
        this.transfer = uploadImpl;
        setNextFuture(executorService.submit(this));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public UploadResult call() throws Exception {
        try {
            return this.uploadId == null ? upload() : poll();
        } catch (CancellationException e) {
            this.transfer.setState(Transfer.TransferState.Canceled);
            fireProgressEvent(16);
            throw new AmazonClientException("Upload canceled");
        } catch (Exception e2) {
            this.transfer.setState(Transfer.TransferState.Failed);
            fireProgressEvent(8);
            throw e2;
        }
    }

    public final List<PartETag> collectPartETags() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.multipartUploadCallable.getETags());
        for (Future<PartETag> future : this.futures) {
            try {
                arrayList.add(future.get());
            } catch (Exception e) {
                throw new AmazonClientException("Unable to upload part: " + e.getCause().getMessage(), e.getCause());
            }
        }
        return arrayList;
    }

    public final UploadResult completeMultipartUpload() {
        CompleteMultipartUploadResult completeMultipartUpload = this.f809s3.completeMultipartUpload(new CompleteMultipartUploadRequest(this.putObjectRequest.getBucketName(), this.putObjectRequest.getKey(), this.uploadId, collectPartETags()));
        uploadComplete();
        UploadResult uploadResult = new UploadResult();
        uploadResult.setBucketName(completeMultipartUpload.getBucketName());
        uploadResult.setKey(completeMultipartUpload.getKey());
        uploadResult.setETag(completeMultipartUpload.getETag());
        uploadResult.setVersionId(completeMultipartUpload.getVersionId());
        return uploadResult;
    }

    public final void fireProgressEvent(int i) {
        if (this.progressListenerChainCallbackExecutor != null) {
            ProgressEvent progressEvent = new ProgressEvent(0L);
            progressEvent.setEventCode(i);
            this.progressListenerChainCallbackExecutor.progressChanged(progressEvent);
        }
    }

    public final void markAllDone() {
        synchronized (this) {
        }
    }

    public final UploadResult poll() throws InterruptedException {
        for (Future<PartETag> future : this.futures) {
            if (!future.isDone()) {
                reschedule();
                return null;
            }
        }
        for (Future<PartETag> future2 : this.futures) {
            if (future2.isCancelled()) {
                throw new CancellationException();
            }
        }
        return completeMultipartUpload();
    }

    public final void reschedule() {
        setNextFuture(this.timedThreadPool.schedule(new Callable<UploadResult>() { // from class: com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadMonitor.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public UploadResult call() throws Exception {
                UploadMonitor uploadMonitor = UploadMonitor.this;
                uploadMonitor.setNextFuture(uploadMonitor.threadPool.submit(UploadMonitor.this));
                return null;
            }
        }, this.pollInterval, TimeUnit.MILLISECONDS));
    }

    public final void setNextFuture(Future<UploadResult> future) {
        synchronized (this) {
        }
    }

    public void setTimedThreadPool(ScheduledExecutorService scheduledExecutorService) {
        this.timedThreadPool = scheduledExecutorService;
    }

    public final UploadResult upload() throws Exception, InterruptedException {
        UploadResult call = this.multipartUploadCallable.call();
        if (call != null) {
            uploadComplete();
        } else {
            this.uploadId = this.multipartUploadCallable.getMultipartUploadId();
            this.futures.addAll(this.multipartUploadCallable.getFutures());
            reschedule();
        }
        return call;
    }

    public final void uploadComplete() {
        markAllDone();
        this.transfer.setState(Transfer.TransferState.Completed);
        if (this.multipartUploadCallable.isMultipartUpload()) {
            fireProgressEvent(4);
        }
    }
}
