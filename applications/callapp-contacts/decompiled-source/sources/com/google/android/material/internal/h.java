package com.google.android.material.internal;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.core.e.d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Constructor;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/h.class */
final class h {
    private static boolean f;
    private static Constructor<StaticLayout> g;
    private static Object h;

    /* renamed from: d  reason: collision with root package name */
    boolean f30640d;
    private CharSequence i;
    private final TextPaint j;
    private final int k;
    private int m;
    private int l = 0;

    /* renamed from: a  reason: collision with root package name */
    Layout.Alignment f30637a = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: b  reason: collision with root package name */
    int f30638b = Integer.MAX_VALUE;

    /* renamed from: c  reason: collision with root package name */
    boolean f30639c = true;
    TextUtils.TruncateAt e = null;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/h$a.class */
    static final class a extends Exception {
        a(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }

    private h(CharSequence charSequence, TextPaint textPaint, int i) {
        this.i = charSequence;
        this.j = textPaint;
        this.k = i;
        this.m = charSequence.length();
    }

    public static h a(CharSequence charSequence, TextPaint textPaint, int i) {
        return new h(charSequence, textPaint, i);
    }

    public final StaticLayout a() throws a {
        Class<?> cls;
        if (this.i == null) {
            this.i = "";
        }
        int max = Math.max(0, this.k);
        CharSequence charSequence = this.i;
        CharSequence charSequence2 = charSequence;
        if (this.f30638b == 1) {
            charSequence2 = TextUtils.ellipsize(charSequence, this.j, max, this.e);
        }
        this.m = Math.min(charSequence2.length(), this.m);
        if (Build.VERSION.SDK_INT >= 23) {
            if (this.f30640d) {
                this.f30637a = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence2, this.l, this.m, this.j, max);
            obtain.setAlignment(this.f30637a);
            obtain.setIncludePad(this.f30639c);
            obtain.setTextDirection(this.f30640d ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
            TextUtils.TruncateAt truncateAt = this.e;
            if (truncateAt != null) {
                obtain.setEllipsize(truncateAt);
            }
            obtain.setMaxLines(this.f30638b);
            return obtain.build();
        }
        if (!f) {
            try {
                boolean z = this.f30640d && Build.VERSION.SDK_INT >= 23;
                if (Build.VERSION.SDK_INT >= 18) {
                    cls = TextDirectionHeuristic.class;
                    h = z ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
                } else {
                    ClassLoader classLoader = h.class.getClassLoader();
                    String str = this.f30640d ? "RTL" : "LTR";
                    cls = classLoader.loadClass("android.text.TextDirectionHeuristic");
                    Class<?> loadClass = classLoader.loadClass("android.text.TextDirectionHeuristics");
                    h = loadClass.getField(str).get(loadClass);
                }
                Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, Integer.TYPE, Integer.TYPE, TextPaint.class, Integer.TYPE, Layout.Alignment.class, cls, Float.TYPE, Float.TYPE, Boolean.TYPE, TextUtils.TruncateAt.class, Integer.TYPE, Integer.TYPE);
                g = declaredConstructor;
                declaredConstructor.setAccessible(true);
                f = true;
            } catch (Exception e) {
                throw new a(e);
            }
        }
        try {
            return (StaticLayout) ((Constructor) d.a(g)).newInstance(charSequence2, Integer.valueOf(this.l), Integer.valueOf(this.m), this.j, Integer.valueOf(max), this.f30637a, d.a(h), Float.valueOf(1.0f), Float.valueOf((float) BitmapDescriptorFactory.HUE_RED), Boolean.valueOf(this.f30639c), null, Integer.valueOf(max), Integer.valueOf(this.f30638b));
        } catch (Exception e2) {
            throw new a(e2);
        }
    }
}
