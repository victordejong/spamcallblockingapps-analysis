package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/x.class */
public final class x {
    private static final ThreadLocal<TypedValue> i = new ThreadLocal<>();

    /* renamed from: a  reason: collision with root package name */
    static final int[] f1144a = {-16842910};

    /* renamed from: b  reason: collision with root package name */
    static final int[] f1145b = {16842908};

    /* renamed from: c  reason: collision with root package name */
    static final int[] f1146c = {16843518};

    /* renamed from: d  reason: collision with root package name */
    static final int[] f1147d = {16842919};
    static final int[] e = {16842912};
    static final int[] f = {16842913};
    static final int[] g = {-16842919, -16842908};
    static final int[] h = new int[0];
    private static final int[] j = new int[1];

    private x() {
    }

    public static int a(Context context, int i2) {
        int[] iArr = j;
        iArr[0] = i2;
        ab a2 = ab.a(context, (AttributeSet) null, iArr);
        try {
            return a2.b(0, 0);
        } finally {
            a2.f1044a.recycle();
        }
    }

    public static void a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(a.j.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(a.j.AppCompatTheme_windowActionBar)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static ColorStateList b(Context context, int i2) {
        int[] iArr = j;
        iArr[0] = i2;
        ab a2 = ab.a(context, (AttributeSet) null, iArr);
        try {
            return a2.e(0);
        } finally {
            a2.f1044a.recycle();
        }
    }

    public static int c(Context context, int i2) {
        ColorStateList b2 = b(context, i2);
        if (b2 != null && b2.isStateful()) {
            return b2.getColorForState(f1144a, b2.getDefaultColor());
        }
        ThreadLocal<TypedValue> threadLocal = i;
        TypedValue typedValue = threadLocal.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
        }
        context.getTheme().resolveAttribute(16842803, typedValue2, true);
        float f2 = typedValue2.getFloat();
        int a2 = a(context, i2);
        return androidx.core.graphics.a.b(a2, Math.round(Color.alpha(a2) * f2));
    }
}
