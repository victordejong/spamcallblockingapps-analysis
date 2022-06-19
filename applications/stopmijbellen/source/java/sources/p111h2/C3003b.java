package p111h2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import p078e2.EnumC2526d;
/* renamed from: h2.b */
/* loaded from: classes-dex2jar.jar:h2/b.class */
public class C3003b {
    /* renamed from: a */
    public static int m2767a(int i, float f) {
        return Color.argb(Math.round(Color.alpha(i) * f), Color.red(i), Color.green(i), Color.blue(i));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [int[], int[][]] */
    /* renamed from: b */
    public static ColorStateList m2766b(Context context, int i) {
        int m2760h = m2760h(context, 16842806, 0);
        int i2 = i;
        if (i == 0) {
            i2 = m2760h;
        }
        return new ColorStateList(new int[]{new int[]{-16842910}, new int[0]}, new int[]{m2767a(i2, 0.4f), i2});
    }

    /* renamed from: c */
    public static int m2765c(Context context) {
        return m2767a(m2764d(m2760h(context, 16842806, 0)) ? -16777216 : -1, 0.3f);
    }

    /* renamed from: d */
    public static boolean m2764d(int i) {
        return 1.0d - (((((double) Color.blue(i)) * 0.114d) + ((((double) Color.green(i)) * 0.587d) + (((double) Color.red(i)) * 0.299d))) / 255.0d) >= 0.5d;
    }

    /* renamed from: e */
    public static ColorStateList m2763e(Context context, int i, ColorStateList colorStateList) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            TypedValue peekValue = obtainStyledAttributes.peekValue(0);
            if (peekValue == null) {
                return colorStateList;
            }
            int i2 = peekValue.type;
            if (i2 >= 28 && i2 <= 31) {
                return m2766b(context, peekValue.data);
            }
            ColorStateList colorStateList2 = obtainStyledAttributes.getColorStateList(0);
            return colorStateList2 != null ? colorStateList2 : colorStateList;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: f */
    public static boolean m2762f(Context context, int i, boolean z) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            return obtainStyledAttributes.getBoolean(0, z);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: g */
    public static int m2761g(Context context, int i) {
        return m2760h(context, i, 0);
    }

    /* renamed from: h */
    public static int m2760h(Context context, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            return obtainStyledAttributes.getColor(0, i2);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: i */
    public static Drawable m2759i(Context context, int i) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            return obtainStyledAttributes.getDrawable(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: j */
    public static EnumC2526d m2758j(Context context, int i, EnumC2526d enumC2526d) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            int ordinal = enumC2526d.ordinal();
            int i2 = obtainStyledAttributes.getInt(0, ordinal != 1 ? ordinal != 2 ? 0 : 2 : 1);
            return i2 != 1 ? i2 != 2 ? EnumC2526d.START : EnumC2526d.END : EnumC2526d.CENTER;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
