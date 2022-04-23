package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.ObjectTagging;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.SSEAwsKeyManagementParams;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.util.Mimetypes;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/UploadTask.class */
public class UploadTask implements Callable<Boolean> {

    /* renamed from: b  reason: collision with root package name */
    private static final Log f6747b = LogFactory.a(UploadTask.class);
    private static final Map<String, CannedAccessControlList> h = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    Map<Integer, UploadPartTaskMetadata> f6748a = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final AmazonS3 f6749c;

    /* renamed from: d  reason: collision with root package name */
    private final TransferRecord f6750d;
    private final TransferDBUtil e;
    private final TransferStatusUpdater f;
    private List<UploadPartRequest> g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata.class */
    public class UploadPartTaskMetadata {

        /* renamed from: a  reason: collision with root package name */
        UploadPartRequest f6751a;

        /* renamed from: b  reason: collision with root package name */
        Future<Boolean> f6752b;

        /* renamed from: c  reason: collision with root package name */
        long f6753c;

        /* renamed from: d  reason: collision with root package name */
        TransferState f6754d;

        UploadPartTaskMetadata() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener.class */
    public class UploadTaskProgressListener implements ProgressListener {

        /* renamed from: b  reason: collision with root package name */
        private long f6756b;

        UploadTaskProgressListener(TransferRecord transferRecord) {
            this.f6756b = transferRecord.i;
        }

        public final void a(int i, long j) {
            synchronized (this) {
                UploadPartTaskMetadata uploadPartTaskMetadata = UploadTask.this.f6748a.get(Integer.valueOf(i));
                if (uploadPartTaskMetadata == null) {
                    UploadTask.f6747b.c("Update received for unknown part. Ignoring.");
                    return;
                }
                uploadPartTaskMetadata.f6753c = j;
                long j2 = 0;
                for (Map.Entry<Integer, UploadPartTaskMetadata> entry : UploadTask.this.f6748a.entrySet()) {
                    j2 += entry.getValue().f6753c;
                }
                if (j2 > this.f6756b) {
                    UploadTask.this.f.a(UploadTask.this.f6750d.f6703a, j2, UploadTask.this.f6750d.h, true);
                    this.f6756b = j2;
                }
            }
        }

        @Override // com.amazonaws.event.ProgressListener
        public void progressChanged(ProgressEvent progressEvent) {
        }
    }

    static {
        CannedAccessControlList[] values;
        for (CannedAccessControlList cannedAccessControlList : CannedAccessControlList.values()) {
            h.put(cannedAccessControlList.toString(), cannedAccessControlList);
        }
    }

    public UploadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferDBUtil transferDBUtil, TransferStatusUpdater transferStatusUpdater) {
        this.f6750d = transferRecord;
        this.f6749c = amazonS3;
        this.e = transferDBUtil;
        this.f = transferStatusUpdater;
    }

    private static PutObjectRequest a(TransferRecord transferRecord) {
        File file = new File(transferRecord.s);
        PutObjectRequest putObjectRequest = new PutObjectRequest(transferRecord.p, transferRecord.q, file);
        ObjectMetadata objectMetadata = new ObjectMetadata();
        objectMetadata.setContentLength(file.length());
        if (transferRecord.z != null) {
            objectMetadata.setCacheControl(transferRecord.z);
        }
        if (transferRecord.x != null) {
            objectMetadata.setContentDisposition(transferRecord.x);
        }
        if (transferRecord.y != null) {
            objectMetadata.setContentEncoding(transferRecord.y);
        }
        if (transferRecord.v != null) {
            objectMetadata.setContentType(transferRecord.v);
        } else {
            objectMetadata.setContentType(Mimetypes.getInstance().getMimetype(file));
        }
        if (transferRecord.B != null) {
            putObjectRequest.setStorageClass(transferRecord.B);
        }
        if (transferRecord.D != null) {
            objectMetadata.setExpirationTimeRuleId(transferRecord.D);
        }
        if (transferRecord.E != null) {
            objectMetadata.setHttpExpiresDate(new Date(Long.valueOf(transferRecord.E).longValue()));
        }
        if (transferRecord.F != null) {
            objectMetadata.setSSEAlgorithm(transferRecord.F);
        }
        if (transferRecord.C != null) {
            objectMetadata.setUserMetadata(transferRecord.C);
            String str = transferRecord.C.get("x-amz-tagging");
            if (str != null) {
                try {
                    String[] split = str.split("&");
                    ArrayList arrayList = new ArrayList();
                    for (String str2 : split) {
                        String[] split2 = str2.split("=");
                        arrayList.add(new Tag(split2[0], split2[1]));
                    }
                    putObjectRequest.setTagging(new ObjectTagging(arrayList));
                } catch (Exception e) {
                    f6747b.c("Error in passing the object tags as request headers.", e);
                }
            }
            String str3 = transferRecord.C.get("x-amz-website-redirect-location");
            if (str3 != null) {
                putObjectRequest.setRedirectLocation(str3);
            }
            String str4 = transferRecord.C.get("x-amz-request-payer");
            if (str4 != null) {
                putObjectRequest.setRequesterPays("requester".equals(str4));
            }
        }
        if (transferRecord.H != null) {
            objectMetadata.setContentMD5(transferRecord.H);
        }
        if (transferRecord.G != null) {
            putObjectRequest.setSSEAwsKeyManagementParams(new SSEAwsKeyManagementParams(transferRecord.G));
        }
        putObjectRequest.setMetadata(objectMetadata);
        String str5 = transferRecord.I;
        putObjectRequest.setCannedAcl(str5 == null ? null : h.get(str5));
        return putObjectRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public Boolean call() throws Exception {
        try {
            if (TransferNetworkLossHandler.a() != null && !TransferNetworkLossHandler.a().b()) {
                f6747b.c("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                this.f.a(this.f6750d.f6703a, TransferState.WAITING_FOR_NETWORK);
                return Boolean.FALSE;
            }
        } catch (TransferUtilityException e) {
            Log log = f6747b;
            log.e("TransferUtilityException: [" + e + "]");
        }
        this.f.a(this.f6750d.f6703a, TransferState.IN_PROGRESS);
        return (this.f6750d.f6706d == 1 && this.f6750d.g == 0) ? c() : this.f6750d.f6706d == 0 ? d() : Boolean.FALSE;
    }

    private Boolean c() throws ExecutionException {
        long j;
        if (this.f6750d.t == null || this.f6750d.t.isEmpty()) {
            PutObjectRequest a2 = a(this.f6750d);
            TransferUtility.b(a2);
            try {
                TransferRecord transferRecord = this.f6750d;
                InitiateMultipartUploadRequest withTagging = new InitiateMultipartUploadRequest(a2.getBucketName(), a2.getKey()).withCannedACL(a2.getCannedAcl()).withObjectMetadata(a2.getMetadata()).withSSEAwsKeyManagementParams(a2.getSSEAwsKeyManagementParams()).withTagging(a2.getTagging());
                TransferUtility.b(withTagging);
                transferRecord.t = this.f6749c.a(withTagging).getUploadId();
                int i = this.f6750d.f6703a;
                String str = this.f6750d.t;
                ContentValues contentValues = new ContentValues();
                contentValues.put("multipart_id", str);
                TransferDBUtil.f6692a.a(TransferDBUtil.c(i), contentValues, null, null);
                j = 0;
            } catch (AmazonClientException e) {
                Log log = f6747b;
                log.c("Error initiating multipart upload: " + this.f6750d.f6703a + " due to " + e.getMessage(), e);
                this.f.a(this.f6750d.f6703a, e);
                this.f.a(this.f6750d.f6703a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        } else {
            j = TransferDBUtil.a(this.f6750d.f6703a);
            if (j > 0) {
                f6747b.c(String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.f6750d.f6703a), Long.valueOf(j)));
            }
        }
        UploadTaskProgressListener uploadTaskProgressListener = new UploadTaskProgressListener(this.f6750d);
        this.f.a(this.f6750d.f6703a, j, this.f6750d.h, false);
        this.g = TransferDBUtil.a(this.f6750d.f6703a, this.f6750d.t);
        Log log2 = f6747b;
        log2.c("Multipart upload " + this.f6750d.f6703a + " in " + this.g.size() + " parts.");
        for (UploadPartRequest uploadPartRequest : this.g) {
            TransferUtility.b(uploadPartRequest);
            UploadPartTaskMetadata uploadPartTaskMetadata = new UploadPartTaskMetadata();
            uploadPartTaskMetadata.f6751a = uploadPartRequest;
            uploadPartTaskMetadata.f6753c = 0L;
            uploadPartTaskMetadata.f6754d = TransferState.WAITING;
            this.f6748a.put(Integer.valueOf(uploadPartRequest.getPartNumber()), uploadPartTaskMetadata);
            uploadPartTaskMetadata.f6752b = TransferThreadPool.a(new UploadPartTask(uploadPartTaskMetadata, uploadTaskProgressListener, uploadPartRequest, this.f6749c, this.e));
        }
        try {
            boolean z = true;
            for (UploadPartTaskMetadata uploadPartTaskMetadata2 : this.f6748a.values()) {
                z &= uploadPartTaskMetadata2.f6752b.get().booleanValue();
            }
            if (!z) {
                try {
                    if (TransferNetworkLossHandler.a() != null && !TransferNetworkLossHandler.a().b()) {
                        f6747b.c("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                        this.f.a(this.f6750d.f6703a, TransferState.WAITING_FOR_NETWORK);
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e2) {
                    Log log3 = f6747b;
                    log3.e("TransferUtilityException: [" + e2 + "]");
                }
            }
            Log log4 = f6747b;
            log4.c("Completing the multi-part upload transfer for " + this.f6750d.f6703a);
            try {
                CompleteMultipartUploadRequest completeMultipartUploadRequest = new CompleteMultipartUploadRequest(this.f6750d.p, this.f6750d.q, this.f6750d.t, TransferDBUtil.b(this.f6750d.f6703a));
                TransferUtility.b(completeMultipartUploadRequest);
                this.f6749c.a(completeMultipartUploadRequest);
                this.f.a(this.f6750d.f6703a, this.f6750d.h, this.f6750d.h, true);
                this.f.a(this.f6750d.f6703a, TransferState.COMPLETED);
                return Boolean.TRUE;
            } catch (AmazonClientException e3) {
                Log log5 = f6747b;
                log5.c("Failed to complete multipart: " + this.f6750d.f6703a + " due to " + e3.getMessage(), e3);
                int i2 = this.f6750d.f6703a;
                String str2 = this.f6750d.p;
                String str3 = this.f6750d.q;
                String str4 = this.f6750d.t;
                log5.c("Aborting the multipart since complete multipart failed.");
                try {
                    this.f6749c.a(new AbortMultipartUploadRequest(str2, str3, str4));
                    log5.b("Successfully aborted multipart upload: ".concat(String.valueOf(i2)));
                } catch (AmazonClientException e4) {
                    f6747b.a("Failed to abort the multipart upload: ".concat(String.valueOf(i2)), e4);
                }
                this.f.a(this.f6750d.f6703a, e3);
                this.f.a(this.f6750d.f6703a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        } catch (Exception e5) {
            f6747b.e("Upload resulted in an exception. ".concat(String.valueOf(e5)));
            for (UploadPartTaskMetadata uploadPartTaskMetadata3 : this.f6748a.values()) {
                uploadPartTaskMetadata3.f6752b.cancel(true);
            }
            if (TransferState.PENDING_CANCEL.equals(this.f6750d.o)) {
                this.f.a(this.f6750d.f6703a, TransferState.CANCELED);
                Log log6 = f6747b;
                log6.c("Transfer is " + TransferState.CANCELED);
                return Boolean.FALSE;
            } else if (TransferState.PENDING_PAUSE.equals(this.f6750d.o)) {
                this.f.a(this.f6750d.f6703a, TransferState.PAUSED);
                Log log7 = f6747b;
                log7.c("Transfer is " + TransferState.PAUSED);
                return Boolean.FALSE;
            } else {
                for (UploadPartTaskMetadata uploadPartTaskMetadata4 : this.f6748a.values()) {
                    if (TransferState.WAITING_FOR_NETWORK.equals(uploadPartTaskMetadata4.f6754d)) {
                        f6747b.c("Individual part is WAITING_FOR_NETWORK.");
                        this.f.a(this.f6750d.f6703a, TransferState.WAITING_FOR_NETWORK);
                        return Boolean.FALSE;
                    }
                }
                try {
                    if (TransferNetworkLossHandler.a() != null && !TransferNetworkLossHandler.a().b()) {
                        f6747b.c("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                        this.f.a(this.f6750d.f6703a, TransferState.WAITING_FOR_NETWORK);
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e6) {
                    Log log8 = f6747b;
                    log8.e("TransferUtilityException: [" + e6 + "]");
                }
                if (RetryUtils.a(e5)) {
                    f6747b.c("Transfer is interrupted. ".concat(String.valueOf(e5)));
                    this.f.a(this.f6750d.f6703a, TransferState.FAILED);
                    return Boolean.FALSE;
                }
                Log log9 = f6747b;
                log9.c("Error encountered during multi-part upload: " + this.f6750d.f6703a + " due to " + e5.getMessage(), e5);
                this.f.a(this.f6750d.f6703a, e5);
                this.f.a(this.f6750d.f6703a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        }
    }

    private Boolean d() {
        PutObjectRequest a2 = a(this.f6750d);
        ProgressListener b2 = this.f.b(this.f6750d.f6703a);
        long length = a2.getFile().length();
        TransferUtility.a(a2);
        a2.setGeneralProgressListener(b2);
        try {
            this.f6749c.a(a2);
            this.f.a(this.f6750d.f6703a, length, length, true);
            this.f.a(this.f6750d.f6703a, TransferState.COMPLETED);
            return Boolean.TRUE;
        } catch (Exception e) {
            if (TransferState.PENDING_CANCEL.equals(this.f6750d.o)) {
                this.f.a(this.f6750d.f6703a, TransferState.CANCELED);
                Log log = f6747b;
                log.c("Transfer is " + TransferState.CANCELED);
                return Boolean.FALSE;
            } else if (TransferState.PENDING_PAUSE.equals(this.f6750d.o)) {
                this.f.a(this.f6750d.f6703a, TransferState.PAUSED);
                Log log2 = f6747b;
                log2.c("Transfer is " + TransferState.PAUSED);
                new ProgressEvent(0L).setEventCode(32);
                b2.progressChanged(new ProgressEvent(0L));
                return Boolean.FALSE;
            } else {
                try {
                    if (TransferNetworkLossHandler.a() != null && !TransferNetworkLossHandler.a().b()) {
                        Log log3 = f6747b;
                        log3.c("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                        this.f.a(this.f6750d.f6703a, TransferState.WAITING_FOR_NETWORK);
                        log3.b("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                        new ProgressEvent(0L).setEventCode(32);
                        b2.progressChanged(new ProgressEvent(0L));
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e2) {
                    Log log4 = f6747b;
                    log4.e("TransferUtilityException: [" + e2 + "]");
                }
                if (RetryUtils.a(e)) {
                    f6747b.c("Transfer is interrupted. ".concat(String.valueOf(e)));
                    this.f.a(this.f6750d.f6703a, TransferState.FAILED);
                    return Boolean.FALSE;
                }
                Log log5 = f6747b;
                log5.b("Failed to upload: " + this.f6750d.f6703a + " due to " + e.getMessage());
                this.f.a(this.f6750d.f6703a, e);
                this.f.a(this.f6750d.f6703a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        }
    }
}
