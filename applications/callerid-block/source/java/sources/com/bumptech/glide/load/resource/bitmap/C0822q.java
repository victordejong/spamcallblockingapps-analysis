package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bumptech.glide.load.resource.bitmap.q */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/q.class */
public final class C0822q {

    /* renamed from: g */
    public static final boolean f3755g;

    /* renamed from: h */
    public static final boolean f3756h;

    /* renamed from: i */
    private static final File f3757i;

    /* renamed from: j */
    private static volatile C0822q f3758j;

    /* renamed from: k */
    private static volatile int f3759k;

    /* renamed from: b */
    private final int f3761b;

    /* renamed from: c */
    private final int f3762c;

    /* renamed from: d */
    private int f3763d;

    /* renamed from: e */
    private boolean f3764e = true;

    /* renamed from: f */
    private final AtomicBoolean f3765f = new AtomicBoolean(false);

    /* renamed from: a */
    private final boolean f3760a = m10874f();

    static {
        int i = Build.VERSION.SDK_INT;
        f3755g = i < 29;
        f3756h = i >= 26;
        f3757i = new File("/proc/self/fd");
        f3759k = -1;
    }

    C0822q() {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f3761b = 20000;
            this.f3762c = 0;
            return;
        }
        this.f3761b = 700;
        this.f3762c = 128;
    }

    /* renamed from: a */
    private boolean m10879a() {
        return f3755g && !this.f3765f.get();
    }

    /* renamed from: b */
    public static C0822q m10878b() {
        if (f3758j == null) {
            synchronized (C0822q.class) {
                try {
                    if (f3758j == null) {
                        f3758j = new C0822q();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3758j;
    }

    /* renamed from: c */
    private int m10877c() {
        return f3759k != -1 ? f3759k : this.f3761b;
    }

    /* renamed from: d */
    private boolean m10876d() {
        boolean z;
        synchronized (this) {
            boolean z2 = true;
            int i = this.f3763d + 1;
            this.f3763d = i;
            if (i >= 50) {
                this.f3763d = 0;
                int length = f3757i.list().length;
                long m10877c = m10877c();
                if (length >= m10877c) {
                    z2 = false;
                }
                this.f3764e = z2;
                if (!z2 && Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + m10877c);
                }
            }
            z = this.f3764e;
        }
        return z;
    }

    /* renamed from: f */
    private static boolean m10874f() {
        return !m10873g() && !m10872h();
    }

    /* renamed from: g */
    private static boolean m10873g() {
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

    /* renamed from: h */
    private static boolean m10872h() {
        if (Build.VERSION.SDK_INT != 27) {
            return false;
        }
        return Arrays.asList("LG-M250", "LG-M320", "LG-Q710AL", "LG-Q710PL", "LGM-K121K", "LGM-K121L", "LGM-K121S", "LGM-X320K", "LGM-X320L", "LGM-X320S", "LGM-X401L", "LGM-X401S", "LM-Q610.FG", "LM-Q610.FGN", "LM-Q617.FG", "LM-Q617.FGN", "LM-Q710.FG", "LM-Q710.FGN", "LM-X220PM", "LM-X220QMA", "LM-X410PM").contains(Build.MODEL);
    }

    /* renamed from: e */
    public boolean m10875e(int i, int i2, boolean z, boolean z2) {
        if (!z) {
            if (!Log.isLoggable("HardwareConfig", 2)) {
                return false;
            }
            Log.v("HardwareConfig", "Hardware config disallowed by caller");
            return false;
        } else if (!this.f3760a) {
            if (!Log.isLoggable("HardwareConfig", 2)) {
                return false;
            }
            Log.v("HardwareConfig", "Hardware config disallowed by device model");
            return false;
        } else if (!f3756h) {
            if (!Log.isLoggable("HardwareConfig", 2)) {
                return false;
            }
            Log.v("HardwareConfig", "Hardware config disallowed by sdk");
            return false;
        } else if (m10879a()) {
            if (!Log.isLoggable("HardwareConfig", 2)) {
                return false;
            }
            Log.v("HardwareConfig", "Hardware config disallowed by app state");
            return false;
        } else if (z2) {
            if (!Log.isLoggable("HardwareConfig", 2)) {
                return false;
            }
            Log.v("HardwareConfig", "Hardware config disallowed because exif orientation is required");
            return false;
        } else {
            int i3 = this.f3762c;
            if (i < i3) {
                if (!Log.isLoggable("HardwareConfig", 2)) {
                    return false;
                }
                Log.v("HardwareConfig", "Hardware config disallowed because width is too small");
                return false;
            } else if (i2 < i3) {
                if (!Log.isLoggable("HardwareConfig", 2)) {
                    return false;
                }
                Log.v("HardwareConfig", "Hardware config disallowed because height is too small");
                return false;
            } else if (m10876d()) {
                return true;
            } else {
                if (!Log.isLoggable("HardwareConfig", 2)) {
                    return false;
                }
                Log.v("HardwareConfig", "Hardware config disallowed because there are insufficient FDs");
                return false;
            }
        }
    }

    @TargetApi(26)
    /* renamed from: i */
    public boolean m10871i(int i, int i2, BitmapFactory.Options options, boolean z, boolean z2) {
        boolean m10875e = m10875e(i, i2, z, z2);
        if (m10875e) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return m10875e;
    }
}
