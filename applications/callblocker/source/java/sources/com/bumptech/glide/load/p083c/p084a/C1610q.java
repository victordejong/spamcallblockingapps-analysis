package com.bumptech.glide.load.p083c.p084a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.load.EnumC1493b;
import java.io.File;
/* renamed from: com.bumptech.glide.load.c.a.q */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/q.class */
final class C1610q {

    /* renamed from: a */
    private static final File f4996a = new File("/proc/self/fd");

    /* renamed from: d */
    private static volatile C1610q f4997d;

    /* renamed from: b */
    private volatile int f4998b;

    /* renamed from: c */
    private volatile boolean f4999c = true;

    private C1610q() {
    }

    /* renamed from: a */
    public static C1610q m16743a() {
        if (f4997d == null) {
            synchronized (C1610q.class) {
                try {
                    if (f4997d == null) {
                        f4997d = new C1610q();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4997d;
    }

    /* renamed from: b */
    private boolean m16741b() {
        boolean z;
        boolean z2 = false;
        synchronized (this) {
            int i = this.f4998b + 1;
            this.f4998b = i;
            if (i >= 50) {
                this.f4998b = 0;
                int length = f4996a.list().length;
                if (length < 700) {
                    z2 = true;
                }
                this.f4999c = z2;
                if (!this.f4999c && Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit 700");
                }
            }
            z = this.f4999c;
        }
        return z;
    }

    @TargetApi(26)
    /* renamed from: a */
    public boolean m16742a(int i, int i2, BitmapFactory.Options options, EnumC1493b enumC1493b, boolean z, boolean z2) {
        boolean z3;
        if (!z || Build.VERSION.SDK_INT < 26 || z2) {
            z3 = false;
        } else {
            boolean z4 = i >= 128 && i2 >= 128 && m16741b();
            z3 = z4;
            if (z4) {
                options.inPreferredConfig = Bitmap.Config.HARDWARE;
                options.inMutable = false;
                z3 = z4;
            }
        }
        return z3;
    }
}
