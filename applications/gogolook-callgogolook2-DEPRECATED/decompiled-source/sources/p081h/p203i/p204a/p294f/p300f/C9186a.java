package p081h.p203i.p204a.p294f.p300f;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
@TargetApi(21)
/* renamed from: h.i.a.f.f.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/f/a.class */
public class C9186a extends RippleDrawable {
    public C9186a(@NonNull ColorStateList colorStateList, @Nullable InsetDrawable insetDrawable, @Nullable Drawable drawable) {
        super(colorStateList, insetDrawable, drawable);
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (getDrawable(0) != null) {
            ((GradientDrawable) ((LayerDrawable) ((InsetDrawable) getDrawable(0)).getDrawable()).getDrawable(0)).setColorFilter(colorFilter);
        }
    }
}
