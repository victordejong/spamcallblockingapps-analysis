package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask.class */
public class DownloadTask implements Callable<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f6677a = LogFactory.a(DownloadTask.class);

    /* renamed from: b  reason: collision with root package name */
    private final AmazonS3 f6678b;

    /* renamed from: c  reason: collision with root package name */
    private final TransferRecord f6679c;

    /* renamed from: d  reason: collision with root package name */
    private final TransferStatusUpdater f6680d;

    public DownloadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        this.f6679c = transferRecord;
        this.f6678b = amazonS3;
        this.f6680d = transferStatusUpdater;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Boolean call() {
        try {
            if (TransferNetworkLossHandler.a() != null && !TransferNetworkLossHandler.a().b()) {
                Log log = f6677a;
                log.c("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                this.f6680d.a(this.f6679c.f6703a, TransferState.WAITING_FOR_NETWORK);
                return Boolean.FALSE;
            }
        } catch (TransferUtilityException e) {
            Log log2 = f6677a;
            log2.e("TransferUtilityException: [" + e + "]");
        }
        this.f6680d.a(this.f6679c.f6703a, TransferState.IN_PROGRESS);
        ProgressListener b2 = this.f6680d.b(this.f6679c.f6703a);
        try {
            GetObjectRequest getObjectRequest = new GetObjectRequest(this.f6679c.p, this.f6679c.q);
            TransferUtility.a(getObjectRequest);
            File file = new File(this.f6679c.s);
            long length = file.length();
            if (length > 0) {
                f6677a.b(String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.f6679c.f6703a), Long.valueOf(length)));
                getObjectRequest.setRange(length, -1L);
            }
            getObjectRequest.setGeneralProgressListener(b2);
            S3Object a2 = this.f6678b.a(getObjectRequest);
            if (a2 == null) {
                this.f6680d.a(this.f6679c.f6703a, new IllegalStateException("AmazonS3.getObject returns null"));
                this.f6680d.a(this.f6679c.f6703a, TransferState.FAILED);
                return Boolean.FALSE;
            }
            long instanceLength = a2.getObjectMetadata().getInstanceLength();
            this.f6680d.a(this.f6679c.f6703a, length, instanceLength, true);
            a(a2.getObjectContent(), file);
            this.f6680d.a(this.f6679c.f6703a, instanceLength, instanceLength, true);
            this.f6680d.a(this.f6679c.f6703a, TransferState.COMPLETED);
            return Boolean.TRUE;
        } catch (Exception e2) {
            if (TransferState.PENDING_CANCEL.equals(this.f6679c.o)) {
                this.f6680d.a(this.f6679c.f6703a, TransferState.CANCELED);
                Log log3 = f6677a;
                log3.c("Transfer is " + TransferState.CANCELED);
                return Boolean.FALSE;
            } else if (TransferState.PENDING_PAUSE.equals(this.f6679c.o)) {
                this.f6680d.a(this.f6679c.f6703a, TransferState.PAUSED);
                Log log4 = f6677a;
                log4.c("Transfer is " + TransferState.PAUSED);
                new ProgressEvent(0L).setEventCode(32);
                b2.progressChanged(new ProgressEvent(0L));
                return Boolean.FALSE;
            } else {
                try {
                    if (TransferNetworkLossHandler.a() != null && !TransferNetworkLossHandler.a().b()) {
                        Log log5 = f6677a;
                        log5.c("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                        this.f6680d.a(this.f6679c.f6703a, TransferState.WAITING_FOR_NETWORK);
                        log5.b("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                        new ProgressEvent(0L).setEventCode(32);
                        b2.progressChanged(new ProgressEvent(0L));
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e3) {
                    Log log6 = f6677a;
                    log6.e("TransferUtilityException: [" + e3 + "]");
                }
                if (RetryUtils.a(e2)) {
                    f6677a.c("Transfer is interrupted. ".concat(String.valueOf(e2)));
                    this.f6680d.a(this.f6679c.f6703a, TransferState.FAILED);
                    return Boolean.FALSE;
                }
                Log log7 = f6677a;
                log7.b("Failed to download: " + this.f6679c.f6703a + " due to " + e2.getMessage());
                this.f6680d.a(this.f6679c.f6703a, e2);
                this.f6680d.a(this.f6679c.f6703a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        }
    }

    private static void a(InputStream inputStream, File file) {
        Throwable th;
        SocketTimeoutException e;
        IOException e2;
        BufferedOutputStream bufferedOutputStream;
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        boolean z = file.length() > 0;
        BufferedOutputStream bufferedOutputStream2 = null;
        BufferedOutputStream bufferedOutputStream3 = null;
        BufferedOutputStream bufferedOutputStream4 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file, z));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SocketTimeoutException e3) {
            e = e3;
        } catch (IOException e4) {
            e2 = e4;
        }
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    bufferedOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        break;
                    } catch (IOException e5) {
                        f6677a.b("got exception", e5);
                    }
                }
            }
            bufferedOutputStream.close();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e6) {
                    f6677a.b("got exception", e6);
                }
            }
        } catch (SocketTimeoutException e7) {
            e = e7;
            bufferedOutputStream3 = bufferedOutputStream;
            StringBuilder sb = new StringBuilder("SocketTimeoutException: Unable to retrieve contents over network: ");
            sb.append(e.getMessage());
            String sb2 = sb.toString();
            f6677a.e(sb2);
            throw new AmazonClientException(sb2, e);
        } catch (IOException e8) {
            e2 = e8;
            bufferedOutputStream2 = bufferedOutputStream;
            StringBuilder sb3 = new StringBuilder("Unable to store object contents to disk: ");
            sb3.append(e2.getMessage());
            throw new AmazonClientException(sb3.toString(), e2);
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream4 = bufferedOutputStream;
            if (bufferedOutputStream4 != null) {
                try {
                    bufferedOutputStream4.close();
                } catch (IOException e9) {
                    f6677a.b("got exception", e9);
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    f6677a.b("got exception", e10);
                }
            }
            throw th;
        }
    }
}
