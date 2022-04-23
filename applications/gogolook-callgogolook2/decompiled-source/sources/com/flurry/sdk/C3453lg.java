package com.flurry.sdk;

import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.StatFs;
import com.flurry.sdk.C3448ld;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.lg */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/lg.class */
public class C3453lg {

    /* renamed from: a */
    public static final String f5943a = "lg";

    /* renamed from: a */
    public static Map<String, String> m32427a(boolean z) {
        final HashMap hashMap = new HashMap();
        try {
            hashMap.put("mem.java.max", Long.toString(Runtime.getRuntime().maxMemory()));
        } catch (RuntimeException e) {
            C3356jq.m32612a(f5943a, "Error retrieving max memory", e);
        }
        try {
            Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
            Debug.getMemoryInfo(memoryInfo);
            hashMap.put("mem.pss", Long.toString(memoryInfo.getTotalPss() * 1024));
        } catch (RuntimeException e2) {
            C3356jq.m32612a(f5943a, "Error retrieving pss memory", e2);
        }
        if (C3331jb.m32675b()) {
            hashMap.put("application.state", Integer.toString(C3448ld.EnumC3449a.ACTIVE.f5930e));
        } else {
            hashMap.put("application.state", Integer.toString(C3448ld.EnumC3449a.BACKGROUND.f5930e));
        }
        int i = -1;
        try {
            C3294ij.m32755a();
            i = C3294ij.m32747i() - 1;
        } catch (Exception e3) {
        }
        hashMap.put("net.status", Integer.toString(i));
        int i2 = 0;
        try {
            i2 = C3442ky.m32482c();
        } catch (RuntimeException e4) {
        }
        hashMap.put("orientation", Integer.toString(i2));
        if (!z) {
            C3331jb.m32681a().m32674b(new Runnable() { // from class: com.flurry.sdk.lg.1
                @Override // java.lang.Runnable
                public final void run() {
                    C3453lg.m32424d(hashMap);
                    C3453lg.m32428a(hashMap);
                    C3453lg.m32426b(hashMap);
                }
            });
        } else {
            m32424d(hashMap);
            m32428a(hashMap);
            m32426b(hashMap);
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m32428a(Map<String, String> map) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        map.put("disk.size.free", Long.toString((Build.VERSION.SDK_INT >= 18 ? statFs.getAvailableBlocksLong() : statFs.getAvailableBlocks()) * (Build.VERSION.SDK_INT >= 18 ? statFs.getBlockSizeLong() : statFs.getBlockSize())));
    }

    /* renamed from: b */
    public static void m32426b(Map<String, String> map) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        map.put("disk.size.total", Long.toString((Build.VERSION.SDK_INT >= 18 ? statFs.getBlockCountLong() : statFs.getBlockCount()) * (Build.VERSION.SDK_INT >= 18 ? statFs.getBlockSizeLong() : statFs.getBlockSize())));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0118 A[Catch: all -> 0x0136, IOException -> 0x013e, FileNotFoundException -> 0x0143, TRY_ENTER, TryCatch #6 {FileNotFoundException -> 0x0143, IOException -> 0x013e, all -> 0x0136, blocks: (B:10:0x005c, B:13:0x0066, B:15:0x0074, B:17:0x0089, B:20:0x0093, B:27:0x00b2, B:31:0x00c3, B:35:0x00d4, B:46:0x00fc, B:47:0x010a, B:48:0x0118, B:50:0x0124), top: B:88:0x005c }] */
    /* JADX WARN: Type inference failed for: r0v29, types: [java.io.Closeable, java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m32424d(java.util.Map<java.lang.String, java.lang.String> r6) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3453lg.m32424d(java.util.Map):void");
    }
}
