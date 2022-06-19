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

    /* renamed from: Ι */
    private final Context f12845;

    public EventDataCollector(Context context) {
        this.f12845 = context;
    }

    public long bootTime() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    public String disk() {
        char c;
        char c2;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
        if (Build.VERSION.SDK_INT >= 18) {
            long blockSizeLong = statFs.getBlockSizeLong();
            c = statFs.getAvailableBlocksLong() * blockSizeLong;
            c2 = statFs.getBlockCountLong() * blockSizeLong;
        } else {
            int blockSize = statFs.getBlockSize();
            c = statFs.getAvailableBlocks() * blockSize;
            c2 = statFs.getBlockCount() * blockSize;
        }
        double pow = Math.pow(2.0d, 20.0d);
        long j = (long) (c / pow);
        long j2 = (long) (c2 / pow);
        StringBuilder sb = new StringBuilder();
        sb.append(j);
        sb.append("/");
        sb.append(j2);
        return sb.toString();
    }

    public long get(String str) {
        return AppsFlyerLibCore.getSharedPreferences(this.f12845).getLong(str, 0L);
    }

    public void set(String str, long j) {
        AppsFlyerLibCore.getSharedPreferences(this.f12845).edit().putLong(str, j).apply();
    }

    public String signature() throws CertificateException, NoSuchAlgorithmException, PackageManager.NameNotFoundException {
        return AndroidUtils.signature(this.f12845.getPackageManager(), this.f12845.getPackageName());
    }
}
