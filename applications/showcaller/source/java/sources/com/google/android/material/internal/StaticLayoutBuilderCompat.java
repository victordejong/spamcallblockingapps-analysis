package com.google.android.material.internal;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import java.lang.reflect.Constructor;
import p020b.p041h.p049k.C1597h;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/StaticLayoutBuilderCompat.class */
final class StaticLayoutBuilderCompat {

    /* renamed from: a */
    private static boolean f36905a;

    /* renamed from: b */
    private static Constructor<StaticLayout> f36906b;

    /* renamed from: c */
    private static Object f36907c;

    /* renamed from: d */
    private CharSequence f36908d;

    /* renamed from: e */
    private final TextPaint f36909e;

    /* renamed from: f */
    private final int f36910f;

    /* renamed from: h */
    private int f36912h;

    /* renamed from: l */
    private boolean f36916l;

    /* renamed from: g */
    private int f36911g = 0;

    /* renamed from: i */
    private Layout.Alignment f36913i = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: j */
    private int f36914j = Integer.MAX_VALUE;

    /* renamed from: k */
    private boolean f36915k = true;

    /* renamed from: m */
    private TextUtils.TruncateAt f36917m = null;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException.class */
    public static class StaticLayoutBuilderCompatException extends Exception {
        StaticLayoutBuilderCompatException(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }

    private StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f36908d = charSequence;
        this.f36909e = textPaint;
        this.f36910f = i;
        this.f36912h = charSequence.length();
    }

    /* renamed from: b */
    private void m4630b() {
        Class<?> cls;
        if (f36905a) {
            return;
        }
        try {
            boolean z = this.f36916l && Build.VERSION.SDK_INT >= 23;
            if (Build.VERSION.SDK_INT >= 18) {
                f36907c = z ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
                cls = TextDirectionHeuristic.class;
            } else {
                ClassLoader classLoader = StaticLayoutBuilderCompat.class.getClassLoader();
                String str = this.f36916l ? "RTL" : "LTR";
                Class<?> loadClass = classLoader.loadClass("android.text.TextDirectionHeuristic");
                Class<?> loadClass2 = classLoader.loadClass("android.text.TextDirectionHeuristics");
                f36907c = loadClass2.getField(str).get(loadClass2);
                cls = loadClass;
            }
            Class cls2 = Integer.TYPE;
            Class cls3 = Float.TYPE;
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls2, cls2, TextPaint.class, cls2, Layout.Alignment.class, cls, cls3, cls3, Boolean.TYPE, TextUtils.TruncateAt.class, cls2, cls2);
            f36906b = declaredConstructor;
            declaredConstructor.setAccessible(true);
            f36905a = true;
        } catch (Exception e) {
            throw new StaticLayoutBuilderCompatException(e);
        }
    }

    /* renamed from: c */
    public static StaticLayoutBuilderCompat m4629c(CharSequence charSequence, TextPaint textPaint, int i) {
        return new StaticLayoutBuilderCompat(charSequence, textPaint, i);
    }

    /* renamed from: a */
    public StaticLayout m4631a() {
        if (this.f36908d == null) {
            this.f36908d = "";
        }
        int max = Math.max(0, this.f36910f);
        CharSequence charSequence = this.f36908d;
        CharSequence charSequence2 = charSequence;
        if (this.f36914j == 1) {
            charSequence2 = TextUtils.ellipsize(charSequence, this.f36909e, max, this.f36917m);
        }
        int min = Math.min(charSequence2.length(), this.f36912h);
        this.f36912h = min;
        if (Build.VERSION.SDK_INT < 23) {
            m4630b();
            try {
                return (StaticLayout) ((Constructor) C1597h.m29659e(f36906b)).newInstance(charSequence2, Integer.valueOf(this.f36911g), Integer.valueOf(this.f36912h), this.f36909e, Integer.valueOf(max), this.f36913i, C1597h.m29659e(f36907c), Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.f36915k), null, Integer.valueOf(max), Integer.valueOf(this.f36914j));
            } catch (Exception e) {
                throw new StaticLayoutBuilderCompatException(e);
            }
        }
        if (this.f36916l) {
            this.f36913i = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence2, this.f36911g, min, this.f36909e, max);
        obtain.setAlignment(this.f36913i);
        obtain.setIncludePad(this.f36915k);
        obtain.setTextDirection(this.f36916l ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f36917m;
        if (truncateAt != null) {
            obtain.setEllipsize(truncateAt);
        }
        obtain.setMaxLines(this.f36914j);
        return obtain.build();
    }

    /* renamed from: d */
    public StaticLayoutBuilderCompat m4628d(Layout.Alignment alignment) {
        this.f36913i = alignment;
        return this;
    }

    /* renamed from: e */
    public StaticLayoutBuilderCompat m4627e(TextUtils.TruncateAt truncateAt) {
        this.f36917m = truncateAt;
        return this;
    }

    /* renamed from: f */
    public StaticLayoutBuilderCompat m4626f(boolean z) {
        this.f36915k = z;
        return this;
    }

    /* renamed from: g */
    public StaticLayoutBuilderCompat m4625g(boolean z) {
        this.f36916l = z;
        return this;
    }

    /* renamed from: h */
    public StaticLayoutBuilderCompat m4624h(int i) {
        this.f36914j = i;
        return this;
    }
}
