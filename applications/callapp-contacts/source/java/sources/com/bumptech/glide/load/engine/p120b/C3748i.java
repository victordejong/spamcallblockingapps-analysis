package com.bumptech.glide.load.engine.p120b;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.p116g.C3643j;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.bumptech.glide.load.engine.b.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/i.class */
public final class C3748i {

    /* renamed from: a */
    public final int f13937a;

    /* renamed from: b */
    public final int f13938b;

    /* renamed from: c */
    public final int f13939c;

    /* renamed from: d */
    private final Context f13940d;

    /* renamed from: com.bumptech.glide.load.engine.b.i$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/i$a.class */
    public static final class C3749a {

        /* renamed from: a */
        static final int f13941a;

        /* renamed from: b */
        final Context f13942b;

        /* renamed from: c */
        ActivityManager f13943c;

        /* renamed from: d */
        AbstractC3751c f13944d;

        /* renamed from: f */
        float f13946f;

        /* renamed from: e */
        float f13945e = 2.0f;

        /* renamed from: g */
        float f13947g = 0.4f;

        /* renamed from: h */
        float f13948h = 0.33f;

        /* renamed from: i */
        int f13949i = 4194304;

        static {
            f13941a = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public C3749a(Context context) {
            this.f13946f = f13941a;
            this.f13942b = context;
            this.f13943c = (ActivityManager) context.getSystemService("activity");
            this.f13944d = new C3750b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !C3748i.m37426a(this.f13943c)) {
                return;
            }
            this.f13946f = BitmapDescriptorFactory.HUE_RED;
        }

        /* renamed from: a */
        public final C3749a m37425a() {
            C3643j.m37585a(true, "Memory cache screens must be greater than or equal to 0");
            this.f13945e = 4.0f;
            return this;
        }

        /* renamed from: b */
        public final C3748i m37424b() {
            return new C3748i(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.b.i$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/i$b.class */
    public static final class C3750b implements AbstractC3751c {

        /* renamed from: a */
        private final DisplayMetrics f13950a;

        C3750b(DisplayMetrics displayMetrics) {
            this.f13950a = displayMetrics;
        }

        @Override // com.bumptech.glide.load.engine.p120b.C3748i.AbstractC3751c
        /* renamed from: a */
        public final int mo37423a() {
            return this.f13950a.widthPixels;
        }

        @Override // com.bumptech.glide.load.engine.p120b.C3748i.AbstractC3751c
        /* renamed from: b */
        public final int mo37422b() {
            return this.f13950a.heightPixels;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.b.i$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/i$c.class */
    public interface AbstractC3751c {
        /* renamed from: a */
        int mo37423a();

        /* renamed from: b */
        int mo37422b();
    }

    C3748i(C3749a c3749a) {
        ActivityManager activityManager;
        this.f13940d = c3749a.f13942b;
        int i = m37426a(c3749a.f13943c) ? c3749a.f13949i / 2 : c3749a.f13949i;
        this.f13939c = i;
        int round = Math.round(activityManager.getMemoryClass() * 1024 * 1024 * (m37426a(c3749a.f13943c) ? c3749a.f13948h : c3749a.f13947g));
        float mo37423a = c3749a.f13944d.mo37423a() * c3749a.f13944d.mo37422b() * 4;
        int round2 = Math.round(c3749a.f13946f * mo37423a);
        int round3 = Math.round(mo37423a * c3749a.f13945e);
        int i2 = round - i;
        int i3 = round3 + round2;
        if (i3 <= i2) {
            this.f13938b = round3;
            this.f13937a = round2;
        } else {
            float f = i2 / (c3749a.f13946f + c3749a.f13945e);
            this.f13938b = Math.round(c3749a.f13945e * f);
            this.f13937a = Math.round(f * c3749a.f13946f);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder("Calculation complete, Calculated memory cache size: ");
            sb.append(m37427a(this.f13938b));
            sb.append(", pool size: ");
            sb.append(m37427a(this.f13937a));
            sb.append(", byte array size: ");
            sb.append(m37427a(i));
            sb.append(", memory class limited? ");
            sb.append(i3 > round);
            sb.append(", max size: ");
            sb.append(m37427a(round));
            sb.append(", memoryClass: ");
            sb.append(c3749a.f13943c.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(m37426a(c3749a.f13943c));
        }
    }

    /* renamed from: a */
    private String m37427a(int i) {
        return Formatter.formatFileSize(this.f13940d, i);
    }

    /* renamed from: a */
    static boolean m37426a(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return true;
    }
}
