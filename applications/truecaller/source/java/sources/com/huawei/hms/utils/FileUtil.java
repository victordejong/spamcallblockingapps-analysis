package com.huawei.hms.utils;

import android.content.Context;
import com.huawei.hms.support.log.HMSLog;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/FileUtil.class */
public abstract class FileUtil {
    public static final String LOCAL_REPORT_FILE = "hms/HwMobileServiceReport.txt";
    public static final String LOCAL_REPORT_FILE_CONFIG = "hms/config.txt";
    public static final long LOCAL_REPORT_FILE_MAX_SIZE = 10240;

    /* renamed from: a */
    public static boolean f7835a = false;

    /* renamed from: b */
    public static ScheduledExecutorService f7836b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: com.huawei.hms.utils.FileUtil$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/FileUtil$a.class */
    public static final class RunnableC2467a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ File f7837a;

        /* renamed from: b */
        public final /* synthetic */ long f7838b;

        /* renamed from: c */
        public final /* synthetic */ String f7839c;

        public RunnableC2467a(File file, long j, String str) {
            this.f7837a = file;
            this.f7838b = j;
            this.f7839c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RandomAccessFile randomAccessFile;
            Throwable th;
            RandomAccessFile randomAccessFile2;
            IOException e;
            File file = this.f7837a;
            if (file == null) {
                HMSLog.m37195e("FileUtil", "In writeFile Failed to get local file.");
                return;
            }
            File parentFile = file.getParentFile();
            if (parentFile == null || (!parentFile.mkdirs() && !parentFile.isDirectory())) {
                HMSLog.m37195e("FileUtil", "In writeFile, Failed to create directory.");
                return;
            }
            RandomAccessFile randomAccessFile3 = null;
            try {
                try {
                    long length = this.f7837a.length();
                    if (length > this.f7838b) {
                        String canonicalPath = this.f7837a.getCanonicalPath();
                        if (!this.f7837a.delete()) {
                            HMSLog.m37195e("FileUtil", "last file delete failed.");
                        }
                        randomAccessFile2 = new RandomAccessFile(new File(canonicalPath), "rw");
                    } else {
                        randomAccessFile2 = new RandomAccessFile(this.f7837a, "rw");
                        try {
                            randomAccessFile2.seek(length);
                        } catch (IOException e2) {
                            e = e2;
                            HMSLog.m37194e("FileUtil", "writeFile exception:", e);
                            IOUtils.closeQuietly(randomAccessFile2);
                        } catch (Throwable th2) {
                            randomAccessFile = randomAccessFile2;
                            th = th2;
                            IOUtils.closeQuietly(randomAccessFile);
                            throw th;
                        }
                    }
                    RandomAccessFile randomAccessFile4 = randomAccessFile2;
                    RandomAccessFile randomAccessFile5 = randomAccessFile2;
                    StringBuilder sb = new StringBuilder();
                    RandomAccessFile randomAccessFile6 = randomAccessFile2;
                    sb.append(this.f7839c);
                    RandomAccessFile randomAccessFile7 = randomAccessFile2;
                    sb.append(System.getProperty("line.separator"));
                    randomAccessFile3 = randomAccessFile2;
                    randomAccessFile2.writeBytes(sb.toString());
                } catch (Throwable th3) {
                    th = th3;
                    randomAccessFile = null;
                }
            } catch (IOException e3) {
                randomAccessFile2 = randomAccessFile3;
                e = e3;
            }
            IOUtils.closeQuietly(randomAccessFile2);
        }
    }

    public static boolean verifyHash(String str, File file) {
        byte[] digest = SHA256.digest(file);
        boolean z = true;
        if (digest == null || !HEX.encodeHexString(digest, true).equalsIgnoreCase(str)) {
            z = false;
        }
        return z;
    }

    public static void writeFile(File file, String str, long j) {
        f7836b.execute(new RunnableC2467a(file, j, str));
    }

    public static void writeFileReport(Context context, File file, File file2, String str, long j, int i) {
        if (file == null || !file.isFile() || !file.exists()) {
            return;
        }
        if (!f7835a) {
            if (file2 != null && file2.exists() && !file2.delete()) {
                HMSLog.m37195e("FileUtil", "file delete failed.");
            }
            f7835a = true;
        }
        writeFile(file2, str + "|" + j + "|" + i, LOCAL_REPORT_FILE_MAX_SIZE);
    }
}
