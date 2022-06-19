package p078c.p084c.p085a.p096b.p105u;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import androidx.appcompat.widget.C0286e0;
import p020b.p021a.p022k.p023a.C1433a;
/* renamed from: c.c.a.b.u.c */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/u/c.class */
public class C1919c {
    /* renamed from: a */
    public static ColorStateList m28686a(Context context, TypedArray typedArray, int i) {
        int color;
        int resourceId;
        ColorStateList m30127c;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m30127c = C1433a.m30127c(context, resourceId)) == null) ? (Build.VERSION.SDK_INT > 15 || (color = typedArray.getColor(i, -1)) == -1) ? typedArray.getColorStateList(i) : ColorStateList.valueOf(color) : m30127c;
    }

    /* renamed from: b */
    public static ColorStateList m28685b(Context context, C0286e0 c0286e0, int i) {
        int m34966b;
        int m34954n;
        ColorStateList m30127c;
        return (!c0286e0.m34949s(i) || (m34954n = c0286e0.m34954n(i, 0)) == 0 || (m30127c = C1433a.m30127c(context, m34954n)) == null) ? (Build.VERSION.SDK_INT > 15 || (m34966b = c0286e0.m34966b(i, -1)) == -1) ? c0286e0.m34965c(i) : ColorStateList.valueOf(m34966b) : m30127c;
    }

    /* renamed from: c */
    public static int m28684c(Context context, TypedArray typedArray, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, i2);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    /* renamed from: d */
    public static Drawable m28683d(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable m30126d;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m30126d = C1433a.m30126d(context, resourceId)) == null) ? typedArray.getDrawable(i) : m30126d;
    }

    /* renamed from: e */
    public static int m28682e(TypedArray typedArray, int i, int i2) {
        return typedArray.hasValue(i) ? i : i2;
    }

    /* renamed from: f */
    public static C1920d m28681f(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return new C1920d(context, resourceId);
    }

    /* renamed from: g */
    public static boolean m28680g(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    /* renamed from: h */
    public static boolean m28679h(Context context) {
        return context.getResources().getConfiguration().fontScale >= 2.0f;
    }
}
