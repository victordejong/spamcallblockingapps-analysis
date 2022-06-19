package p304z3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.C0303z0;
import p097g.C2788a;
/* renamed from: z3.c */
/* loaded from: classes-dex2jar.jar:z3/c.class */
public class C5071c {
    /* renamed from: a */
    public static ColorStateList m72a(Context context, TypedArray typedArray, int i) {
        int resourceId;
        ColorStateList m3016a;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m3016a = C2788a.m3016a(context, resourceId)) == null) ? typedArray.getColorStateList(i) : m3016a;
    }

    /* renamed from: b */
    public static ColorStateList m71b(Context context, C0303z0 c0303z0, int i) {
        int resourceId;
        ColorStateList m3016a;
        return (!c0303z0.f1164b.hasValue(i) || (resourceId = c0303z0.f1164b.getResourceId(i, 0)) == 0 || (m3016a = C2788a.m3016a(context, resourceId)) == null) ? c0303z0.m8397c(i) : m3016a;
    }

    /* renamed from: c */
    public static Drawable m70c(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable m3015b;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m3015b = C2788a.m3015b(context, resourceId)) == null) ? typedArray.getDrawable(i) : m3015b;
    }

    /* renamed from: d */
    public static boolean m69d(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    /* renamed from: e */
    public static boolean m68e(Context context) {
        return context.getResources().getConfiguration().fontScale >= 2.0f;
    }
}
