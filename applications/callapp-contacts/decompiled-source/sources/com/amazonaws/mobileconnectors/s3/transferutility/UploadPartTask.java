package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobileconnectors.s3.transferutility.UploadTask;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask.class */
public class UploadPartTask implements Callable<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f6740a = LogFactory.a(UploadPartTask.class);

    /* renamed from: b  reason: collision with root package name */
    private final UploadTask.UploadPartTaskMetadata f6741b;

    /* renamed from: c  reason: collision with root package name */
    private final UploadTask.UploadTaskProgressListener f6742c;

    /* renamed from: d  reason: collision with root package name */
    private final UploadPartRequest f6743d;
    private final AmazonS3 e;
    private final TransferDBUtil f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener.class */
    public class UploadPartTaskProgressListener implements ProgressListener {

        /* renamed from: b  reason: collision with root package name */
        private UploadTask.UploadTaskProgressListener f6745b;

        /* renamed from: c  reason: collision with root package name */
        private long f6746c;

        public UploadPartTaskProgressListener(UploadTask.UploadTaskProgressListener uploadTaskProgressListener) {
            this.f6745b = uploadTaskProgressListener;
        }

        @Override // com.amazonaws.event.ProgressListener
        public void progressChanged(ProgressEvent progressEvent) {
            if (32 == progressEvent.getEventCode()) {
                UploadPartTask.f6740a.c("Reset Event triggered. Resetting the bytesCurrent to 0.");
                this.f6746c = 0L;
            } else {
                this.f6746c += progressEvent.getBytesTransferred();
            }
            this.f6745b.a(UploadPartTask.this.f6743d.getPartNumber(), this.f6746c);
        }
    }

    public UploadPartTask(UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata, UploadTask.UploadTaskProgressListener uploadTaskProgressListener, UploadPartRequest uploadPartRequest, AmazonS3 amazonS3, TransferDBUtil transferDBUtil) {
        this.f6741b = uploadPartTaskMetadata;
        this.f6742c = uploadTaskProgressListener;
        this.f6743d = uploadPartRequest;
        this.e = amazonS3;
        this.f = transferDBUtil;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public Boolean call() throws Exception {
        try {
            this.f6741b.f6754d = TransferState.IN_PROGRESS;
            this.f6743d.setGeneralProgressListener(new UploadPartTaskProgressListener(this.f6742c));
            UploadPartResult a2 = this.e.a(this.f6743d);
            this.f6741b.f6754d = TransferState.PART_COMPLETED;
            TransferDBUtil.a(this.f6743d.getId(), TransferState.PART_COMPLETED);
            int id = this.f6743d.getId();
            String eTag = a2.getETag();
            ContentValues contentValues = new ContentValues();
            contentValues.put("etag", eTag);
            TransferDBUtil.f6692a.a(TransferDBUtil.c(id), contentValues, null, null);
            return Boolean.TRUE;
        } catch (Exception e) {
            Log log = f6740a;
            log.e("Upload part interrupted: ".concat(String.valueOf(e)));
            new ProgressEvent(0L).setEventCode(32);
            this.f6742c.progressChanged(new ProgressEvent(0L));
            try {
                if (TransferNetworkLossHandler.a() != null && !TransferNetworkLossHandler.a().b()) {
                    log.c("Thread: [" + Thread.currentThread().getId() + "]: Network wasn't available.");
                    this.f6741b.f6754d = TransferState.WAITING_FOR_NETWORK;
                    TransferDBUtil.a(this.f6743d.getId(), TransferState.WAITING_FOR_NETWORK);
                    log.c("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                    return Boolean.FALSE;
                }
            } catch (TransferUtilityException e2) {
                Log log2 = f6740a;
                log2.e("TransferUtilityException: [" + e2 + "]");
            }
            this.f6741b.f6754d = TransferState.FAILED;
            TransferDBUtil.a(this.f6743d.getId(), TransferState.FAILED);
            f6740a.c("Encountered error uploading part ", e);
            throw e;
        }
    }
}
