package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import d.a.j;
import d.h.e.a;
/* renamed from: androidx.appcompat.widget.y */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y.class */
public class C0161y {

    /* renamed from: a */
    private static final ThreadLocal<TypedValue> f720a = new ThreadLocal<>();

    /* renamed from: b */
    static final int[] f721b = {-16842910};

    /* renamed from: c */
    static final int[] f722c = {16842908};

    /* renamed from: d */
    static final int[] f723d = {16842919};

    /* renamed from: e */
    static final int[] f724e = {16842912};

    /* renamed from: f */
    static final int[] f725f = new int[0];

    /* renamed from: g */
    private static final int[] f726g = new int[1];

    /* renamed from: a */
    public static void m14406a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(j.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(j.AppCompatTheme_windowActionBar)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public static int m14405b(Context context, int i) {
        ColorStateList m14402e = m14402e(context, i);
        if (m14402e == null || !m14402e.isStateful()) {
            TypedValue m14401f = m14401f();
            context.getTheme().resolveAttribute(16842803, m14401f, true);
            return m14403d(context, i, m14401f.getFloat());
        }
        return m14402e.getColorForState(f721b, m14402e.getDefaultColor());
    }

    /* renamed from: c */
    public static int m14404c(Context context, int i) {
        int[] iArr = f726g;
        iArr[0] = i;
        C0127d0 m14619u = C0127d0.m14619u(context, null, iArr);
        try {
            return m14619u.m14638b(0, 0);
        } finally {
            m14619u.m14617w();
        }
    }

    /* renamed from: d */
    static int m14403d(Context context, int i, float f) {
        int m14404c = m14404c(context, i);
        return a.d(m14404c, Math.round(Color.alpha(m14404c) * f));
    }

    /* renamed from: e */
    public static ColorStateList m14402e(Context context, int i) {
        int[] iArr = f726g;
        iArr[0] = i;
        C0127d0 m14619u = C0127d0.m14619u(context, null, iArr);
        try {
            return m14619u.m14637c(0);
        } finally {
            m14619u.m14617w();
        }
    }

    /* renamed from: f */
    private static TypedValue m14401f() {
        ThreadLocal<TypedValue> threadLocal = f720a;
        TypedValue typedValue = threadLocal.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
        }
        return typedValue2;
    }
}
