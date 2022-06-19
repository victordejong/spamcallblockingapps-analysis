package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import me.zhanghai.android.materialprogressbar.C3681R;
import p087f0.C2694a;
import p117h8.C3035k;
/* renamed from: androidx.appcompat.widget.u0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/u0.class */
public class C0283u0 {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f1114a = new ThreadLocal<>();

    /* renamed from: b */
    public static final int[] f1115b = {-16842910};

    /* renamed from: c */
    public static final int[] f1116c = {16842908};

    /* renamed from: d */
    public static final int[] f1117d = {16842919};

    /* renamed from: e */
    public static final int[] f1118e = {16842912};

    /* renamed from: f */
    public static final int[] f1119f = new int[0];

    /* renamed from: g */
    public static final int[] f1120g = new int[1];

    /* renamed from: a */
    public static void m8427a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C3035k.f10223j);
        try {
            if (!obtainStyledAttributes.hasValue(C3681R.styleable.AppCompatTheme_windowActionBar)) {
                view.getClass().toString();
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public static int m8426b(Context context, int i) {
        ColorStateList m8424d = m8424d(context, i);
        if (m8424d == null || !m8424d.isStateful()) {
            ThreadLocal<TypedValue> threadLocal = f1114a;
            TypedValue typedValue = threadLocal.get();
            TypedValue typedValue2 = typedValue;
            if (typedValue == null) {
                typedValue2 = new TypedValue();
                threadLocal.set(typedValue2);
            }
            context.getTheme().resolveAttribute(16842803, typedValue2, true);
            float f = typedValue2.getFloat();
            int m8425c = m8425c(context, i);
            return C2694a.m3254e(m8425c, Math.round(Color.alpha(m8425c) * f));
        }
        return m8424d.getColorForState(f1115b, m8424d.getDefaultColor());
    }

    /* renamed from: c */
    public static int m8425c(Context context, int i) {
        int[] iArr = f1120g;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0029, code lost:
        if (r4 != null) goto L11;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList m8424d(android.content.Context r4, int r5) {
        /*
            int[] r0 = androidx.appcompat.widget.C0283u0.f1120g
            r6 = r0
            r0 = r6
            r1 = 0
            r2 = r5
            r0[r1] = r2
            r0 = r4
            r1 = 0
            r2 = r6
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2)
            r6 = r0
            r0 = r6
            r1 = 0
            boolean r0 = r0.hasValue(r1)     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L33
            r0 = r6
            r1 = 0
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)     // Catch: java.lang.Throwable -> L2f
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L33
            r0 = r4
            r1 = r5
            android.content.res.ColorStateList r0 = p097g.C2788a.m3016a(r0, r1)     // Catch: java.lang.Throwable -> L2f
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L33
            goto L39
        L2f:
            r4 = move-exception
            goto L3f
        L33:
            r0 = r6
            r1 = 0
            android.content.res.ColorStateList r0 = r0.getColorStateList(r1)     // Catch: java.lang.Throwable -> L2f
            r4 = r0
        L39:
            r0 = r6
            r0.recycle()
            r0 = r4
            return r0
        L3f:
            r0 = r6
            r0.recycle()
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0283u0.m8424d(android.content.Context, int):android.content.res.ColorStateList");
    }
}
