package com.bumptech.glide.load.engine.p210y;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
/* renamed from: com.bumptech.glide.load.engine.y.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/i.class */
public final class C4129i {

    /* renamed from: a */
    private final int f12971a;

    /* renamed from: b */
    private final int f12972b;

    /* renamed from: c */
    private final Context f12973c;

    /* renamed from: d */
    private final int f12974d;

    /* renamed from: com.bumptech.glide.load.engine.y.i$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/i$a.class */
    public static final class C4130a {

        /* renamed from: a */
        static final int f12975a;

        /* renamed from: b */
        final Context f12976b;

        /* renamed from: c */
        ActivityManager f12977c;

        /* renamed from: d */
        AbstractC4132c f12978d;

        /* renamed from: f */
        float f12980f;

        /* renamed from: e */
        float f12979e = 2.0f;

        /* renamed from: g */
        float f12981g = 0.4f;

        /* renamed from: h */
        float f12982h = 0.33f;

        /* renamed from: i */
        int f12983i = 4194304;

        static {
            f12975a = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public C4130a(Context context) {
            this.f12980f = f12975a;
            this.f12976b = context;
            this.f12977c = (ActivityManager) context.getSystemService("activity");
            this.f12978d = new C4131b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !C4129i.m23203e(this.f12977c)) {
                return;
            }
            this.f12980f = 0.0f;
        }

        /* renamed from: a */
        public C4129i m23201a() {
            return new C4129i(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.y.i$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/i$b.class */
    public static final class C4131b implements AbstractC4132c {

        /* renamed from: a */
        private final DisplayMetrics f12984a;

        C4131b(DisplayMetrics displayMetrics) {
            this.f12984a = displayMetrics;
        }

        @Override // com.bumptech.glide.load.engine.p210y.C4129i.AbstractC4132c
        /* renamed from: a */
        public int mo23200a() {
            return this.f12984a.heightPixels;
        }

        @Override // com.bumptech.glide.load.engine.p210y.C4129i.AbstractC4132c
        /* renamed from: b */
        public int mo23199b() {
            return this.f12984a.widthPixels;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.y.i$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/i$c.class */
    public interface AbstractC4132c {
        /* renamed from: a */
        int mo23200a();

        /* renamed from: b */
        int mo23199b();
    }

    C4129i(C4130a c4130a) {
        this.f12973c = c4130a.f12976b;
        int i = m23203e(c4130a.f12977c) ? c4130a.f12983i / 2 : c4130a.f12983i;
        this.f12974d = i;
        int m23205c = m23205c(c4130a.f12977c, c4130a.f12981g, c4130a.f12982h);
        float mo23199b = c4130a.f12978d.mo23199b() * c4130a.f12978d.mo23200a() * 4;
        int round = Math.round(c4130a.f12980f * mo23199b);
        int round2 = Math.round(mo23199b * c4130a.f12979e);
        int i2 = m23205c - i;
        int i3 = round2 + round;
        if (i3 <= i2) {
            this.f12972b = round2;
            this.f12971a = round;
        } else {
            float f = i2;
            float f2 = c4130a.f12980f;
            float f3 = c4130a.f12979e;
            float f4 = f / (f2 + f3);
            this.f12972b = Math.round(f3 * f4);
            this.f12971a = Math.round(f4 * c4130a.f12980f);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Calculation complete, Calculated memory cache size: ");
            sb.append(m23202f(this.f12972b));
            sb.append(", pool size: ");
            sb.append(m23202f(this.f12971a));
            sb.append(", byte array size: ");
            sb.append(m23202f(i));
            sb.append(", memory class limited? ");
            sb.append(i3 > m23205c);
            sb.append(", max size: ");
            sb.append(m23202f(m23205c));
            sb.append(", memoryClass: ");
            sb.append(c4130a.f12977c.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(m23203e(c4130a.f12977c));
            Log.d("MemorySizeCalculator", sb.toString());
        }
    }

    /* renamed from: c */
    private static int m23205c(ActivityManager activityManager, float f, float f2) {
        float memoryClass = activityManager.getMemoryClass() * 1024 * 1024;
        if (m23203e(activityManager)) {
            f = f2;
        }
        return Math.round(memoryClass * f);
    }

    @TargetApi(19)
    /* renamed from: e */
    static boolean m23203e(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return true;
    }

    /* renamed from: f */
    private String m23202f(int i) {
        return Formatter.formatFileSize(this.f12973c, i);
    }

    /* renamed from: a */
    public int m23207a() {
        return this.f12974d;
    }

    /* renamed from: b */
    public int m23206b() {
        return this.f12971a;
    }

    /* renamed from: d */
    public int m23204d() {
        return this.f12972b;
    }
}
