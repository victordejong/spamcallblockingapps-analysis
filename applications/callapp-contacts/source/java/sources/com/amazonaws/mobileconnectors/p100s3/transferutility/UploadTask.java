package com.amazonaws.mobileconnectors.p100s3.transferutility;

import android.content.ContentValues;
import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.p101s3.AmazonS3;
import com.amazonaws.services.p101s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.CannedAccessControlList;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.ObjectMetadata;
import com.amazonaws.services.p101s3.model.ObjectTagging;
import com.amazonaws.services.p101s3.model.PutObjectRequest;
import com.amazonaws.services.p101s3.model.SSEAwsKeyManagementParams;
import com.amazonaws.services.p101s3.model.Tag;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.amazonaws.services.p101s3.util.Mimetypes;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.UploadTask */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/UploadTask.class */
public class UploadTask implements Callable<Boolean> {

    /* renamed from: b */
    private static final Log f12253b = LogFactory.m38584a(UploadTask.class);

    /* renamed from: h */
    private static final Map<String, CannedAccessControlList> f12254h = new HashMap();

    /* renamed from: a */
    Map<Integer, UploadPartTaskMetadata> f12255a = new HashMap();

    /* renamed from: c */
    private final AmazonS3 f12256c;

    /* renamed from: d */
    private final TransferRecord f12257d;

    /* renamed from: e */
    private final TransferDBUtil f12258e;

    /* renamed from: f */
    private final TransferStatusUpdater f12259f;

    /* renamed from: g */
    private List<UploadPartRequest> f12260g;

    /* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.UploadTask$UploadPartTaskMetadata */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata.class */
    public class UploadPartTaskMetadata {

        /* renamed from: a */
        UploadPartRequest f12261a;

        /* renamed from: b */
        Future<Boolean> f12262b;

        /* renamed from: c */
        long f12263c;

        /* renamed from: d */
        TransferState f12264d;

        UploadPartTaskMetadata() {
            UploadTask.this = r4;
        }
    }

    /* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.UploadTask$UploadTaskProgressListener */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener.class */
    public class UploadTaskProgressListener implements ProgressListener {

        /* renamed from: b */
        private long f12267b;

        UploadTaskProgressListener(TransferRecord transferRecord) {
            UploadTask.this = r5;
            this.f12267b = transferRecord.f12183i;
        }

        /* JADX WARN: Type inference failed for: r0v26, types: [long] */
        /* renamed from: a */
        public final void m38509a(int i, long j) {
            synchronized (this) {
                UploadPartTaskMetadata uploadPartTaskMetadata = UploadTask.this.f12255a.get(Integer.valueOf(i));
                if (uploadPartTaskMetadata == null) {
                    UploadTask.f12253b.mo38590c("Update received for unknown part. Ignoring.");
                    return;
                }
                uploadPartTaskMetadata.f12263c = j;
                char c = 0;
                for (Map.Entry<Integer, UploadPartTaskMetadata> entry : UploadTask.this.f12255a.entrySet()) {
                    c += entry.getValue().f12263c;
                }
                if (c > this.f12267b) {
                    UploadTask.this.f12259f.m38537a(UploadTask.this.f12257d.f12175a, c, UploadTask.this.f12257d.f12182h, true);
                    this.f12267b = c;
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
            f12254h.put(cannedAccessControlList.toString(), cannedAccessControlList);
        }
    }

    public UploadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferDBUtil transferDBUtil, TransferStatusUpdater transferStatusUpdater) {
        this.f12257d = transferRecord;
        this.f12256c = amazonS3;
        this.f12258e = transferDBUtil;
        this.f12259f = transferStatusUpdater;
    }

    /* renamed from: a */
    private static PutObjectRequest m38515a(TransferRecord transferRecord) {
        File file = new File(transferRecord.f12193s);
        PutObjectRequest putObjectRequest = new PutObjectRequest(transferRecord.f12190p, transferRecord.f12191q, file);
        ObjectMetadata objectMetadata = new ObjectMetadata();
        objectMetadata.setContentLength(file.length());
        if (transferRecord.f12200z != null) {
            objectMetadata.setCacheControl(transferRecord.f12200z);
        }
        if (transferRecord.f12198x != null) {
            objectMetadata.setContentDisposition(transferRecord.f12198x);
        }
        if (transferRecord.f12199y != null) {
            objectMetadata.setContentEncoding(transferRecord.f12199y);
        }
        if (transferRecord.f12196v != null) {
            objectMetadata.setContentType(transferRecord.f12196v);
        } else {
            objectMetadata.setContentType(Mimetypes.getInstance().getMimetype(file));
        }
        if (transferRecord.f12164B != null) {
            putObjectRequest.setStorageClass(transferRecord.f12164B);
        }
        if (transferRecord.f12166D != null) {
            objectMetadata.setExpirationTimeRuleId(transferRecord.f12166D);
        }
        if (transferRecord.f12167E != null) {
            objectMetadata.setHttpExpiresDate(new Date(Long.valueOf(transferRecord.f12167E).longValue()));
        }
        if (transferRecord.f12168F != null) {
            objectMetadata.setSSEAlgorithm(transferRecord.f12168F);
        }
        if (transferRecord.f12165C != null) {
            objectMetadata.setUserMetadata(transferRecord.f12165C);
            String str = transferRecord.f12165C.get("x-amz-tagging");
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
                    f12253b.mo38589c("Error in passing the object tags as request headers.", e);
                }
            }
            String str3 = transferRecord.f12165C.get("x-amz-website-redirect-location");
            if (str3 != null) {
                putObjectRequest.setRedirectLocation(str3);
            }
            String str4 = transferRecord.f12165C.get("x-amz-request-payer");
            if (str4 != null) {
                putObjectRequest.setRequesterPays("requester".equals(str4));
            }
        }
        if (transferRecord.f12170H != null) {
            objectMetadata.setContentMD5(transferRecord.f12170H);
        }
        if (transferRecord.f12169G != null) {
            putObjectRequest.setSSEAwsKeyManagementParams(new SSEAwsKeyManagementParams(transferRecord.f12169G));
        }
        putObjectRequest.setMetadata(objectMetadata);
        String str5 = transferRecord.f12171I;
        putObjectRequest.setCannedAcl(str5 == null ? null : f12254h.get(str5));
        return putObjectRequest;
    }

    /* renamed from: b */
    public Boolean call() throws Exception {
        try {
            if (TransferNetworkLossHandler.m38550a() != null && !TransferNetworkLossHandler.m38550a().m38547b()) {
                f12253b.mo38590c("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                this.f12259f.m38536a(this.f12257d.f12175a, TransferState.WAITING_FOR_NETWORK);
                return Boolean.FALSE;
            }
        } catch (TransferUtilityException e) {
            Log log = f12253b;
            log.mo38586e("TransferUtilityException: [" + e + "]");
        }
        this.f12259f.m38536a(this.f12257d.f12175a, TransferState.IN_PROGRESS);
        return (this.f12257d.f12178d == 1 && this.f12257d.f12181g == 0) ? m38511c() : this.f12257d.f12178d == 0 ? m38510d() : Boolean.FALSE;
    }

    /* JADX WARN: Type inference failed for: r0v267, types: [long] */
    /* renamed from: c */
    private Boolean m38511c() throws ExecutionException {
        char c;
        boolean z;
        if (this.f12257d.f12194t == null || this.f12257d.f12194t.isEmpty()) {
            PutObjectRequest m38515a = m38515a(this.f12257d);
            TransferUtility.m38521b(m38515a);
            try {
                TransferRecord transferRecord = this.f12257d;
                InitiateMultipartUploadRequest withTagging = new InitiateMultipartUploadRequest(m38515a.getBucketName(), m38515a.getKey()).withCannedACL(m38515a.getCannedAcl()).withObjectMetadata(m38515a.getMetadata()).withSSEAwsKeyManagementParams(m38515a.getSSEAwsKeyManagementParams()).withTagging(m38515a.getTagging());
                TransferUtility.m38521b(withTagging);
                transferRecord.f12194t = this.f12256c.mo38446a(withTagging).getUploadId();
                int i = this.f12257d.f12175a;
                String str = this.f12257d.f12194t;
                ContentValues contentValues = new ContentValues();
                contentValues.put("multipart_id", str);
                TransferDBUtil.f12150a.m38560a(TransferDBUtil.m38553c(i), contentValues, null, null);
                c = 0;
            } catch (AmazonClientException e) {
                f12253b.mo38589c("Error initiating multipart upload: " + this.f12257d.f12175a + " due to " + e.getMessage(), e);
                this.f12259f.m38535a(this.f12257d.f12175a, e);
                this.f12259f.m38536a(this.f12257d.f12175a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        } else {
            c = TransferDBUtil.m38558a(this.f12257d.f12175a);
            if (c > 0) {
                f12253b.mo38590c(String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.f12257d.f12175a), Long.valueOf(c)));
            }
        }
        UploadTaskProgressListener uploadTaskProgressListener = new UploadTaskProgressListener(this.f12257d);
        this.f12259f.m38537a(this.f12257d.f12175a, c, this.f12257d.f12182h, false);
        this.f12260g = TransferDBUtil.m38556a(this.f12257d.f12175a, this.f12257d.f12194t);
        f12253b.mo38590c("Multipart upload " + this.f12257d.f12175a + " in " + this.f12260g.size() + " parts.");
        for (UploadPartRequest uploadPartRequest : this.f12260g) {
            TransferUtility.m38521b(uploadPartRequest);
            UploadPartTaskMetadata uploadPartTaskMetadata = new UploadPartTaskMetadata();
            uploadPartTaskMetadata.f12261a = uploadPartRequest;
            uploadPartTaskMetadata.f12263c = 0L;
            uploadPartTaskMetadata.f12264d = TransferState.WAITING;
            this.f12255a.put(Integer.valueOf(uploadPartRequest.getPartNumber()), uploadPartTaskMetadata);
            uploadPartTaskMetadata.f12262b = TransferThreadPool.m38525a(new UploadPartTask(uploadPartTaskMetadata, uploadTaskProgressListener, uploadPartRequest, this.f12256c, this.f12258e));
        }
        try {
            Iterator<UploadPartTaskMetadata> it2 = this.f12255a.values().iterator();
            boolean z2 = true;
            while (true) {
                z = z2;
                if (!it2.hasNext()) {
                    break;
                }
                z2 = z & it2.next().f12262b.get().booleanValue();
            }
            if (!z) {
                try {
                    if (TransferNetworkLossHandler.m38550a() != null && !TransferNetworkLossHandler.m38550a().m38547b()) {
                        f12253b.mo38590c("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                        this.f12259f.m38536a(this.f12257d.f12175a, TransferState.WAITING_FOR_NETWORK);
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e2) {
                    f12253b.mo38586e("TransferUtilityException: [" + e2 + "]");
                }
            }
            f12253b.mo38590c("Completing the multi-part upload transfer for " + this.f12257d.f12175a);
            try {
                CompleteMultipartUploadRequest completeMultipartUploadRequest = new CompleteMultipartUploadRequest(this.f12257d.f12190p, this.f12257d.f12191q, this.f12257d.f12194t, TransferDBUtil.m38554b(this.f12257d.f12175a));
                TransferUtility.m38521b(completeMultipartUploadRequest);
                this.f12256c.mo38448a(completeMultipartUploadRequest);
                this.f12259f.m38537a(this.f12257d.f12175a, this.f12257d.f12182h, this.f12257d.f12182h, true);
                this.f12259f.m38536a(this.f12257d.f12175a, TransferState.COMPLETED);
                return Boolean.TRUE;
            } catch (AmazonClientException e3) {
                Log log = f12253b;
                log.mo38589c("Failed to complete multipart: " + this.f12257d.f12175a + " due to " + e3.getMessage(), e3);
                int i2 = this.f12257d.f12175a;
                String str2 = this.f12257d.f12190p;
                String str3 = this.f12257d.f12191q;
                String str4 = this.f12257d.f12194t;
                log.mo38590c("Aborting the multipart since complete multipart failed.");
                try {
                    this.f12256c.mo38449a(new AbortMultipartUploadRequest(str2, str3, str4));
                    log.mo38593b("Successfully aborted multipart upload: ".concat(String.valueOf(i2)));
                } catch (AmazonClientException e4) {
                    f12253b.mo38595a("Failed to abort the multipart upload: ".concat(String.valueOf(i2)), e4);
                }
                this.f12259f.m38535a(this.f12257d.f12175a, e3);
                this.f12259f.m38536a(this.f12257d.f12175a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        } catch (Exception e5) {
            f12253b.mo38586e("Upload resulted in an exception. ".concat(String.valueOf(e5)));
            for (UploadPartTaskMetadata uploadPartTaskMetadata2 : this.f12255a.values()) {
                uploadPartTaskMetadata2.f12262b.cancel(true);
            }
            if (TransferState.PENDING_CANCEL.equals(this.f12257d.f12189o)) {
                this.f12259f.m38536a(this.f12257d.f12175a, TransferState.CANCELED);
                f12253b.mo38590c("Transfer is " + TransferState.CANCELED);
                return Boolean.FALSE;
            } else if (TransferState.PENDING_PAUSE.equals(this.f12257d.f12189o)) {
                this.f12259f.m38536a(this.f12257d.f12175a, TransferState.PAUSED);
                f12253b.mo38590c("Transfer is " + TransferState.PAUSED);
                return Boolean.FALSE;
            } else {
                for (UploadPartTaskMetadata uploadPartTaskMetadata3 : this.f12255a.values()) {
                    if (TransferState.WAITING_FOR_NETWORK.equals(uploadPartTaskMetadata3.f12264d)) {
                        f12253b.mo38590c("Individual part is WAITING_FOR_NETWORK.");
                        this.f12259f.m38536a(this.f12257d.f12175a, TransferState.WAITING_FOR_NETWORK);
                        return Boolean.FALSE;
                    }
                }
                try {
                    if (TransferNetworkLossHandler.m38550a() != null && !TransferNetworkLossHandler.m38550a().m38547b()) {
                        f12253b.mo38590c("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                        this.f12259f.m38536a(this.f12257d.f12175a, TransferState.WAITING_FOR_NETWORK);
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e6) {
                    f12253b.mo38586e("TransferUtilityException: [" + e6 + "]");
                }
                if (RetryUtils.m38492a(e5)) {
                    f12253b.mo38590c("Transfer is interrupted. ".concat(String.valueOf(e5)));
                    this.f12259f.m38536a(this.f12257d.f12175a, TransferState.FAILED);
                    return Boolean.FALSE;
                }
                f12253b.mo38589c("Error encountered during multi-part upload: " + this.f12257d.f12175a + " due to " + e5.getMessage(), e5);
                this.f12259f.m38535a(this.f12257d.f12175a, e5);
                this.f12259f.m38536a(this.f12257d.f12175a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        }
    }

    /* renamed from: d */
    private Boolean m38510d() {
        PutObjectRequest m38515a = m38515a(this.f12257d);
        ProgressListener m38531b = this.f12259f.m38531b(this.f12257d.f12175a);
        long length = m38515a.getFile().length();
        TransferUtility.m38522a(m38515a);
        m38515a.setGeneralProgressListener(m38531b);
        try {
            this.f12256c.mo38445a(m38515a);
            this.f12259f.m38537a(this.f12257d.f12175a, length, length, true);
            this.f12259f.m38536a(this.f12257d.f12175a, TransferState.COMPLETED);
            return Boolean.TRUE;
        } catch (Exception e) {
            if (TransferState.PENDING_CANCEL.equals(this.f12257d.f12189o)) {
                this.f12259f.m38536a(this.f12257d.f12175a, TransferState.CANCELED);
                Log log = f12253b;
                log.mo38590c("Transfer is " + TransferState.CANCELED);
                return Boolean.FALSE;
            } else if (TransferState.PENDING_PAUSE.equals(this.f12257d.f12189o)) {
                this.f12259f.m38536a(this.f12257d.f12175a, TransferState.PAUSED);
                Log log2 = f12253b;
                log2.mo38590c("Transfer is " + TransferState.PAUSED);
                new ProgressEvent(0L).setEventCode(32);
                m38531b.progressChanged(new ProgressEvent(0L));
                return Boolean.FALSE;
            } else {
                try {
                    if (TransferNetworkLossHandler.m38550a() != null && !TransferNetworkLossHandler.m38550a().m38547b()) {
                        Log log3 = f12253b;
                        log3.mo38590c("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                        this.f12259f.m38536a(this.f12257d.f12175a, TransferState.WAITING_FOR_NETWORK);
                        log3.mo38593b("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                        new ProgressEvent(0L).setEventCode(32);
                        m38531b.progressChanged(new ProgressEvent(0L));
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e2) {
                    Log log4 = f12253b;
                    log4.mo38586e("TransferUtilityException: [" + e2 + "]");
                }
                if (RetryUtils.m38492a(e)) {
                    f12253b.mo38590c("Transfer is interrupted. ".concat(String.valueOf(e)));
                    this.f12259f.m38536a(this.f12257d.f12175a, TransferState.FAILED);
                    return Boolean.FALSE;
                }
                Log log5 = f12253b;
                log5.mo38593b("Failed to upload: " + this.f12257d.f12175a + " due to " + e.getMessage());
                this.f12259f.m38535a(this.f12257d.f12175a, e);
                this.f12259f.m38536a(this.f12257d.f12175a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        }
    }
}
