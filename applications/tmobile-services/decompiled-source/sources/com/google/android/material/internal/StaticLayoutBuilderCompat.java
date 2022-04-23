package com.google.android.material.internal;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.Constructor;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/StaticLayoutBuilderCompat.class */
final class StaticLayoutBuilderCompat {

    /* renamed from: k */
    private static boolean f10922k;
    @Nullable

    /* renamed from: l */
    private static Constructor<StaticLayout> f10923l;
    @Nullable

    /* renamed from: m */
    private static Object f10924m;

    /* renamed from: a */
    private CharSequence f10925a;

    /* renamed from: b */
    private final TextPaint f10926b;

    /* renamed from: c */
    private final int f10927c;

    /* renamed from: e */
    private int f10929e;

    /* renamed from: i */
    private boolean f10933i;

    /* renamed from: d */
    private int f10928d = 0;

    /* renamed from: f */
    private Layout.Alignment f10930f = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: g */
    private int f10931g = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: h */
    private boolean f10932h = true;
    @Nullable

    /* renamed from: j */
    private TextUtils.TruncateAt f10934j = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException.class */
    public static class StaticLayoutBuilderCompatException extends Exception {
        StaticLayoutBuilderCompatException(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }

    private StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f10925a = charSequence;
        this.f10926b = textPaint;
        this.f10927c = i;
        this.f10929e = charSequence.length();
    }

    /* renamed from: b */
    private void m9470b() throws StaticLayoutBuilderCompatException {
        Class<?> cls;
        if (!f10922k) {
            try {
                boolean z = this.f10933i && Build.VERSION.SDK_INT >= 23;
                if (Build.VERSION.SDK_INT >= 18) {
                    cls = TextDirectionHeuristic.class;
                    f10924m = z ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
                } else {
                    ClassLoader classLoader = StaticLayoutBuilderCompat.class.getClassLoader();
                    String str = this.f10933i ? "RTL" : "LTR";
                    cls = classLoader.loadClass("android.text.TextDirectionHeuristic");
                    Class<?> loadClass = classLoader.loadClass("android.text.TextDirectionHeuristics");
                    f10924m = loadClass.getField(str).get(loadClass);
                }
                Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, Integer.TYPE, Integer.TYPE, TextPaint.class, Integer.TYPE, Layout.Alignment.class, cls, Float.TYPE, Float.TYPE, Boolean.TYPE, TextUtils.TruncateAt.class, Integer.TYPE, Integer.TYPE);
                f10923l = declaredConstructor;
                declaredConstructor.setAccessible(true);
                f10922k = true;
            } catch (Exception e) {
                throw new StaticLayoutBuilderCompatException(e);
            }
        }
    }

    @NonNull
    /* renamed from: c */
    public static StaticLayoutBuilderCompat m9469c(@NonNull CharSequence charSequence, @NonNull TextPaint textPaint, @IntRange(from = 0) int i) {
        return new StaticLayoutBuilderCompat(charSequence, textPaint, i);
    }

    /* renamed from: a */
    public StaticLayout m9471a() throws StaticLayoutBuilderCompatException {
        if (this.f10925a == null) {
            this.f10925a = "";
        }
        int max = Math.max(0, this.f10927c);
        CharSequence charSequence = this.f10925a;
        CharSequence charSequence2 = charSequence;
        if (this.f10931g == 1) {
            charSequence2 = TextUtils.ellipsize(charSequence, this.f10926b, max, this.f10934j);
        }
        this.f10929e = Math.min(charSequence2.length(), this.f10929e);
        if (Build.VERSION.SDK_INT >= 23) {
            if (this.f10933i) {
                this.f10930f = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence2, this.f10928d, this.f10929e, this.f10926b, max);
            obtain.setAlignment(this.f10930f);
            obtain.setIncludePad(this.f10932h);
            obtain.setTextDirection(this.f10933i ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
            TextUtils.TruncateAt truncateAt = this.f10934j;
            if (truncateAt != null) {
                obtain.setEllipsize(truncateAt);
            }
            obtain.setMaxLines(this.f10931g);
            return obtain.build();
        }
        m9470b();
        try {
            Constructor<StaticLayout> constructor = f10923l;
            Preconditions.m19337d(constructor);
            Constructor<StaticLayout> constructor2 = constructor;
            int i = this.f10928d;
            int i2 = this.f10929e;
            TextPaint textPaint = this.f10926b;
            Layout.Alignment alignment = this.f10930f;
            Object obj = f10924m;
            Preconditions.m19337d(obj);
            return constructor2.newInstance(charSequence2, Integer.valueOf(i), Integer.valueOf(i2), textPaint, Integer.valueOf(max), alignment, obj, Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.f10932h), null, Integer.valueOf(max), Integer.valueOf(this.f10931g));
        } catch (Exception e) {
            throw new StaticLayoutBuilderCompatException(e);
        }
    }

    @NonNull
    /* renamed from: d */
    public StaticLayoutBuilderCompat m9468d(@NonNull Layout.Alignment alignment) {
        this.f10930f = alignment;
        return this;
    }

    @NonNull
    /* renamed from: e */
    public StaticLayoutBuilderCompat m9467e(@Nullable TextUtils.TruncateAt truncateAt) {
        this.f10934j = truncateAt;
        return this;
    }

    @NonNull
    /* renamed from: f */
    public StaticLayoutBuilderCompat m9466f(boolean z) {
        this.f10932h = z;
        return this;
    }

    /* renamed from: g */
    public StaticLayoutBuilderCompat m9465g(boolean z) {
        this.f10933i = z;
        return this;
    }

    @NonNull
    /* renamed from: h */
    public StaticLayoutBuilderCompat m9464h(@IntRange(from = 0) int i) {
        this.f10931g = i;
        return this;
    }
}
