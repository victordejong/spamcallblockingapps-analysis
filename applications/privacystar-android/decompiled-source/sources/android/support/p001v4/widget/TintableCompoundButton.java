package android.support.p001v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.support.annotation.Nullable;
/* renamed from: android.support.v4.widget.TintableCompoundButton */
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/TintableCompoundButton.class */
public interface TintableCompoundButton {
    @Nullable
    ColorStateList getSupportButtonTintList();

    @Nullable
    PorterDuff.Mode getSupportButtonTintMode();

    void setSupportButtonTintList(@Nullable ColorStateList colorStateList);

    void setSupportButtonTintMode(@Nullable PorterDuff.Mode mode);
}
