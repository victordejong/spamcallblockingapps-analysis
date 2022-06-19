package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.C0142a;
import androidx.core.graphics.C0834a;
/* renamed from: androidx.appcompat.widget.x */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/x.class */
public final class C0425x {

    /* renamed from: i */
    private static final ThreadLocal<TypedValue> f1691i = new ThreadLocal<>();

    /* renamed from: a */
    static final int[] f1683a = {-16842910};

    /* renamed from: b */
    static final int[] f1684b = {16842908};

    /* renamed from: c */
    static final int[] f1685c = {16843518};

    /* renamed from: d */
    static final int[] f1686d = {16842919};

    /* renamed from: e */
    static final int[] f1687e = {16842912};

    /* renamed from: f */
    static final int[] f1688f = {16842913};

    /* renamed from: g */
    static final int[] f1689g = {-16842919, -16842908};

    /* renamed from: h */
    static final int[] f1690h = new int[0];

    /* renamed from: j */
    private static final int[] f1692j = new int[1];

    private C0425x() {
    }

    /* renamed from: a */
    public static int m45573a(Context context, int i) {
        int[] iArr = f1692j;
        iArr[0] = i;
        C0370ab m45805a = C0370ab.m45805a(context, (AttributeSet) null, iArr);
        try {
            return m45805a.m45802b(0, 0);
        } finally {
            m45805a.f1491a.recycle();
        }
    }

    /* renamed from: a */
    public static void m45572a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C0142a.C0152j.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(C0142a.C0152j.AppCompatTheme_windowActionBar)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public static ColorStateList m45571b(Context context, int i) {
        int[] iArr = f1692j;
        iArr[0] = i;
        C0370ab m45805a = C0370ab.m45805a(context, (AttributeSet) null, iArr);
        try {
            return m45805a.m45797e(0);
        } finally {
            m45805a.f1491a.recycle();
        }
    }

    /* renamed from: c */
    public static int m45570c(Context context, int i) {
        ColorStateList m45571b = m45571b(context, i);
        if (m45571b == null || !m45571b.isStateful()) {
            ThreadLocal<TypedValue> threadLocal = f1691i;
            TypedValue typedValue = threadLocal.get();
            TypedValue typedValue2 = typedValue;
            if (typedValue == null) {
                typedValue2 = new TypedValue();
                threadLocal.set(typedValue2);
            }
            context.getTheme().resolveAttribute(16842803, typedValue2, true);
            float f = typedValue2.getFloat();
            int m45573a = m45573a(context, i);
            return C0834a.m44396b(m45573a, Math.round(Color.alpha(m45573a) * f));
        }
        return m45571b.getColorForState(f1683a, m45571b.getDefaultColor());
    }
}
