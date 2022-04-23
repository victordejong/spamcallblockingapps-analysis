package p012b.p016b.p026q;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import p012b.p016b.C0583j;
import p012b.p042i.p046j.C0891b;
/* renamed from: b.b.q.a0 */
/* loaded from: classes-dex2jar.jar:b/b/q/a0.class */
public class C0675a0 {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f3353a = new ThreadLocal<>();

    /* renamed from: b */
    public static final int[] f3354b = {-16842910};

    /* renamed from: c */
    public static final int[] f3355c = {16842908};

    /* renamed from: d */
    public static final int[] f3356d = {16842919};

    /* renamed from: e */
    public static final int[] f3357e = {16842912};

    /* renamed from: f */
    public static final int[] f3358f = new int[0];

    /* renamed from: g */
    public static final int[] f3359g = new int[1];

    /* renamed from: a */
    public static int m36483a(Context context, int i) {
        ColorStateList c = m36479c(context, i);
        if (c != null && c.isStateful()) {
            return c.getColorForState(f3354b, c.getDefaultColor());
        }
        TypedValue a = m36484a();
        context.getTheme().resolveAttribute(16842803, a, true);
        return m36482a(context, i, a.getFloat());
    }

    /* renamed from: a */
    public static int m36482a(Context context, int i, float f) {
        int b = m36480b(context, i);
        return C0891b.m35601d(b, Math.round(Color.alpha(b) * f));
    }

    /* renamed from: a */
    public static TypedValue m36484a() {
        TypedValue typedValue = f3353a.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            f3353a.set(typedValue2);
        }
        return typedValue2;
    }

    /* renamed from: a */
    public static void m36481a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C0583j.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(C0583j.AppCompatTheme_windowActionBar)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public static int m36480b(Context context, int i) {
        int[] iArr = f3359g;
        iArr[0] = i;
        C0691f0 a = C0691f0.m36415a(context, (AttributeSet) null, iArr);
        try {
            return a.m36419a(0, 0);
        } finally {
            a.m36413b();
        }
    }

    /* renamed from: c */
    public static ColorStateList m36479c(Context context, int i) {
        int[] iArr = f3359g;
        iArr[0] = i;
        C0691f0 a = C0691f0.m36415a(context, (AttributeSet) null, iArr);
        try {
            return a.m36421a(0);
        } finally {
            a.m36413b();
        }
    }
}
