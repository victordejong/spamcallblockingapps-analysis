package com.bumptech.glide.load.engine.p091b;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
/* renamed from: com.bumptech.glide.load.engine.b.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/i.class */
public final class C1712i {

    /* renamed from: a */
    private final int f5184a;

    /* renamed from: b */
    private final int f5185b;

    /* renamed from: c */
    private final Context f5186c;

    /* renamed from: d */
    private final int f5187d;

    /* renamed from: com.bumptech.glide.load.engine.b.i$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/i$a.class */
    public static final class C1713a {

        /* renamed from: a */
        static final int f5188a;

        /* renamed from: b */
        final Context f5189b;

        /* renamed from: c */
        ActivityManager f5190c;

        /* renamed from: d */
        AbstractC1715c f5191d;

        /* renamed from: f */
        float f5193f;

        /* renamed from: e */
        float f5192e = 2.0f;

        /* renamed from: g */
        float f5194g = 0.4f;

        /* renamed from: h */
        float f5195h = 0.33f;

        /* renamed from: i */
        int f5196i = 4194304;

        static {
            f5188a = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public C1713a(Context context) {
            this.f5193f = f5188a;
            this.f5189b = context;
            this.f5190c = (ActivityManager) context.getSystemService("activity");
            this.f5191d = new C1714b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !C1712i.m16488a(this.f5190c)) {
                return;
            }
            this.f5193f = 0.0f;
        }

        /* renamed from: a */
        public C1712i m16484a() {
            return new C1712i(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.b.i$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/i$b.class */
    public static final class C1714b implements AbstractC1715c {

        /* renamed from: a */
        private final DisplayMetrics f5197a;

        C1714b(DisplayMetrics displayMetrics) {
            this.f5197a = displayMetrics;
        }

        @Override // com.bumptech.glide.load.engine.p091b.C1712i.AbstractC1715c
        /* renamed from: a */
        public int mo16483a() {
            return this.f5197a.widthPixels;
        }

        @Override // com.bumptech.glide.load.engine.p091b.C1712i.AbstractC1715c
        /* renamed from: b */
        public int mo16482b() {
            return this.f5197a.heightPixels;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.b.i$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/i$c.class */
    public interface AbstractC1715c {
        /* renamed from: a */
        int mo16483a();

        /* renamed from: b */
        int mo16482b();
    }

    C1712i(C1713a c1713a) {
        this.f5186c = c1713a.f5189b;
        this.f5187d = m16488a(c1713a.f5190c) ? c1713a.f5196i / 2 : c1713a.f5196i;
        int m16487a = m16487a(c1713a.f5190c, c1713a.f5194g, c1713a.f5195h);
        int mo16483a = c1713a.f5191d.mo16483a() * c1713a.f5191d.mo16482b() * 4;
        int round = Math.round(mo16483a * c1713a.f5193f);
        int round2 = Math.round(mo16483a * c1713a.f5192e);
        int i = m16487a - this.f5187d;
        if (round2 + round <= i) {
            this.f5185b = round2;
            this.f5184a = round;
        } else {
            float f = i / (c1713a.f5193f + c1713a.f5192e);
            this.f5185b = Math.round(c1713a.f5192e * f);
            this.f5184a = Math.round(f * c1713a.f5193f);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            Log.d("MemorySizeCalculator", "Calculation complete, Calculated memory cache size: " + m16489a(this.f5185b) + ", pool size: " + m16489a(this.f5184a) + ", byte array size: " + m16489a(this.f5187d) + ", memory class limited? " + (round2 + round > m16487a) + ", max size: " + m16489a(m16487a) + ", memoryClass: " + c1713a.f5190c.getMemoryClass() + ", isLowMemoryDevice: " + m16488a(c1713a.f5190c));
        }
    }

    /* renamed from: a */
    private static int m16487a(ActivityManager activityManager, float f, float f2) {
        float memoryClass = activityManager.getMemoryClass() * 1024 * 1024;
        if (m16488a(activityManager)) {
            f = f2;
        }
        return Math.round(memoryClass * f);
    }

    /* renamed from: a */
    private String m16489a(int i) {
        return Formatter.formatFileSize(this.f5186c, i);
    }

    @TargetApi(19)
    /* renamed from: a */
    static boolean m16488a(ActivityManager activityManager) {
        return Build.VERSION.SDK_INT >= 19 ? activityManager.isLowRamDevice() : true;
    }

    /* renamed from: a */
    public int m16490a() {
        return this.f5185b;
    }

    /* renamed from: b */
    public int m16486b() {
        return this.f5184a;
    }

    /* renamed from: c */
    public int m16485c() {
        return this.f5187d;
    }
}
