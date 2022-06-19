package com.amazonaws.mobileconnectors.p100s3.transferutility;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.p101s3.AmazonS3;
import com.amazonaws.services.p101s3.model.GetObjectRequest;
import com.amazonaws.services.p101s3.model.S3Object;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.concurrent.Callable;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.DownloadTask */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask.class */
public class DownloadTask implements Callable<Boolean> {

    /* renamed from: a */
    private static final Log f12132a = LogFactory.m38584a(DownloadTask.class);

    /* renamed from: b */
    private final AmazonS3 f12133b;

    /* renamed from: c */
    private final TransferRecord f12134c;

    /* renamed from: d */
    private final TransferStatusUpdater f12135d;

    public DownloadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        this.f12134c = transferRecord;
        this.f12133b = amazonS3;
        this.f12135d = transferStatusUpdater;
    }

    /* renamed from: a */
    public Boolean call() {
        try {
            if (TransferNetworkLossHandler.m38550a() != null && !TransferNetworkLossHandler.m38550a().m38547b()) {
                Log log = f12132a;
                log.mo38590c("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                this.f12135d.m38536a(this.f12134c.f12175a, TransferState.WAITING_FOR_NETWORK);
                return Boolean.FALSE;
            }
        } catch (TransferUtilityException e) {
            Log log2 = f12132a;
            log2.mo38586e("TransferUtilityException: [" + e + "]");
        }
        this.f12135d.m38536a(this.f12134c.f12175a, TransferState.IN_PROGRESS);
        ProgressListener m38531b = this.f12135d.m38531b(this.f12134c.f12175a);
        try {
            GetObjectRequest getObjectRequest = new GetObjectRequest(this.f12134c.f12190p, this.f12134c.f12191q);
            TransferUtility.m38522a(getObjectRequest);
            File file = new File(this.f12134c.f12193s);
            long length = file.length();
            if (length > 0) {
                f12132a.mo38593b(String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.f12134c.f12175a), Long.valueOf(length)));
                getObjectRequest.setRange(length, -1L);
            }
            getObjectRequest.setGeneralProgressListener(m38531b);
            S3Object mo38447a = this.f12133b.mo38447a(getObjectRequest);
            if (mo38447a == null) {
                this.f12135d.m38535a(this.f12134c.f12175a, new IllegalStateException("AmazonS3.getObject returns null"));
                this.f12135d.m38536a(this.f12134c.f12175a, TransferState.FAILED);
                return Boolean.FALSE;
            }
            long instanceLength = mo38447a.getObjectMetadata().getInstanceLength();
            this.f12135d.m38537a(this.f12134c.f12175a, length, instanceLength, true);
            m38565a(mo38447a.getObjectContent(), file);
            this.f12135d.m38537a(this.f12134c.f12175a, instanceLength, instanceLength, true);
            this.f12135d.m38536a(this.f12134c.f12175a, TransferState.COMPLETED);
            return Boolean.TRUE;
        } catch (Exception e2) {
            if (TransferState.PENDING_CANCEL.equals(this.f12134c.f12189o)) {
                this.f12135d.m38536a(this.f12134c.f12175a, TransferState.CANCELED);
                Log log3 = f12132a;
                log3.mo38590c("Transfer is " + TransferState.CANCELED);
                return Boolean.FALSE;
            } else if (TransferState.PENDING_PAUSE.equals(this.f12134c.f12189o)) {
                this.f12135d.m38536a(this.f12134c.f12175a, TransferState.PAUSED);
                Log log4 = f12132a;
                log4.mo38590c("Transfer is " + TransferState.PAUSED);
                new ProgressEvent(0L).setEventCode(32);
                m38531b.progressChanged(new ProgressEvent(0L));
                return Boolean.FALSE;
            } else {
                try {
                    if (TransferNetworkLossHandler.m38550a() != null && !TransferNetworkLossHandler.m38550a().m38547b()) {
                        Log log5 = f12132a;
                        log5.mo38590c("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                        this.f12135d.m38536a(this.f12134c.f12175a, TransferState.WAITING_FOR_NETWORK);
                        log5.mo38593b("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                        new ProgressEvent(0L).setEventCode(32);
                        m38531b.progressChanged(new ProgressEvent(0L));
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e3) {
                    Log log6 = f12132a;
                    log6.mo38586e("TransferUtilityException: [" + e3 + "]");
                }
                if (RetryUtils.m38492a(e2)) {
                    f12132a.mo38590c("Transfer is interrupted. ".concat(String.valueOf(e2)));
                    this.f12135d.m38536a(this.f12134c.f12175a, TransferState.FAILED);
                    return Boolean.FALSE;
                }
                Log log7 = f12132a;
                log7.mo38593b("Failed to download: " + this.f12134c.f12175a + " due to " + e2.getMessage());
                this.f12135d.m38535a(this.f12134c.f12175a, e2);
                this.f12135d.m38536a(this.f12134c.f12175a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        }
    }

    /* renamed from: a */
    private static void m38565a(InputStream inputStream, File file) {
        Throwable th;
        SocketTimeoutException e;
        BufferedOutputStream bufferedOutputStream;
        IOException e2;
        BufferedOutputStream bufferedOutputStream2;
        BufferedOutputStream bufferedOutputStream3;
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        BufferedOutputStream bufferedOutputStream4 = null;
        try {
            try {
                bufferedOutputStream3 = new BufferedOutputStream(new FileOutputStream(file, file.length() > 0));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SocketTimeoutException e3) {
            e = e3;
            bufferedOutputStream = null;
        } catch (IOException e4) {
            e2 = e4;
            bufferedOutputStream2 = null;
        }
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    bufferedOutputStream3.write(bArr, 0, read);
                } else {
                    try {
                        break;
                    } catch (IOException e5) {
                        f12132a.mo38592b("got exception", e5);
                    }
                }
            }
            bufferedOutputStream3.close();
            if (inputStream == null) {
                return;
            }
            try {
                inputStream.close();
            } catch (IOException e6) {
                f12132a.mo38592b("got exception", e6);
            }
        } catch (SocketTimeoutException e7) {
            bufferedOutputStream = bufferedOutputStream3;
            e = e7;
            BufferedOutputStream bufferedOutputStream5 = bufferedOutputStream;
            StringBuilder sb = new StringBuilder("SocketTimeoutException: Unable to retrieve contents over network: ");
            BufferedOutputStream bufferedOutputStream6 = bufferedOutputStream;
            sb.append(e.getMessage());
            BufferedOutputStream bufferedOutputStream7 = bufferedOutputStream;
            String sb2 = sb.toString();
            BufferedOutputStream bufferedOutputStream8 = bufferedOutputStream;
            f12132a.mo38586e(sb2);
            BufferedOutputStream bufferedOutputStream9 = bufferedOutputStream;
            BufferedOutputStream bufferedOutputStream10 = bufferedOutputStream;
            AmazonClientException amazonClientException = new AmazonClientException(sb2, e);
            BufferedOutputStream bufferedOutputStream11 = bufferedOutputStream;
            throw amazonClientException;
        } catch (IOException e8) {
            bufferedOutputStream2 = bufferedOutputStream3;
            e2 = e8;
            BufferedOutputStream bufferedOutputStream12 = bufferedOutputStream2;
            BufferedOutputStream bufferedOutputStream13 = bufferedOutputStream2;
            StringBuilder sb3 = new StringBuilder("Unable to store object contents to disk: ");
            BufferedOutputStream bufferedOutputStream14 = bufferedOutputStream2;
            sb3.append(e2.getMessage());
            BufferedOutputStream bufferedOutputStream15 = bufferedOutputStream2;
            AmazonClientException amazonClientException2 = new AmazonClientException(sb3.toString(), e2);
            BufferedOutputStream bufferedOutputStream16 = bufferedOutputStream2;
            throw amazonClientException2;
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream4 = bufferedOutputStream3;
            if (bufferedOutputStream4 != null) {
                try {
                    bufferedOutputStream4.close();
                } catch (IOException e9) {
                    f12132a.mo38592b("got exception", e9);
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    f12132a.mo38592b("got exception", e10);
                }
            }
            throw th;
        }
    }
}
