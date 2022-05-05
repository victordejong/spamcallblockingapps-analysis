package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableImageSourceView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatImageButton.class */
public class AppCompatImageButton extends ImageButton implements TintableBackgroundView, TintableImageSourceView {

    /* renamed from: f */
    private final AppCompatBackgroundHelper f949f;

    /* renamed from: g */
    private final AppCompatImageHelper f950g;

    public AppCompatImageButton(@NonNull Context context) {
        this(context, null);
    }

    public AppCompatImageButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0042R.attr.imageButtonStyle);
    }

    public AppCompatImageButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(TintContextWrapper.m21267b(context), attributeSet, i);
        ThemeUtils.m21274a(this, getContext());
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
        this.f949f = appCompatBackgroundHelper;
        appCompatBackgroundHelper.m21653e(attributeSet, i);
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.f950g = appCompatImageHelper;
        appCompatImageHelper.m21616f(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f949f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21656b();
        }
        AppCompatImageHelper appCompatImageHelper = this.f950g;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m21620b();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f949f;
        return appCompatBackgroundHelper != null ? appCompatBackgroundHelper.m21655c() : null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f949f;
        return appCompatBackgroundHelper != null ? appCompatBackgroundHelper.m21654d() : null;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    @RestrictTo
    public ColorStateList getSupportImageTintList() {
        AppCompatImageHelper appCompatImageHelper = this.f950g;
        return appCompatImageHelper != null ? appCompatImageHelper.m21619c() : null;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportImageTintMode() {
        AppCompatImageHelper appCompatImageHelper = this.f950g;
        return appCompatImageHelper != null ? appCompatImageHelper.m21618d() : null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f950g.m21617e() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f949f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21652f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f949f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21651g(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        AppCompatImageHelper appCompatImageHelper = this.f950g;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m21620b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        super.setImageDrawable(drawable);
        AppCompatImageHelper appCompatImageHelper = this.f950g;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m21620b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        this.f950g.m21615g(i);
    }

    @Override // android.widget.ImageView
    public void setImageURI(@Nullable Uri uri) {
        super.setImageURI(uri);
        AppCompatImageHelper appCompatImageHelper = this.f950g;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m21620b();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f949f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21649i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f949f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21648j(mode);
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @RestrictTo
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        AppCompatImageHelper appCompatImageHelper = this.f950g;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m21614h(colorStateList);
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @RestrictTo
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatImageHelper appCompatImageHelper = this.f950g;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m21613i(mode);
        }
    }
}
