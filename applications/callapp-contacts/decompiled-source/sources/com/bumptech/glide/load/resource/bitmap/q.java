package com.bumptech.glide.load.resource.bitmap;

import android.os.Build;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f7679a;

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f7680b;

    /* renamed from: c  reason: collision with root package name */
    private static final File f7681c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile q f7682d;
    private static volatile int e;
    private final boolean f;
    private final int g;
    private final int h;
    private int i;
    private boolean j = true;
    private final AtomicBoolean k = new AtomicBoolean(false);

    static {
        boolean z = true;
        f7679a = Build.VERSION.SDK_INT < 29;
        if (Build.VERSION.SDK_INT < 26) {
            z = false;
        }
        f7680b = z;
        f7681c = new File("/proc/self/fd");
        e = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    q() {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.q.<init>():void");
    }

    public static q a() {
        if (f7682d == null) {
            synchronized (q.class) {
                try {
                    if (f7682d == null) {
                        f7682d = new q();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7682d;
    }

    private boolean b() {
        return f7679a && !this.k.get();
    }

    private static boolean c() {
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

    private boolean d() {
        boolean z;
        synchronized (this) {
            boolean z2 = true;
            int i = this.i + 1;
            this.i = i;
            if (i >= 50) {
                this.i = 0;
                int length = f7681c.list().length;
                long j = e != -1 ? e : this.g;
                if (length >= j) {
                    z2 = false;
                }
                this.j = z2;
                if (!z2 && Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + j);
                }
            }
            z = this.j;
        }
        return z;
    }

    public final boolean a(int i, int i2, boolean z, boolean z2) {
        if (!z) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        } else if (!this.f) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        } else if (!f7680b) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        } else if (b()) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        } else if (z2) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        } else {
            int i3 = this.h;
            if (i < i3) {
                Log.isLoggable("HardwareConfig", 2);
                return false;
            } else if (i2 < i3) {
                Log.isLoggable("HardwareConfig", 2);
                return false;
            } else if (d()) {
                return true;
            } else {
                Log.isLoggable("HardwareConfig", 2);
                return false;
            }
        }
    }
}
