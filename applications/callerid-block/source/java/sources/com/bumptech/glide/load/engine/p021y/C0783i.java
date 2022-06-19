package com.bumptech.glide.load.engine.p021y;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.Log;
/* renamed from: com.bumptech.glide.load.engine.y.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/i.class */
public final class C0783i {

    /* renamed from: a */
    private final int f3630a;

    /* renamed from: b */
    private final int f3631b;

    /* renamed from: c */
    private final Context f3632c;

    /* renamed from: d */
    private final int f3633d;

    /* renamed from: com.bumptech.glide.load.engine.y.i$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/i$a.class */
    public static final class C0784a {

        /* renamed from: i */
        static final int f3634i;

        /* renamed from: a */
        final Context f3635a;

        /* renamed from: b */
        ActivityManager f3636b;

        /* renamed from: c */
        AbstractC0785c f3637c;

        /* renamed from: e */
        float f3639e;

        /* renamed from: d */
        float f3638d = 2.0f;

        /* renamed from: f */
        float f3640f = 0.4f;

        /* renamed from: g */
        float f3641g = 0.33f;

        /* renamed from: h */
        int f3642h = 4194304;

        static {
            f3634i = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public C0784a(Context context) {
            this.f3639e = f3634i;
            this.f3635a = context;
            this.f3636b = (ActivityManager) context.getSystemService("activity");
            this.f3637c = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !C0783i.m11023e(this.f3636b)) {
                return;
            }
            this.f3639e = 0.0f;
        }

        /* renamed from: a */
        public C0783i m11021a() {
            return new C0783i(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.y.i$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/i$c.class */
    public interface AbstractC0785c {
        /* renamed from: a */
        int m11020a();

        /* renamed from: b */
        int m11019b();
    }

    C0783i(C0784a c0784a) {
        this.f3632c = c0784a.f3635a;
        int i = m11023e(c0784a.f3636b) ? c0784a.f3642h / 2 : c0784a.f3642h;
        this.f3633d = i;
        int m11025c = m11025c(c0784a.f3636b, c0784a.f3640f, c0784a.f3641g);
        float m11019b = c0784a.f3637c.m11019b() * c0784a.f3637c.m11020a() * 4;
        int round = Math.round(c0784a.f3639e * m11019b);
        int round2 = Math.round(m11019b * c0784a.f3638d);
        int i2 = m11025c - i;
        int i3 = round2 + round;
        if (i3 <= i2) {
            this.f3631b = round2;
            this.f3630a = round;
        } else {
            float f = i2;
            float f2 = c0784a.f3639e;
            float f3 = c0784a.f3638d;
            float f4 = f / (f2 + f3);
            this.f3631b = Math.round(f3 * f4);
            this.f3630a = Math.round(f4 * c0784a.f3639e);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Calculation complete, Calculated memory cache size: ");
            sb.append(m11022f(this.f3631b));
            sb.append(", pool size: ");
            sb.append(m11022f(this.f3630a));
            sb.append(", byte array size: ");
            sb.append(m11022f(i));
            sb.append(", memory class limited? ");
            sb.append(i3 > m11025c);
            sb.append(", max size: ");
            sb.append(m11022f(m11025c));
            sb.append(", memoryClass: ");
            sb.append(c0784a.f3636b.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(m11023e(c0784a.f3636b));
            Log.d("MemorySizeCalculator", sb.toString());
        }
    }

    /* renamed from: c */
    private static int m11025c(ActivityManager activityManager, float f, float f2) {
        float memoryClass = activityManager.getMemoryClass() * 1024 * 1024;
        if (m11023e(activityManager)) {
            f = f2;
        }
        return Math.round(memoryClass * f);
    }

    @TargetApi(19)
    /* renamed from: e */
    static boolean m11023e(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return true;
    }

    /* renamed from: f */
    private String m11022f(int i) {
        return Formatter.formatFileSize(this.f3632c, i);
    }

    /* renamed from: a */
    public int m11027a() {
        return this.f3633d;
    }

    /* renamed from: b */
    public int m11026b() {
        return this.f3630a;
    }

    /* renamed from: d */
    public int m11024d() {
        return this.f3631b;
    }
}
