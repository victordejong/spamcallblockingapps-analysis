package me.zhanghai.android.materialprogressbar;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ProgressBar;
import androidx.appcompat.widget.C0303z0;
import me.zhanghai.android.materialprogressbar.internal.DrawableCompat;
/* loaded from: classes2-dex2jar.jar:me/zhanghai/android/materialprogressbar/MaterialProgressBar.class */
public class MaterialProgressBar extends ProgressBar {
    public static final int DETERMINATE_CIRCULAR_PROGRESS_STYLE_DYNAMIC = 1;
    public static final int DETERMINATE_CIRCULAR_PROGRESS_STYLE_NORMAL = 0;
    public static final int PROGRESS_STYLE_CIRCULAR = 0;
    public static final int PROGRESS_STYLE_HORIZONTAL = 1;
    private static final String TAG = "MaterialProgressBar";
    private int mProgressStyle;
    private boolean mSuperInitialized = true;
    private TintInfo mProgressTintInfo = new TintInfo();

    /* loaded from: classes2-dex2jar.jar:me/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo.class */
    public static class TintInfo {
        public boolean mHasIndeterminateTint;
        public boolean mHasIndeterminateTintMode;
        public boolean mHasProgressBackgroundTint;
        public boolean mHasProgressBackgroundTintMode;
        public boolean mHasProgressTint;
        public boolean mHasProgressTintMode;
        public boolean mHasSecondaryProgressTint;
        public boolean mHasSecondaryProgressTintMode;
        public ColorStateList mIndeterminateTint;
        public PorterDuff.Mode mIndeterminateTintMode;
        public ColorStateList mProgressBackgroundTint;
        public PorterDuff.Mode mProgressBackgroundTintMode;
        public ColorStateList mProgressTint;
        public PorterDuff.Mode mProgressTintMode;
        public ColorStateList mSecondaryProgressTint;
        public PorterDuff.Mode mSecondaryProgressTintMode;

        private TintInfo() {
        }
    }

    public MaterialProgressBar(Context context) {
        super(context);
        init(null, 0, 0);
    }

    public MaterialProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet, 0, 0);
    }

    public MaterialProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet, i, 0);
    }

    @TargetApi(21)
    public MaterialProgressBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(attributeSet, i, i2);
    }

    private void applyIndeterminateTint() {
        Drawable indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable == null) {
            return;
        }
        TintInfo tintInfo = this.mProgressTintInfo;
        if (!tintInfo.mHasIndeterminateTint && !tintInfo.mHasIndeterminateTintMode) {
            return;
        }
        indeterminateDrawable.mutate();
        TintInfo tintInfo2 = this.mProgressTintInfo;
        applyTintForDrawable(indeterminateDrawable, tintInfo2.mIndeterminateTint, tintInfo2.mHasIndeterminateTint, tintInfo2.mIndeterminateTintMode, tintInfo2.mHasIndeterminateTintMode);
    }

    private void applyPrimaryProgressTint() {
        Drawable tintTargetFromProgressDrawable;
        if (getProgressDrawable() == null) {
            return;
        }
        TintInfo tintInfo = this.mProgressTintInfo;
        if ((!tintInfo.mHasProgressTint && !tintInfo.mHasProgressTintMode) || (tintTargetFromProgressDrawable = getTintTargetFromProgressDrawable(16908301, true)) == null) {
            return;
        }
        TintInfo tintInfo2 = this.mProgressTintInfo;
        applyTintForDrawable(tintTargetFromProgressDrawable, tintInfo2.mProgressTint, tintInfo2.mHasProgressTint, tintInfo2.mProgressTintMode, tintInfo2.mHasProgressTintMode);
    }

    private void applyProgressBackgroundTint() {
        Drawable tintTargetFromProgressDrawable;
        if (getProgressDrawable() == null) {
            return;
        }
        TintInfo tintInfo = this.mProgressTintInfo;
        if ((!tintInfo.mHasProgressBackgroundTint && !tintInfo.mHasProgressBackgroundTintMode) || (tintTargetFromProgressDrawable = getTintTargetFromProgressDrawable(16908288, false)) == null) {
            return;
        }
        TintInfo tintInfo2 = this.mProgressTintInfo;
        applyTintForDrawable(tintTargetFromProgressDrawable, tintInfo2.mProgressBackgroundTint, tintInfo2.mHasProgressBackgroundTint, tintInfo2.mProgressBackgroundTintMode, tintInfo2.mHasProgressBackgroundTintMode);
    }

    private void applyProgressTints() {
        if (getProgressDrawable() == null) {
            return;
        }
        applyPrimaryProgressTint();
        applyProgressBackgroundTint();
        applySecondaryProgressTint();
    }

    private void applySecondaryProgressTint() {
        Drawable tintTargetFromProgressDrawable;
        if (getProgressDrawable() == null) {
            return;
        }
        TintInfo tintInfo = this.mProgressTintInfo;
        if ((!tintInfo.mHasSecondaryProgressTint && !tintInfo.mHasSecondaryProgressTintMode) || (tintTargetFromProgressDrawable = getTintTargetFromProgressDrawable(16908303, false)) == null) {
            return;
        }
        TintInfo tintInfo2 = this.mProgressTintInfo;
        applyTintForDrawable(tintTargetFromProgressDrawable, tintInfo2.mSecondaryProgressTint, tintInfo2.mHasSecondaryProgressTint, tintInfo2.mSecondaryProgressTintMode, tintInfo2.mHasSecondaryProgressTintMode);
    }

    @SuppressLint({"NewApi"})
    private void applyTintForDrawable(Drawable drawable, ColorStateList colorStateList, boolean z, PorterDuff.Mode mode, boolean z2) {
        if (z || z2) {
            if (z) {
                if (drawable instanceof TintableDrawable) {
                    ((TintableDrawable) drawable).setTintList(colorStateList);
                } else {
                    Log.w(TAG, "Drawable did not implement TintableDrawable, it won't be tinted below Lollipop");
                    drawable.setTintList(colorStateList);
                }
            }
            if (z2) {
                if (drawable instanceof TintableDrawable) {
                    ((TintableDrawable) drawable).setTintMode(mode);
                } else {
                    Log.w(TAG, "Drawable did not implement TintableDrawable, it won't be tinted below Lollipop");
                    drawable.setTintMode(mode);
                }
            }
            if (!drawable.isStateful()) {
                return;
            }
            drawable.setState(getDrawableState());
        }
    }

    private void fixCanvasScalingAndColorFilterWhenHardwareAccelerated() {
    }

    private Drawable getTintTargetFromProgressDrawable(int i, boolean z) {
        Drawable progressDrawable = getProgressDrawable();
        Drawable drawable = null;
        if (progressDrawable == null) {
            return null;
        }
        progressDrawable.mutate();
        if (progressDrawable instanceof LayerDrawable) {
            drawable = ((LayerDrawable) progressDrawable).findDrawableByLayerId(i);
        }
        if (drawable == null && z) {
            drawable = progressDrawable;
        }
        return drawable;
    }

    private void init(AttributeSet attributeSet, int i, int i2) {
        Context context = getContext();
        C0303z0 m8383q = C0303z0.m8383q(context, attributeSet, C3681R.styleable.MaterialProgressBar, i, i2);
        this.mProgressStyle = m8383q.m8390j(C3681R.styleable.MaterialProgressBar_mpb_progressStyle, 0);
        boolean m8399a = m8383q.m8399a(C3681R.styleable.MaterialProgressBar_mpb_setBothDrawables, false);
        boolean m8399a2 = m8383q.m8399a(C3681R.styleable.MaterialProgressBar_mpb_useIntrinsicPadding, true);
        boolean m8399a3 = m8383q.m8399a(C3681R.styleable.MaterialProgressBar_mpb_showProgressBackground, this.mProgressStyle == 1);
        int m8390j = m8383q.m8390j(C3681R.styleable.MaterialProgressBar_mpb_determinateCircularProgressStyle, 0);
        int i3 = C3681R.styleable.MaterialProgressBar_mpb_progressTint;
        if (m8383q.m8385o(i3)) {
            this.mProgressTintInfo.mProgressTint = m8383q.m8397c(i3);
            this.mProgressTintInfo.mHasProgressTint = true;
        }
        int i4 = C3681R.styleable.MaterialProgressBar_mpb_progressTintMode;
        if (m8383q.m8385o(i4)) {
            this.mProgressTintInfo.mProgressTintMode = DrawableCompat.parseTintMode(m8383q.m8390j(i4, -1), null);
            this.mProgressTintInfo.mHasProgressTintMode = true;
        }
        int i5 = C3681R.styleable.MaterialProgressBar_mpb_secondaryProgressTint;
        if (m8383q.m8385o(i5)) {
            this.mProgressTintInfo.mSecondaryProgressTint = m8383q.m8397c(i5);
            this.mProgressTintInfo.mHasSecondaryProgressTint = true;
        }
        int i6 = C3681R.styleable.MaterialProgressBar_mpb_secondaryProgressTintMode;
        if (m8383q.m8385o(i6)) {
            this.mProgressTintInfo.mSecondaryProgressTintMode = DrawableCompat.parseTintMode(m8383q.m8390j(i6, -1), null);
            this.mProgressTintInfo.mHasSecondaryProgressTintMode = true;
        }
        int i7 = C3681R.styleable.MaterialProgressBar_mpb_progressBackgroundTint;
        if (m8383q.m8385o(i7)) {
            this.mProgressTintInfo.mProgressBackgroundTint = m8383q.m8397c(i7);
            this.mProgressTintInfo.mHasProgressBackgroundTint = true;
        }
        int i8 = C3681R.styleable.MaterialProgressBar_mpb_progressBackgroundTintMode;
        if (m8383q.m8385o(i8)) {
            this.mProgressTintInfo.mProgressBackgroundTintMode = DrawableCompat.parseTintMode(m8383q.m8390j(i8, -1), null);
            this.mProgressTintInfo.mHasProgressBackgroundTintMode = true;
        }
        int i9 = C3681R.styleable.MaterialProgressBar_mpb_indeterminateTint;
        if (m8383q.m8385o(i9)) {
            this.mProgressTintInfo.mIndeterminateTint = m8383q.m8397c(i9);
            this.mProgressTintInfo.mHasIndeterminateTint = true;
        }
        int i10 = C3681R.styleable.MaterialProgressBar_mpb_indeterminateTintMode;
        if (m8383q.m8385o(i10)) {
            this.mProgressTintInfo.mIndeterminateTintMode = DrawableCompat.parseTintMode(m8383q.m8390j(i10, -1), null);
            this.mProgressTintInfo.mHasIndeterminateTintMode = true;
        }
        m8383q.f1164b.recycle();
        int i11 = this.mProgressStyle;
        if (i11 == 0) {
            if ((isIndeterminate() || m8399a) && !isInEditMode()) {
                setIndeterminateDrawable(new IndeterminateCircularProgressDrawable(context));
            }
            if (!isIndeterminate() || m8399a) {
                setProgressDrawable(new CircularProgressDrawable(m8390j, context));
            }
        } else if (i11 != 1) {
            StringBuilder m8752j = C0082b.m8752j("Unknown progress style: ");
            m8752j.append(this.mProgressStyle);
            throw new IllegalArgumentException(m8752j.toString());
        } else {
            if ((isIndeterminate() || m8399a) && !isInEditMode()) {
                setIndeterminateDrawable(new IndeterminateHorizontalProgressDrawable(context));
            }
            if (!isIndeterminate() || m8399a) {
                setProgressDrawable(new HorizontalProgressDrawable(context));
            }
        }
        setUseIntrinsicPadding(m8399a2);
        setShowProgressBackground(m8399a3);
    }

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    @Override // android.widget.ProgressBar
    public ColorStateList getIndeterminateTintList() {
        return this.mProgressTintInfo.mIndeterminateTint;
    }

    @Override // android.widget.ProgressBar
    public PorterDuff.Mode getIndeterminateTintMode() {
        return this.mProgressTintInfo.mIndeterminateTintMode;
    }

    @Override // android.widget.ProgressBar
    public ColorStateList getProgressBackgroundTintList() {
        return this.mProgressTintInfo.mProgressBackgroundTint;
    }

    @Override // android.widget.ProgressBar
    public PorterDuff.Mode getProgressBackgroundTintMode() {
        return this.mProgressTintInfo.mProgressBackgroundTintMode;
    }

    public int getProgressStyle() {
        return this.mProgressStyle;
    }

    @Override // android.widget.ProgressBar
    public ColorStateList getProgressTintList() {
        return this.mProgressTintInfo.mProgressTint;
    }

    @Override // android.widget.ProgressBar
    public PorterDuff.Mode getProgressTintMode() {
        return this.mProgressTintInfo.mProgressTintMode;
    }

    @Override // android.widget.ProgressBar
    public ColorStateList getSecondaryProgressTintList() {
        return this.mProgressTintInfo.mSecondaryProgressTint;
    }

    @Override // android.widget.ProgressBar
    public PorterDuff.Mode getSecondaryProgressTintMode() {
        return this.mProgressTintInfo.mSecondaryProgressTintMode;
    }

    public boolean getShowProgressBackground() {
        Drawable currentDrawable = getCurrentDrawable();
        if (currentDrawable instanceof ShowBackgroundDrawable) {
            return ((ShowBackgroundDrawable) currentDrawable).getShowBackground();
        }
        return false;
    }

    public boolean getUseIntrinsicPadding() {
        Drawable currentDrawable = getCurrentDrawable();
        if (currentDrawable instanceof IntrinsicPaddingDrawable) {
            return ((IntrinsicPaddingDrawable) currentDrawable).getUseIntrinsicPadding();
        }
        throw new IllegalStateException("Drawable does not implement IntrinsicPaddingDrawable");
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        fixCanvasScalingAndColorFilterWhenHardwareAccelerated();
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminate(boolean z) {
        synchronized (this) {
            super.setIndeterminate(z);
            if (this.mSuperInitialized && !(getCurrentDrawable() instanceof MaterialProgressDrawable)) {
                Log.w(TAG, "Current drawable is not a MaterialProgressDrawable, you may want to set app:mpb_setBothDrawables");
            }
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        super.setIndeterminateDrawable(drawable);
        if (this.mProgressTintInfo != null) {
            applyIndeterminateTint();
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateTintList(ColorStateList colorStateList) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mIndeterminateTint = colorStateList;
        tintInfo.mHasIndeterminateTint = true;
        applyIndeterminateTint();
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateTintMode(PorterDuff.Mode mode) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mIndeterminateTintMode = mode;
        tintInfo.mHasIndeterminateTintMode = true;
        applyIndeterminateTint();
    }

    @Override // android.widget.ProgressBar
    public void setProgressBackgroundTintList(ColorStateList colorStateList) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mProgressBackgroundTint = colorStateList;
        tintInfo.mHasProgressBackgroundTint = true;
        applyProgressBackgroundTint();
    }

    @Override // android.widget.ProgressBar
    public void setProgressBackgroundTintMode(PorterDuff.Mode mode) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mProgressBackgroundTintMode = mode;
        tintInfo.mHasProgressBackgroundTintMode = true;
        applyProgressBackgroundTint();
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        super.setProgressDrawable(drawable);
        if (this.mProgressTintInfo != null) {
            applyProgressTints();
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgressTintList(ColorStateList colorStateList) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mProgressTint = colorStateList;
        tintInfo.mHasProgressTint = true;
        applyPrimaryProgressTint();
    }

    @Override // android.widget.ProgressBar
    public void setProgressTintMode(PorterDuff.Mode mode) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mProgressTintMode = mode;
        tintInfo.mHasProgressTintMode = true;
        applyPrimaryProgressTint();
    }

    @Override // android.widget.ProgressBar
    public void setSecondaryProgressTintList(ColorStateList colorStateList) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mSecondaryProgressTint = colorStateList;
        tintInfo.mHasSecondaryProgressTint = true;
        applySecondaryProgressTint();
    }

    @Override // android.widget.ProgressBar
    public void setSecondaryProgressTintMode(PorterDuff.Mode mode) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mSecondaryProgressTintMode = mode;
        tintInfo.mHasSecondaryProgressTintMode = true;
        applySecondaryProgressTint();
    }

    public void setShowProgressBackground(boolean z) {
        Drawable currentDrawable = getCurrentDrawable();
        if (currentDrawable instanceof ShowBackgroundDrawable) {
            ((ShowBackgroundDrawable) currentDrawable).setShowBackground(z);
        }
        Drawable indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable instanceof ShowBackgroundDrawable) {
            ((ShowBackgroundDrawable) indeterminateDrawable).setShowBackground(z);
        }
    }

    public void setUseIntrinsicPadding(boolean z) {
        Drawable currentDrawable = getCurrentDrawable();
        if (currentDrawable instanceof IntrinsicPaddingDrawable) {
            ((IntrinsicPaddingDrawable) currentDrawable).setUseIntrinsicPadding(z);
        }
        Drawable indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable instanceof IntrinsicPaddingDrawable) {
            ((IntrinsicPaddingDrawable) indeterminateDrawable).setUseIntrinsicPadding(z);
        }
    }
}
