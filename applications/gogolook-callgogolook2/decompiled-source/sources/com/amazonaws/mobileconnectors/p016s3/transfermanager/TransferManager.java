package com.amazonaws.mobileconnectors.p016s3.transfermanager;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.S3ProgressListener;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.S3ProgressListenerChain;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.TransferManagerUtils;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.TransferProgressUpdatingListener;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.TransferStateChangeListener;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.UploadCallable;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.UploadImpl;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.UploadMonitor;
import com.amazonaws.services.p017s3.AmazonS3;
import com.amazonaws.services.p017s3.AmazonS3Client;
import com.amazonaws.services.p017s3.model.ObjectMetadata;
import com.amazonaws.services.p017s3.model.PutObjectRequest;
import com.amazonaws.services.p017s3.util.Mimetypes;
import com.amazonaws.util.VersionInfoUtils;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.logging.LogFactory;
@Deprecated
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.TransferManager */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/TransferManager.class */
public class TransferManager {
    public static final String USER_AGENT = TransferManager.class.getName() + "/" + VersionInfoUtils.getVersion();
    public static final String USER_AGENT_MULTIPART = TransferManager.class.getName() + "_multipart/" + VersionInfoUtils.getVersion();
    public static final ThreadFactory daemonThreadFactory = new ThreadFactory() { // from class: com.amazonaws.mobileconnectors.s3.transfermanager.TransferManager.3
        public final AtomicInteger threadCount = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            int incrementAndGet = this.threadCount.incrementAndGet();
            Thread thread = new Thread(runnable);
            thread.setDaemon(true);
            thread.setName("S3TransferManagerTimedThread-" + incrementAndGet);
            return thread;
        }
    };
    public TransferManagerConfiguration configuration;

    /* renamed from: s3 */
    public final AmazonS3 f807s3;
    public final ExecutorService threadPool;
    public final ScheduledExecutorService timedThreadPool;

    static {
        LogFactory.getLog(TransferManager.class);
    }

    public TransferManager() {
        this(new AmazonS3Client(new DefaultAWSCredentialsProviderChain()));
    }

    public TransferManager(AWSCredentials aWSCredentials) {
        this(new AmazonS3Client(aWSCredentials));
    }

    public TransferManager(AmazonS3 amazonS3) {
        this(amazonS3, TransferManagerUtils.createDefaultExecutorService());
    }

    public TransferManager(AmazonS3 amazonS3, ExecutorService executorService) {
        this.timedThreadPool = new ScheduledThreadPoolExecutor(1, daemonThreadFactory);
        this.f807s3 = amazonS3;
        this.threadPool = executorService;
        this.configuration = new TransferManagerConfiguration();
    }

    public static <X extends AmazonWebServiceRequest> X appendMultipartUserAgent(X x) {
        x.getRequestClientOptions().appendUserAgent(USER_AGENT_MULTIPART);
        return x;
    }

    public static <X extends AmazonWebServiceRequest> X appendSingleObjectUserAgent(X x) {
        x.getRequestClientOptions().appendUserAgent(USER_AGENT);
        return x;
    }

    public final Upload doUpload(PutObjectRequest putObjectRequest, TransferStateChangeListener transferStateChangeListener, S3ProgressListener s3ProgressListener, PersistableUpload persistableUpload) throws AmazonServiceException, AmazonClientException {
        appendSingleObjectUserAgent(putObjectRequest);
        String multipartUploadId = persistableUpload != null ? persistableUpload.getMultipartUploadId() : null;
        if (putObjectRequest.getMetadata() == null) {
            putObjectRequest.setMetadata(new ObjectMetadata());
        }
        ObjectMetadata metadata = putObjectRequest.getMetadata();
        File requestFile = TransferManagerUtils.getRequestFile(putObjectRequest);
        if (requestFile != null) {
            metadata.setContentLength(requestFile.length());
            if (metadata.getContentType() == null) {
                metadata.setContentType(Mimetypes.getInstance().getMimetype(requestFile));
            }
        } else if (multipartUploadId != null) {
            throw new IllegalArgumentException("Unable to resume the upload. No file specified.");
        }
        TransferProgress transferProgress = new TransferProgress();
        transferProgress.setTotalBytesToTransfer(TransferManagerUtils.getContentLength(putObjectRequest));
        S3ProgressListenerChain s3ProgressListenerChain = new S3ProgressListenerChain(new TransferProgressUpdatingListener(transferProgress), putObjectRequest.getGeneralProgressListener(), s3ProgressListener);
        putObjectRequest.setGeneralProgressListener(s3ProgressListenerChain);
        UploadImpl uploadImpl = new UploadImpl("Uploading to " + putObjectRequest.getBucketName() + "/" + putObjectRequest.getKey(), transferProgress, s3ProgressListenerChain, transferStateChangeListener);
        UploadMonitor uploadMonitor = new UploadMonitor(this, uploadImpl, this.threadPool, new UploadCallable(this, this.threadPool, uploadImpl, putObjectRequest, s3ProgressListenerChain, multipartUploadId, transferProgress), putObjectRequest, s3ProgressListenerChain);
        uploadMonitor.setTimedThreadPool(this.timedThreadPool);
        uploadImpl.setMonitor(uploadMonitor);
        return uploadImpl;
    }

    public void finalize() throws Throwable {
        shutdown();
    }

    public AmazonS3 getAmazonS3Client() {
        return this.f807s3;
    }

    public TransferManagerConfiguration getConfiguration() {
        return this.configuration;
    }

    public final void shutdown() {
        this.threadPool.shutdown();
        this.timedThreadPool.shutdown();
    }

    public Upload upload(PutObjectRequest putObjectRequest, S3ProgressListener s3ProgressListener) throws AmazonServiceException, AmazonClientException {
        return doUpload(putObjectRequest, null, s3ProgressListener, null);
    }
}
