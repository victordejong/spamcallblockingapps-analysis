package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/TintableImageSourceView.class */
public interface TintableImageSourceView {
    ColorStateList getSupportImageTintList();

    PorterDuff.Mode getSupportImageTintMode();

    void setSupportImageTintList(ColorStateList colorStateList);

    void setSupportImageTintMode(PorterDuff.Mode mode);
}
