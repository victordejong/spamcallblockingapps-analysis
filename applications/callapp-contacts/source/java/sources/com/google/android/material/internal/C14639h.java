package com.google.android.material.internal;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.core.p036e.C0833d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Constructor;
/* renamed from: com.google.android.material.internal.h */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/h.class */
final class C14639h {

    /* renamed from: f */
    private static boolean f53413f;

    /* renamed from: g */
    private static Constructor<StaticLayout> f53414g;

    /* renamed from: h */
    private static Object f53415h;

    /* renamed from: d */
    boolean f53419d;

    /* renamed from: i */
    private CharSequence f53421i;

    /* renamed from: j */
    private final TextPaint f53422j;

    /* renamed from: k */
    private final int f53423k;

    /* renamed from: m */
    private int f53425m;

    /* renamed from: l */
    private int f53424l = 0;

    /* renamed from: a */
    Layout.Alignment f53416a = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: b */
    int f53417b = Integer.MAX_VALUE;

    /* renamed from: c */
    boolean f53418c = true;

    /* renamed from: e */
    TextUtils.TruncateAt f53420e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.h$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/h$a.class */
    public static final class C14640a extends Exception {
        C14640a(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }

    private C14639h(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f53421i = charSequence;
        this.f53422j = textPaint;
        this.f53423k = i;
        this.f53425m = charSequence.length();
    }

    /* renamed from: a */
    public static C14639h m10521a(CharSequence charSequence, TextPaint textPaint, int i) {
        return new C14639h(charSequence, textPaint, i);
    }

    /* renamed from: a */
    public final StaticLayout m10522a() throws C14640a {
        Class<?> cls;
        if (this.f53421i == null) {
            this.f53421i = "";
        }
        int max = Math.max(0, this.f53423k);
        CharSequence charSequence = this.f53421i;
        CharSequence charSequence2 = charSequence;
        if (this.f53417b == 1) {
            charSequence2 = TextUtils.ellipsize(charSequence, this.f53422j, max, this.f53420e);
        }
        this.f53425m = Math.min(charSequence2.length(), this.f53425m);
        if (Build.VERSION.SDK_INT >= 23) {
            if (this.f53419d) {
                this.f53416a = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence2, this.f53424l, this.f53425m, this.f53422j, max);
            obtain.setAlignment(this.f53416a);
            obtain.setIncludePad(this.f53418c);
            obtain.setTextDirection(this.f53419d ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
            TextUtils.TruncateAt truncateAt = this.f53420e;
            if (truncateAt != null) {
                obtain.setEllipsize(truncateAt);
            }
            obtain.setMaxLines(this.f53417b);
            return obtain.build();
        }
        if (!f53413f) {
            try {
                boolean z = this.f53419d && Build.VERSION.SDK_INT >= 23;
                if (Build.VERSION.SDK_INT >= 18) {
                    f53415h = z ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
                    cls = TextDirectionHeuristic.class;
                } else {
                    ClassLoader classLoader = C14639h.class.getClassLoader();
                    String str = this.f53419d ? "RTL" : "LTR";
                    Class<?> loadClass = classLoader.loadClass("android.text.TextDirectionHeuristic");
                    Class<?> loadClass2 = classLoader.loadClass("android.text.TextDirectionHeuristics");
                    f53415h = loadClass2.getField(str).get(loadClass2);
                    cls = loadClass;
                }
                Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, Integer.TYPE, Integer.TYPE, TextPaint.class, Integer.TYPE, Layout.Alignment.class, cls, Float.TYPE, Float.TYPE, Boolean.TYPE, TextUtils.TruncateAt.class, Integer.TYPE, Integer.TYPE);
                f53414g = declaredConstructor;
                declaredConstructor.setAccessible(true);
                f53413f = true;
            } catch (Exception e) {
                throw new C14640a(e);
            }
        }
        try {
            return (StaticLayout) ((Constructor) C0833d.m44410a(f53414g)).newInstance(charSequence2, Integer.valueOf(this.f53424l), Integer.valueOf(this.f53425m), this.f53422j, Integer.valueOf(max), this.f53416a, C0833d.m44410a(f53415h), Float.valueOf(1.0f), Float.valueOf((float) BitmapDescriptorFactory.HUE_RED), Boolean.valueOf(this.f53418c), null, Integer.valueOf(max), Integer.valueOf(this.f53417b));
        } catch (Exception e2) {
            throw new C14640a(e2);
        }
    }
}
