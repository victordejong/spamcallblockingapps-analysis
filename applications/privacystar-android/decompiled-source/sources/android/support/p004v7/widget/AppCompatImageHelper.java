package android.support.p004v7.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.p001v4.widget.ImageViewCompat;
import android.support.p004v7.appcompat.C0479R;
import android.support.p004v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.widget.ImageView;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.AppCompatImageHelper */
/* loaded from: classes-dex2jar.jar:android/support/v7/widget/AppCompatImageHelper.class */
public class AppCompatImageHelper {
    private TintInfo mImageTint;
    private TintInfo mInternalImageTint;
    private TintInfo mTmpInfo;
    private final ImageView mView;

    public AppCompatImageHelper(ImageView imageView) {
        this.mView = imageView;
    }

    private boolean applyFrameworkTintUsingColorFilter(@NonNull Drawable drawable) {
        if (this.mTmpInfo == null) {
            this.mTmpInfo = new TintInfo();
        }
        TintInfo tintInfo = this.mTmpInfo;
        tintInfo.clear();
        ColorStateList imageTintList = ImageViewCompat.getImageTintList(this.mView);
        if (imageTintList != null) {
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = imageTintList;
        }
        PorterDuff.Mode imageTintMode = ImageViewCompat.getImageTintMode(this.mView);
        if (imageTintMode != null) {
            tintInfo.mHasTintMode = true;
            tintInfo.mTintMode = imageTintMode;
        }
        if (!tintInfo.mHasTintList && !tintInfo.mHasTintMode) {
            return false;
        }
        AppCompatDrawableManager.tintDrawable(drawable, tintInfo, this.mView.getDrawableState());
        return true;
    }

    private boolean shouldApplyFrameworkTintUsingColorFilter() {
        int i = Build.VERSION.SDK_INT;
        boolean z = false;
        if (i <= 21) {
            return i == 21;
        }
        if (this.mInternalImageTint != null) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void applySupportImageTint() {
        Drawable drawable = this.mView.getDrawable();
        if (drawable != null) {
            DrawableUtils.fixDrawable(drawable);
        }
        if (drawable == null) {
            return;
        }
        if (shouldApplyFrameworkTintUsingColorFilter() && applyFrameworkTintUsingColorFilter(drawable)) {
            return;
        }
        if (this.mImageTint != null) {
            AppCompatDrawableManager.tintDrawable(drawable, this.mImageTint, this.mView.getDrawableState());
        } else if (this.mInternalImageTint != null) {
            AppCompatDrawableManager.tintDrawable(drawable, this.mInternalImageTint, this.mView.getDrawableState());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getSupportImageTintList() {
        return this.mImageTint != null ? this.mImageTint.mTintList : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.mImageTint != null ? this.mImageTint.mTintMode : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasOverlappingRendering() {
        return Build.VERSION.SDK_INT < 21 || !(this.mView.getBackground() instanceof RippleDrawable);
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), attributeSet, C0479R.styleable.AppCompatImageView, i, 0);
        try {
            Drawable drawable = this.mView.getDrawable();
            Drawable drawable2 = drawable;
            if (drawable == null) {
                int resourceId = obtainStyledAttributes.getResourceId(C0479R.styleable.AppCompatImageView_srcCompat, -1);
                drawable2 = drawable;
                if (resourceId != -1) {
                    Drawable drawable3 = AppCompatResources.getDrawable(this.mView.getContext(), resourceId);
                    drawable2 = drawable3;
                    if (drawable3 != null) {
                        this.mView.setImageDrawable(drawable3);
                        drawable2 = drawable3;
                    }
                }
            }
            if (drawable2 != null) {
                DrawableUtils.fixDrawable(drawable2);
            }
            if (obtainStyledAttributes.hasValue(C0479R.styleable.AppCompatImageView_tint)) {
                ImageViewCompat.setImageTintList(this.mView, obtainStyledAttributes.getColorStateList(C0479R.styleable.AppCompatImageView_tint));
            }
            if (obtainStyledAttributes.hasValue(C0479R.styleable.AppCompatImageView_tintMode)) {
                ImageViewCompat.setImageTintMode(this.mView, DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C0479R.styleable.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void setImageResource(int i) {
        if (i != 0) {
            Drawable drawable = AppCompatResources.getDrawable(this.mView.getContext(), i);
            if (drawable != null) {
                DrawableUtils.fixDrawable(drawable);
            }
            this.mView.setImageDrawable(drawable);
        } else {
            this.mView.setImageDrawable(null);
        }
        applySupportImageTint();
    }

    void setInternalImageTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.mInternalImageTint == null) {
                this.mInternalImageTint = new TintInfo();
            }
            this.mInternalImageTint.mTintList = colorStateList;
            this.mInternalImageTint.mHasTintList = true;
        } else {
            this.mInternalImageTint = null;
        }
        applySupportImageTint();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.mImageTint == null) {
            this.mImageTint = new TintInfo();
        }
        this.mImageTint.mTintList = colorStateList;
        this.mImageTint.mHasTintList = true;
        applySupportImageTint();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.mImageTint == null) {
            this.mImageTint = new TintInfo();
        }
        this.mImageTint.mTintMode = mode;
        this.mImageTint.mHasTintMode = true;
        applySupportImageTint();
    }
}
