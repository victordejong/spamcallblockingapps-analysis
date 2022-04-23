package p081h.p203i.p204a.p294f.p310p;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.p.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/p/a.class */
public class C9248a {
    @StyleableRes
    /* renamed from: a */
    public static int m15627a(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2) {
        return typedArray.hasValue(i) ? i : i2;
    }

    @Nullable
    /* renamed from: a */
    public static ColorStateList m15628a(Context context, TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        ColorStateList colorStateList;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(context, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateList;
    }

    @Nullable
    /* renamed from: b */
    public static Drawable m15626b(Context context, TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        Drawable drawable;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (drawable = AppCompatResources.getDrawable(context, resourceId)) == null) ? typedArray.getDrawable(i) : drawable;
    }

    @Nullable
    /* renamed from: c */
    public static C9249b m15625c(Context context, TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return new C9249b(context, resourceId);
    }
}
