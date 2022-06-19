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
public final class C4312q {

    /* renamed from: a */
    public static final boolean f13273a;

    /* renamed from: b */
    public static final boolean f13274b;

    /* renamed from: c */
    private static final File f13275c;

    /* renamed from: d */
    private static volatile C4312q f13276d;

    /* renamed from: e */
    private static volatile int f13277e;

    /* renamed from: g */
    private final int f13279g;

    /* renamed from: h */
    private final int f13280h;

    /* renamed from: i */
    private int f13281i;

    /* renamed from: j */
    private boolean f13282j = true;

    /* renamed from: k */
    private final AtomicBoolean f13283k = new AtomicBoolean(false);

    /* renamed from: f */
    private final boolean f13278f = m22898f();

    static {
        int i = Build.VERSION.SDK_INT;
        f13273a = i < 29;
        f13274b = i >= 26;
        f13275c = new File("/proc/self/fd");
        f13277e = -1;
    }

    C4312q() {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f13279g = 20000;
            this.f13280h = 0;
            return;
        }
        this.f13279g = 700;
        this.f13280h = 128;
    }

    /* renamed from: a */
    private boolean m22903a() {
        return f13273a && !this.f13283k.get();
    }

    /* renamed from: b */
    public static C4312q m22902b() {
        if (f13276d == null) {
            synchronized (C4312q.class) {
                try {
                    if (f13276d == null) {
                        f13276d = new C4312q();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f13276d;
    }

    /* renamed from: c */
    private int m22901c() {
        return f13277e != -1 ? f13277e : this.f13279g;
    }

    /* renamed from: d */
    private boolean m22900d() {
        boolean z;
        synchronized (this) {
            boolean z2 = true;
            int i = this.f13281i + 1;
            this.f13281i = i;
            if (i >= 50) {
                this.f13281i = 0;
                int length = f13275c.list().length;
                long m22901c = m22901c();
                if (length >= m22901c) {
                    z2 = false;
                }
                this.f13282j = z2;
                if (!z2 && Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + m22901c);
                }
            }
            z = this.f13282j;
        }
        return z;
    }

    /* renamed from: f */
    private static boolean m22898f() {
        return !m22897g() && !m22896h();
    }

    /* renamed from: g */
    private static boolean m22897g() {
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
    private static boolean m22896h() {
        if (Build.VERSION.SDK_INT != 27) {
            return false;
        }
        return Arrays.asList("LG-M250", "LG-M320", "LG-Q710AL", "LG-Q710PL", "LGM-K121K", "LGM-K121L", "LGM-K121S", "LGM-X320K", "LGM-X320L", "LGM-X320S", "LGM-X401L", "LGM-X401S", "LM-Q610.FG", "LM-Q610.FGN", "LM-Q617.FG", "LM-Q617.FGN", "LM-Q710.FG", "LM-Q710.FGN", "LM-X220PM", "LM-X220QMA", "LM-X410PM").contains(Build.MODEL);
    }

    /* renamed from: e */
    public boolean m22899e(int i, int i2, boolean z, boolean z2) {
        if (!z) {
            if (!Log.isLoggable("HardwareConfig", 2)) {
                return false;
            }
            Log.v("HardwareConfig", "Hardware config disallowed by caller");
            return false;
        } else if (!this.f13278f) {
            if (!Log.isLoggable("HardwareConfig", 2)) {
                return false;
            }
            Log.v("HardwareConfig", "Hardware config disallowed by device model");
            return false;
        } else if (!f13274b) {
            if (!Log.isLoggable("HardwareConfig", 2)) {
                return false;
            }
            Log.v("HardwareConfig", "Hardware config disallowed by sdk");
            return false;
        } else if (m22903a()) {
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
            int i3 = this.f13280h;
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
            } else if (m22900d()) {
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
    public boolean m22895i(int i, int i2, BitmapFactory.Options options, boolean z, boolean z2) {
        boolean m22899e = m22899e(i, i2, z, z2);
        if (m22899e) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return m22899e;
    }
}
