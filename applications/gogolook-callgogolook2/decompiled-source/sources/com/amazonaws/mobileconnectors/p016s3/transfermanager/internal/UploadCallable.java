package com.amazonaws.mobileconnectors.p016s3.transfermanager.internal;

import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListenerCallbackExecutor;
import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.PersistableUpload;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.TransferManager;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.TransferManagerConfiguration;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.TransferProgress;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.model.UploadResult;
import com.amazonaws.services.p017s3.AmazonS3;
import com.amazonaws.services.p017s3.AmazonS3EncryptionClient;
import com.amazonaws.services.p017s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.p017s3.model.EncryptedInitiateMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.EncryptedPutObjectRequest;
import com.amazonaws.services.p017s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.ListPartsRequest;
import com.amazonaws.services.p017s3.model.PartETag;
import com.amazonaws.services.p017s3.model.PartListing;
import com.amazonaws.services.p017s3.model.PartSummary;
import com.amazonaws.services.p017s3.model.PutObjectRequest;
import com.amazonaws.services.p017s3.model.PutObjectResult;
import com.amazonaws.services.p017s3.model.StorageClass;
import com.amazonaws.services.p017s3.model.UploadPartRequest;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadCallable */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable.class */
public class UploadCallable implements Callable<UploadResult> {
    public static final Log log = LogFactory.getLog(UploadCallable.class);
    public final TransferManagerConfiguration configuration;
    public final ProgressListenerChain listener;
    public String multipartUploadId;
    public PersistableUpload persistableUpload;
    public final PutObjectRequest putObjectRequest;

    /* renamed from: s3 */
    public final AmazonS3 f808s3;
    public final ExecutorService threadPool;
    public final TransferProgress transferProgress;
    public final UploadImpl upload;
    public final List<Future<PartETag>> futures = new ArrayList();
    public final List<PartETag> eTagsToSkip = new ArrayList();

    public UploadCallable(TransferManager transferManager, ExecutorService executorService, UploadImpl uploadImpl, PutObjectRequest putObjectRequest, ProgressListenerChain progressListenerChain, String str, TransferProgress transferProgress) {
        this.f808s3 = transferManager.getAmazonS3Client();
        this.configuration = transferManager.getConfiguration();
        this.threadPool = executorService;
        this.putObjectRequest = putObjectRequest;
        this.listener = progressListenerChain;
        this.upload = uploadImpl;
        this.multipartUploadId = str;
        this.transferProgress = transferProgress;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public UploadResult call() throws Exception {
        this.upload.setState(Transfer.TransferState.InProgress);
        if (!isMultipartUpload()) {
            return uploadInOneChunk();
        }
        fireProgressEvent(2);
        return uploadInParts();
    }

    public final void captureUploadStateIfPossible() {
        if (this.putObjectRequest.getSSECustomerKey() == null) {
            this.persistableUpload = new PersistableUpload(this.putObjectRequest.getBucketName(), this.putObjectRequest.getKey(), this.putObjectRequest.getFile().getAbsolutePath(), this.multipartUploadId, this.configuration.getMinimumUploadPartSize(), this.configuration.getMultipartUploadThreshold());
            notifyPersistableTransferAvailability();
        }
    }

    public final void fireProgressEvent(int i) {
        ProgressEvent progressEvent = new ProgressEvent(0L);
        progressEvent.setEventCode(i);
        ProgressListenerCallbackExecutor.progressChanged(this.listener, progressEvent);
    }

    public List<PartETag> getETags() {
        return this.eTagsToSkip;
    }

    public List<Future<PartETag>> getFutures() {
        return this.futures;
    }

    public String getMultipartUploadId() {
        return this.multipartUploadId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long getOptimalPartSize(boolean r6) {
        /*
            r5 = this;
            r0 = r5
            com.amazonaws.services.s3.model.PutObjectRequest r0 = r0.putObjectRequest
            r1 = r5
            com.amazonaws.mobileconnectors.s3.transfermanager.TransferManagerConfiguration r1 = r1.configuration
            long r0 = com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.TransferManagerUtils.calculateOptimalPartSize(r0, r1)
            r7 = r0
            r0 = r7
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x002e
            r0 = r7
            r1 = 32
            long r0 = r0 % r1
            r11 = r0
            r0 = r7
            r9 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x002e
            r0 = r7
            r1 = r11
            long r0 = r0 - r1
            r1 = 32
            long r0 = r0 + r1
            r9 = r0
        L_0x002e:
            org.apache.commons.logging.Log r0 = com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.UploadCallable.log
            r13 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r14 = r0
            r0 = r14
            java.lang.String r1 = "Calculated optimal part size: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r14
            java.lang.String r1 = r1.toString()
            r0.debug(r1)
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.UploadCallable.getOptimalPartSize(boolean):long");
    }

    public final Map<Integer, PartSummary> identifyExistingPartsForResume(String str) {
        HashMap hashMap = new HashMap();
        if (str == null) {
            return hashMap;
        }
        int i = 0;
        while (true) {
            AmazonS3 amazonS3 = this.f808s3;
            ListPartsRequest listPartsRequest = new ListPartsRequest(this.putObjectRequest.getBucketName(), this.putObjectRequest.getKey(), str);
            listPartsRequest.withPartNumberMarker(Integer.valueOf(i));
            PartListing listParts = amazonS3.listParts(listPartsRequest);
            for (PartSummary partSummary : listParts.getParts()) {
                hashMap.put(Integer.valueOf(partSummary.getPartNumber()), partSummary);
            }
            if (!listParts.isTruncated()) {
                return hashMap;
            }
            i = listParts.getNextPartNumberMarker().intValue();
        }
    }

    public final String initiateMultipartUpload(PutObjectRequest putObjectRequest, boolean z) {
        InitiateMultipartUploadRequest initiateMultipartUploadRequest;
        if (!z || !(putObjectRequest instanceof EncryptedPutObjectRequest)) {
            initiateMultipartUploadRequest = new InitiateMultipartUploadRequest(putObjectRequest.getBucketName(), putObjectRequest.getKey());
            initiateMultipartUploadRequest.withCannedACL(putObjectRequest.getCannedAcl());
            initiateMultipartUploadRequest.withObjectMetadata(putObjectRequest.getMetadata());
        } else {
            initiateMultipartUploadRequest = new EncryptedInitiateMultipartUploadRequest(putObjectRequest.getBucketName(), putObjectRequest.getKey());
            initiateMultipartUploadRequest.withCannedACL(putObjectRequest.getCannedAcl());
            initiateMultipartUploadRequest.withObjectMetadata(putObjectRequest.getMetadata());
            ((EncryptedInitiateMultipartUploadRequest) initiateMultipartUploadRequest).setMaterialsDescription(((EncryptedPutObjectRequest) putObjectRequest).getMaterialsDescription());
        }
        TransferManager.appendMultipartUserAgent(initiateMultipartUploadRequest);
        if (putObjectRequest.getStorageClass() != null) {
            initiateMultipartUploadRequest.setStorageClass(StorageClass.fromValue(putObjectRequest.getStorageClass()));
        }
        if (putObjectRequest.getRedirectLocation() != null) {
            initiateMultipartUploadRequest.setRedirectLocation(putObjectRequest.getRedirectLocation());
        }
        if (putObjectRequest.getSSECustomerKey() != null) {
            initiateMultipartUploadRequest.setSSECustomerKey(putObjectRequest.getSSECustomerKey());
        }
        String uploadId = this.f808s3.initiateMultipartUpload(initiateMultipartUploadRequest).getUploadId();
        Log log2 = log;
        log2.debug("Initiated new multipart upload: " + uploadId);
        return uploadId;
    }

    public boolean isMultipartUpload() {
        return TransferManagerUtils.shouldUseMultipartUpload(this.putObjectRequest, this.configuration);
    }

    public final void notifyPersistableTransferAvailability() {
        S3ProgressPublisher.publishTransferPersistable(this.listener, this.persistableUpload);
    }

    public void performAbortMultipartUpload() {
        try {
            if (this.multipartUploadId != null) {
                this.f808s3.abortMultipartUpload(new AbortMultipartUploadRequest(this.putObjectRequest.getBucketName(), this.putObjectRequest.getKey(), this.multipartUploadId));
            }
        } catch (Exception e) {
            Log log2 = log;
            log2.info("Unable to abort multipart upload, you may need to manually remove uploaded parts: " + e.getMessage(), e);
        }
    }

    public final UploadResult uploadInOneChunk() {
        PutObjectResult putObject = this.f808s3.putObject(this.putObjectRequest);
        UploadResult uploadResult = new UploadResult();
        uploadResult.setBucketName(this.putObjectRequest.getBucketName());
        uploadResult.setKey(this.putObjectRequest.getKey());
        uploadResult.setETag(putObject.getETag());
        uploadResult.setVersionId(putObject.getVersionId());
        return uploadResult;
    }

    public final UploadResult uploadInParts() throws Exception {
        boolean z = this.f808s3 instanceof AmazonS3EncryptionClient;
        long optimalPartSize = getOptimalPartSize(z);
        if (this.multipartUploadId == null) {
            this.multipartUploadId = initiateMultipartUpload(this.putObjectRequest, z);
        }
        try {
            try {
                UploadPartRequestFactory uploadPartRequestFactory = new UploadPartRequestFactory(this.putObjectRequest, this.multipartUploadId, optimalPartSize);
                if (TransferManagerUtils.isUploadParallelizable(this.putObjectRequest, z)) {
                    captureUploadStateIfPossible();
                    uploadPartsInParallel(uploadPartRequestFactory, this.multipartUploadId);
                    if (this.putObjectRequest.getInputStream() == null) {
                        return null;
                    }
                    try {
                        this.putObjectRequest.getInputStream().close();
                        return null;
                    } catch (Exception e) {
                        Log log2 = log;
                        log2.warn("Unable to cleanly close input stream: " + e.getMessage(), e);
                        return null;
                    }
                } else {
                    UploadResult uploadPartsInSeries = uploadPartsInSeries(uploadPartRequestFactory);
                    if (this.putObjectRequest.getInputStream() != null) {
                        try {
                            this.putObjectRequest.getInputStream().close();
                        } catch (Exception e2) {
                            Log log3 = log;
                            log3.warn("Unable to cleanly close input stream: " + e2.getMessage(), e2);
                        }
                    }
                    return uploadPartsInSeries;
                }
            } catch (Exception e3) {
                fireProgressEvent(8);
                performAbortMultipartUpload();
                throw e3;
            }
        } catch (Throwable th) {
            if (this.putObjectRequest.getInputStream() != null) {
                try {
                    this.putObjectRequest.getInputStream().close();
                } catch (Exception e4) {
                    Log log4 = log;
                    log4.warn("Unable to cleanly close input stream: " + e4.getMessage(), e4);
                }
            }
            throw th;
        }
    }

    public final void uploadPartsInParallel(UploadPartRequestFactory uploadPartRequestFactory, String str) {
        Map<Integer, PartSummary> identifyExistingPartsForResume = identifyExistingPartsForResume(str);
        while (uploadPartRequestFactory.hasMoreRequests()) {
            if (!this.threadPool.isShutdown()) {
                UploadPartRequest nextUploadPartRequest = uploadPartRequestFactory.getNextUploadPartRequest();
                if (identifyExistingPartsForResume.containsKey(Integer.valueOf(nextUploadPartRequest.getPartNumber()))) {
                    PartSummary partSummary = identifyExistingPartsForResume.get(Integer.valueOf(nextUploadPartRequest.getPartNumber()));
                    this.eTagsToSkip.add(new PartETag(nextUploadPartRequest.getPartNumber(), partSummary.getETag()));
                    this.transferProgress.updateProgress(partSummary.getSize());
                } else {
                    this.futures.add(this.threadPool.submit(new UploadPartCallable(this.f808s3, nextUploadPartRequest)));
                }
            } else {
                throw new CancellationException("TransferManager has been shutdown");
            }
        }
    }

    public final UploadResult uploadPartsInSeries(UploadPartRequestFactory uploadPartRequestFactory) {
        ArrayList arrayList = new ArrayList();
        while (uploadPartRequestFactory.hasMoreRequests()) {
            if (!this.threadPool.isShutdown()) {
                UploadPartRequest nextUploadPartRequest = uploadPartRequestFactory.getNextUploadPartRequest();
                InputStream inputStream = nextUploadPartRequest.getInputStream();
                if (inputStream != null && inputStream.markSupported()) {
                    if (nextUploadPartRequest.getPartSize() >= 2147483647L) {
                        inputStream.mark(Integer.MAX_VALUE);
                    } else {
                        inputStream.mark((int) nextUploadPartRequest.getPartSize());
                    }
                }
                arrayList.add(this.f808s3.uploadPart(nextUploadPartRequest).getPartETag());
            } else {
                throw new CancellationException("TransferManager has been shutdown");
            }
        }
        CompleteMultipartUploadResult completeMultipartUpload = this.f808s3.completeMultipartUpload(new CompleteMultipartUploadRequest(this.putObjectRequest.getBucketName(), this.putObjectRequest.getKey(), this.multipartUploadId, arrayList));
        UploadResult uploadResult = new UploadResult();
        uploadResult.setBucketName(completeMultipartUpload.getBucketName());
        uploadResult.setKey(completeMultipartUpload.getKey());
        uploadResult.setETag(completeMultipartUpload.getETag());
        uploadResult.setVersionId(completeMultipartUpload.getVersionId());
        return uploadResult;
    }
}
