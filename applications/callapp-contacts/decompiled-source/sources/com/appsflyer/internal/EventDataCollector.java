package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.appsflyer.AndroidUtils;
import com.appsflyer.AppsFlyerLibCore;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/EventDataCollector.class */
public class EventDataCollector {

    /* renamed from: Ι  reason: contains not printable characters */
    private final Context f169;

    public EventDataCollector(Context context) {
        this.f169 = context;
    }

    public long bootTime() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    public String disk() {
        long j;
        long j2;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
        if (Build.VERSION.SDK_INT >= 18) {
            long blockSizeLong = statFs.getBlockSizeLong();
            j = statFs.getAvailableBlocksLong() * blockSizeLong;
            j2 = statFs.getBlockCountLong() * blockSizeLong;
        } else {
            int blockSize = statFs.getBlockSize();
            j = statFs.getAvailableBlocks() * blockSize;
            j2 = statFs.getBlockCount() * blockSize;
        }
        double pow = Math.pow(2.0d, 20.0d);
        long j3 = (long) (j / pow);
        long j4 = (long) (j2 / pow);
        StringBuilder sb = new StringBuilder();
        sb.append(j3);
        sb.append("/");
        sb.append(j4);
        return sb.toString();
    }

    public long get(String str) {
        return AppsFlyerLibCore.getSharedPreferences(this.f169).getLong(str, 0L);
    }

    public void set(String str, long j) {
        AppsFlyerLibCore.getSharedPreferences(this.f169).edit().putLong(str, j).apply();
    }

    public String signature() throws CertificateException, NoSuchAlgorithmException, PackageManager.NameNotFoundException {
        return AndroidUtils.signature(this.f169.getPackageManager(), this.f169.getPackageName());
    }
}
