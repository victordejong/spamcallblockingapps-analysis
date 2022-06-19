package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.C0032R;
import p1727n3.p1807k.p1812c.C26493a;
/* renamed from: n3.b.f.m0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/m0.class */
public class C25529m0 {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f71423a = new ThreadLocal<>();

    /* renamed from: b */
    public static final int[] f71424b = {-16842910};

    /* renamed from: c */
    public static final int[] f71425c = {16842908};

    /* renamed from: d */
    public static final int[] f71426d = {16842919};

    /* renamed from: e */
    public static final int[] f71427e = {16842912};

    /* renamed from: f */
    public static final int[] f71428f = new int[0];

    /* renamed from: g */
    public static final int[] f71429g = new int[1];

    /* renamed from: a */
    public static void m3344a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C0032R.styleable.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(C0032R.styleable.AppCompatTheme_windowActionBar)) {
                String str = "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).";
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public static int m3343b(Context context, int i) {
        ColorStateList m3341d = m3341d(context, i);
        if (m3341d == null || !m3341d.isStateful()) {
            ThreadLocal<TypedValue> threadLocal = f71423a;
            TypedValue typedValue = threadLocal.get();
            TypedValue typedValue2 = typedValue;
            if (typedValue == null) {
                typedValue2 = new TypedValue();
                threadLocal.set(typedValue2);
            }
            context.getTheme().resolveAttribute(16842803, typedValue2, true);
            float f = typedValue2.getFloat();
            int m3342c = m3342c(context, i);
            return C26493a.m1747l(m3342c, Math.round(Color.alpha(m3342c) * f));
        }
        return m3341d.getColorForState(f71424b, m3341d.getDefaultColor());
    }

    /* renamed from: c */
    public static int m3342c(Context context, int i) {
        int[] iArr = f71429g;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x002d, code lost:
        if (r4 != null) goto L11;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList m3341d(android.content.Context r4, int r5) {
        /*
            int[] r0 = p1727n3.p1734b.p1743f.C25529m0.f71429g
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
            boolean r0 = r0.hasValue(r1)     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L37
            r0 = r6
            r1 = 0
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)     // Catch: java.lang.Throwable -> L33
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L37
            java.lang.ThreadLocal<android.util.TypedValue> r0 = p1727n3.p1734b.p1736b.p1737a.C25440a.f71017a     // Catch: java.lang.Throwable -> L33
            r7 = r0
            r0 = r4
            r1 = r5
            android.content.res.ColorStateList r0 = r0.getColorStateList(r1)     // Catch: java.lang.Throwable -> L33
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L37
            goto L3d
        L33:
            r4 = move-exception
            goto L43
        L37:
            r0 = r6
            r1 = 0
            android.content.res.ColorStateList r0 = r0.getColorStateList(r1)     // Catch: java.lang.Throwable -> L33
            r4 = r0
        L3d:
            r0 = r6
            r0.recycle()
            r0 = r4
            return r0
        L43:
            r0 = r6
            r0.recycle()
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1743f.C25529m0.m3341d(android.content.Context, int):android.content.res.ColorStateList");
    }
}
