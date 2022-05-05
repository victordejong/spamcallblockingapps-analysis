package com.amazonaws.mobileconnectors.p016s3.transfermanager.internal;

import com.amazonaws.mobileconnectors.p016s3.transfermanager.TransferManagerConfiguration;
import com.amazonaws.services.p017s3.model.PutObjectRequest;
import java.io.File;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferManagerUtils */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils.class */
public class TransferManagerUtils {
    public static long calculateOptimalPartSize(PutObjectRequest putObjectRequest, TransferManagerConfiguration transferManagerConfiguration) {
        return (long) Math.max(Math.ceil(getContentLength(putObjectRequest) / 10000.0d), transferManagerConfiguration.getMinimumUploadPartSize());
    }

    public static ThreadPoolExecutor createDefaultExecutorService() {
        return (ThreadPoolExecutor) Executors.newFixedThreadPool(10, new ThreadFactory() { // from class: com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferManagerUtils.1
            public int threadCount = 1;

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                StringBuilder sb = new StringBuilder();
                sb.append("s3-transfer-manager-worker-");
                int i = this.threadCount;
                this.threadCount = i + 1;
                sb.append(i);
                thread.setName(sb.toString());
                return thread;
            }
        });
    }

    public static long getContentLength(PutObjectRequest putObjectRequest) {
        File requestFile = getRequestFile(putObjectRequest);
        if (requestFile != null) {
            return requestFile.length();
        }
        if (putObjectRequest.getInputStream() == null || putObjectRequest.getMetadata().getContentLength() <= 0) {
            return -1L;
        }
        return putObjectRequest.getMetadata().getContentLength();
    }

    public static File getRequestFile(PutObjectRequest putObjectRequest) {
        if (putObjectRequest.getFile() != null) {
            return putObjectRequest.getFile();
        }
        return null;
    }

    public static boolean isUploadParallelizable(PutObjectRequest putObjectRequest, boolean z) {
        boolean z2 = false;
        if (z) {
            return false;
        }
        if (getRequestFile(putObjectRequest) != null) {
            z2 = true;
        }
        return z2;
    }

    public static boolean shouldUseMultipartUpload(PutObjectRequest putObjectRequest, TransferManagerConfiguration transferManagerConfiguration) {
        return getContentLength(putObjectRequest) > transferManagerConfiguration.getMultipartUploadThreshold();
    }
}
