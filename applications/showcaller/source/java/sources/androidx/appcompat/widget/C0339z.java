package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import p020b.p021a.C1432j;
import p020b.p041h.p042e.C1522a;
/* renamed from: androidx.appcompat.widget.z */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/z.class */
public class C0339z {

    /* renamed from: a */
    private static final ThreadLocal<TypedValue> f1430a = new ThreadLocal<>();

    /* renamed from: b */
    static final int[] f1431b = {-16842910};

    /* renamed from: c */
    static final int[] f1432c = {16842908};

    /* renamed from: d */
    static final int[] f1433d = {16843518};

    /* renamed from: e */
    static final int[] f1434e = {16842919};

    /* renamed from: f */
    static final int[] f1435f = {16842912};

    /* renamed from: g */
    static final int[] f1436g = {16842913};

    /* renamed from: h */
    static final int[] f1437h = {-16842919, -16842908};

    /* renamed from: i */
    static final int[] f1438i = new int[0];

    /* renamed from: j */
    private static final int[] f1439j = new int[1];

    /* renamed from: a */
    public static void m34687a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C1432j.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(C1432j.AppCompatTheme_windowActionBar)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public static int m34686b(Context context, int i) {
        ColorStateList m34683e = m34683e(context, i);
        if (m34683e == null || !m34683e.isStateful()) {
            TypedValue m34682f = m34682f();
            context.getTheme().resolveAttribute(16842803, m34682f, true);
            return m34684d(context, i, m34682f.getFloat());
        }
        return m34683e.getColorForState(f1431b, m34683e.getDefaultColor());
    }

    /* renamed from: c */
    public static int m34685c(Context context, int i) {
        int[] iArr = f1439j;
        iArr[0] = i;
        C0286e0 m34947u = C0286e0.m34947u(context, null, iArr);
        try {
            return m34947u.m34966b(0, 0);
        } finally {
            m34947u.m34945w();
        }
    }

    /* renamed from: d */
    static int m34684d(Context context, int i, float f) {
        int m34685c = m34685c(context, i);
        return C1522a.m29848d(m34685c, Math.round(Color.alpha(m34685c) * f));
    }

    /* renamed from: e */
    public static ColorStateList m34683e(Context context, int i) {
        int[] iArr = f1439j;
        iArr[0] = i;
        C0286e0 m34947u = C0286e0.m34947u(context, null, iArr);
        try {
            return m34947u.m34965c(0);
        } finally {
            m34947u.m34945w();
        }
    }

    /* renamed from: f */
    private static TypedValue m34682f() {
        ThreadLocal<TypedValue> threadLocal = f1430a;
        TypedValue typedValue = threadLocal.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
        }
        return typedValue2;
    }
}
