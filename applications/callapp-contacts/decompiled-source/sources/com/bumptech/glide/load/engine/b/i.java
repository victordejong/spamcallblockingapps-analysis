package com.bumptech.glide.load.engine.b;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.g.j;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final int f7491a;

    /* renamed from: b  reason: collision with root package name */
    public final int f7492b;

    /* renamed from: c  reason: collision with root package name */
    public final int f7493c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f7494d;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/i$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final int f7495a;

        /* renamed from: b  reason: collision with root package name */
        final Context f7496b;

        /* renamed from: c  reason: collision with root package name */
        ActivityManager f7497c;

        /* renamed from: d  reason: collision with root package name */
        c f7498d;
        float f;
        float e = 2.0f;
        float g = 0.4f;
        float h = 0.33f;
        int i = 4194304;

        static {
            f7495a = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public a(Context context) {
            this.f = f7495a;
            this.f7496b = context;
            this.f7497c = (ActivityManager) context.getSystemService("activity");
            this.f7498d = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT >= 26 && i.a(this.f7497c)) {
                this.f = BitmapDescriptorFactory.HUE_RED;
            }
        }

        public final a a() {
            j.a(true, "Memory cache screens must be greater than or equal to 0");
            this.e = 4.0f;
            return this;
        }

        public final i b() {
            return new i(this);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/i$b.class */
    static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final DisplayMetrics f7499a;

        b(DisplayMetrics displayMetrics) {
            this.f7499a = displayMetrics;
        }

        @Override // com.bumptech.glide.load.engine.b.i.c
        public final int a() {
            return this.f7499a.widthPixels;
        }

        @Override // com.bumptech.glide.load.engine.b.i.c
        public final int b() {
            return this.f7499a.heightPixels;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/i$c.class */
    interface c {
        int a();

        int b();
    }

    i(a aVar) {
        this.f7494d = aVar.f7496b;
        int i = a(aVar.f7497c) ? aVar.i / 2 : aVar.i;
        this.f7493c = i;
        ActivityManager activityManager = aVar.f7497c;
        float f = aVar.g;
        f = aVar.h;
        int memoryClass = activityManager.getMemoryClass();
        boolean a2 = a(activityManager);
        float f2 = memoryClass * 1024 * 1024;
        if (a2) {
        }
        int round = Math.round(f2 * f);
        float a3 = aVar.f7498d.a() * aVar.f7498d.b() * 4;
        int round2 = Math.round(aVar.f * a3);
        int round3 = Math.round(a3 * aVar.e);
        int i2 = round - i;
        int i3 = round3 + round2;
        if (i3 <= i2) {
            this.f7492b = round3;
            this.f7491a = round2;
        } else {
            float f3 = i2 / (aVar.f + aVar.e);
            this.f7492b = Math.round(aVar.e * f3);
            this.f7491a = Math.round(f3 * aVar.f);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder("Calculation complete, Calculated memory cache size: ");
            sb.append(a(this.f7492b));
            sb.append(", pool size: ");
            sb.append(a(this.f7491a));
            sb.append(", byte array size: ");
            sb.append(a(i));
            sb.append(", memory class limited? ");
            sb.append(i3 > round);
            sb.append(", max size: ");
            sb.append(a(round));
            sb.append(", memoryClass: ");
            sb.append(aVar.f7497c.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(a(aVar.f7497c));
        }
    }

    private String a(int i) {
        return Formatter.formatFileSize(this.f7494d, i);
    }

    static boolean a(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return true;
    }
}
