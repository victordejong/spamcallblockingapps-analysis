package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.core.graphics.ColorUtils;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ThemeUtils.class */
public class ThemeUtils {

    /* renamed from: a */
    private static final ThreadLocal<TypedValue> f1340a = new ThreadLocal<>();

    /* renamed from: b */
    static final int[] f1341b = {-16842910};

    /* renamed from: c */
    static final int[] f1342c = {16842908};

    /* renamed from: d */
    static final int[] f1343d = {16842919};

    /* renamed from: e */
    static final int[] f1344e = {16842912};

    /* renamed from: f */
    static final int[] f1345f = new int[0];

    /* renamed from: g */
    private static final int[] f1346g = new int[1];

    private ThemeUtils() {
    }

    /* renamed from: a */
    public static void m21274a(@NonNull View view, @NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C0042R.styleable.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(C0042R.styleable.AppCompatTheme_windowActionBar)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public static int m21273b(@NonNull Context context, int i) {
        ColorStateList e = m21270e(context, i);
        if (e != null && e.isStateful()) {
            return e.getColorForState(f1341b, e.getDefaultColor());
        }
        TypedValue f = m21269f();
        context.getTheme().resolveAttribute(16842803, f, true);
        return m21271d(context, i, f.getFloat());
    }

    /* renamed from: c */
    public static int m21272c(@NonNull Context context, int i) {
        int[] iArr = f1346g;
        iArr[0] = i;
        TintTypedArray u = TintTypedArray.m21245u(context, null, iArr);
        try {
            return u.m21264b(0, 0);
        } finally {
            u.m21243w();
        }
    }

    /* renamed from: d */
    static int m21271d(@NonNull Context context, int i, float f) {
        int c = m21272c(context, i);
        return ColorUtils.m19584d(c, Math.round(Color.alpha(c) * f));
    }

    @Nullable
    /* renamed from: e */
    public static ColorStateList m21270e(@NonNull Context context, int i) {
        int[] iArr = f1346g;
        iArr[0] = i;
        TintTypedArray u = TintTypedArray.m21245u(context, null, iArr);
        try {
            return u.m21263c(0);
        } finally {
            u.m21243w();
        }
    }

    /* renamed from: f */
    private static TypedValue m21269f() {
        TypedValue typedValue = f1340a.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            f1340a.set(typedValue2);
        }
        return typedValue2;
    }
}
