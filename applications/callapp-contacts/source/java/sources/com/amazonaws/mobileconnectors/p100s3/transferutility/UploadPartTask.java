package com.amazonaws.mobileconnectors.p100s3.transferutility;

import android.content.ContentValues;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobileconnectors.p100s3.transferutility.UploadTask;
import com.amazonaws.services.p101s3.AmazonS3;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.amazonaws.services.p101s3.model.UploadPartResult;
import java.util.concurrent.Callable;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.UploadPartTask */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask.class */
public class UploadPartTask implements Callable<Boolean> {

    /* renamed from: a */
    private static final Log f12244a = LogFactory.m38584a(UploadPartTask.class);

    /* renamed from: b */
    private final UploadTask.UploadPartTaskMetadata f12245b;

    /* renamed from: c */
    private final UploadTask.UploadTaskProgressListener f12246c;

    /* renamed from: d */
    private final UploadPartRequest f12247d;

    /* renamed from: e */
    private final AmazonS3 f12248e;

    /* renamed from: f */
    private final TransferDBUtil f12249f;

    /* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.UploadPartTask$UploadPartTaskProgressListener */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener.class */
    public class UploadPartTaskProgressListener implements ProgressListener {

        /* renamed from: b */
        private UploadTask.UploadTaskProgressListener f12251b;

        /* renamed from: c */
        private long f12252c;

        public UploadPartTaskProgressListener(UploadTask.UploadTaskProgressListener uploadTaskProgressListener) {
            UploadPartTask.this = r4;
            this.f12251b = uploadTaskProgressListener;
        }

        @Override // com.amazonaws.event.ProgressListener
        public void progressChanged(ProgressEvent progressEvent) {
            if (32 == progressEvent.getEventCode()) {
                UploadPartTask.f12244a.mo38590c("Reset Event triggered. Resetting the bytesCurrent to 0.");
                this.f12252c = 0L;
            } else {
                this.f12252c += progressEvent.getBytesTransferred();
            }
            this.f12251b.m38509a(UploadPartTask.this.f12247d.getPartNumber(), this.f12252c);
        }
    }

    public UploadPartTask(UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata, UploadTask.UploadTaskProgressListener uploadTaskProgressListener, UploadPartRequest uploadPartRequest, AmazonS3 amazonS3, TransferDBUtil transferDBUtil) {
        this.f12245b = uploadPartTaskMetadata;
        this.f12246c = uploadTaskProgressListener;
        this.f12247d = uploadPartRequest;
        this.f12248e = amazonS3;
        this.f12249f = transferDBUtil;
    }

    /* renamed from: b */
    public Boolean call() throws Exception {
        try {
            this.f12245b.f12264d = TransferState.IN_PROGRESS;
            this.f12247d.setGeneralProgressListener(new UploadPartTaskProgressListener(this.f12246c));
            UploadPartResult mo38419a = this.f12248e.mo38419a(this.f12247d);
            this.f12245b.f12264d = TransferState.PART_COMPLETED;
            TransferDBUtil.m38557a(this.f12247d.getId(), TransferState.PART_COMPLETED);
            int id = this.f12247d.getId();
            String eTag = mo38419a.getETag();
            ContentValues contentValues = new ContentValues();
            contentValues.put("etag", eTag);
            TransferDBUtil.f12150a.m38560a(TransferDBUtil.m38553c(id), contentValues, null, null);
            return Boolean.TRUE;
        } catch (Exception e) {
            Log log = f12244a;
            log.mo38586e("Upload part interrupted: ".concat(String.valueOf(e)));
            new ProgressEvent(0L).setEventCode(32);
            this.f12246c.progressChanged(new ProgressEvent(0L));
            try {
                if (TransferNetworkLossHandler.m38550a() != null && !TransferNetworkLossHandler.m38550a().m38547b()) {
                    log.mo38590c("Thread: [" + Thread.currentThread().getId() + "]: Network wasn't available.");
                    this.f12245b.f12264d = TransferState.WAITING_FOR_NETWORK;
                    TransferDBUtil.m38557a(this.f12247d.getId(), TransferState.WAITING_FOR_NETWORK);
                    log.mo38590c("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                    return Boolean.FALSE;
                }
            } catch (TransferUtilityException e2) {
                Log log2 = f12244a;
                log2.mo38586e("TransferUtilityException: [" + e2 + "]");
            }
            this.f12245b.f12264d = TransferState.FAILED;
            TransferDBUtil.m38557a(this.f12247d.getId(), TransferState.FAILED);
            f12244a.mo38589c("Encountered error uploading part ", e);
            throw e;
        }
    }
}
