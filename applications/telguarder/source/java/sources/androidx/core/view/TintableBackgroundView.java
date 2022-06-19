package androidx.core.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
/* loaded from: classes-dex2jar.jar:androidx/core/view/TintableBackgroundView.class */
public interface TintableBackgroundView {
    ColorStateList getSupportBackgroundTintList();

    PorterDuff.Mode getSupportBackgroundTintMode();

    void setSupportBackgroundTintList(ColorStateList colorStateList);

    void setSupportBackgroundTintMode(PorterDuff.Mode mode);
}
