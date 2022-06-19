package com.bumptech.glide.load.resource.bitmap;

import android.os.Build;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bumptech.glide.load.resource.bitmap.q */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/q.class */
public final class C3886q {

    /* renamed from: a */
    public static final boolean f14257a;

    /* renamed from: b */
    public static final boolean f14258b;

    /* renamed from: c */
    private static final File f14259c;

    /* renamed from: d */
    private static volatile C3886q f14260d;

    /* renamed from: e */
    private static volatile int f14261e;

    /* renamed from: f */
    private final boolean f14262f;

    /* renamed from: g */
    private final int f14263g;

    /* renamed from: h */
    private final int f14264h;

    /* renamed from: i */
    private int f14265i;

    /* renamed from: j */
    private boolean f14266j = true;

    /* renamed from: k */
    private final AtomicBoolean f14267k = new AtomicBoolean(false);

    static {
        f14257a = Build.VERSION.SDK_INT < 29;
        f14258b = Build.VERSION.SDK_INT >= 26;
        f14259c = new File("/proc/self/fd");
        f14261e = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    C3886q() {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.C3886q.<init>():void");
    }

    /* renamed from: a */
    public static C3886q m37262a() {
        if (f14260d == null) {
            synchronized (C3886q.class) {
                try {
                    if (f14260d == null) {
                        f14260d = new C3886q();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f14260d;
    }

    /* renamed from: b */
    private boolean m37260b() {
        return f14257a && !this.f14267k.get();
    }

    /* renamed from: c */
    private static boolean m37259c() {
        if (Build.VERSION.SDK_INT != 26) {
            return false;
        }
        for (String str : Arrays.asList("SC-04J", "SM-N935", "SM-J720", "SM-G570F", "SM-G570M", "SM-G960", "SM-G965", "SM-G935", "SM-G930", "SM-A520", "SM-A720F", "moto e5", "moto e5 play", "moto e5 plus", "moto e5 cruise", "moto g(6) forge", "moto g(6) play")) {
            if (Build.MODEL.startsWith(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    private boolean m37258d() {
        boolean z;
        synchronized (this) {
            boolean z2 = true;
            int i = this.f14265i + 1;
            this.f14265i = i;
            if (i >= 50) {
                this.f14265i = 0;
                int length = f14259c.list().length;
                long j = f14261e != -1 ? f14261e : this.f14263g;
                if (length >= j) {
                    z2 = false;
                }
                this.f14266j = z2;
                if (!z2 && Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + j);
                }
            }
            z = this.f14266j;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m37261a(int i, int i2, boolean z, boolean z2) {
        if (!z) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        } else if (!this.f14262f) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        } else if (!f14258b) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        } else if (m37260b()) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        } else if (z2) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        } else {
            int i3 = this.f14264h;
            if (i < i3) {
                Log.isLoggable("HardwareConfig", 2);
                return false;
            } else if (i2 < i3) {
                Log.isLoggable("HardwareConfig", 2);
                return false;
            } else if (m37258d()) {
                return true;
            } else {
                Log.isLoggable("HardwareConfig", 2);
                return false;
            }
        }
    }
}
