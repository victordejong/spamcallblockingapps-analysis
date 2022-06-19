package me.zhanghai.android.materialprogressbar;
/* loaded from: classes2-dex2jar.jar:me/zhanghai/android/materialprogressbar/BaseProgressDrawable.class */
abstract class BaseProgressDrawable extends BasePaintDrawable implements IntrinsicPaddingDrawable {
    public boolean mUseIntrinsicPadding = true;

    @Override // me.zhanghai.android.materialprogressbar.IntrinsicPaddingDrawable
    public boolean getUseIntrinsicPadding() {
        return this.mUseIntrinsicPadding;
    }

    @Override // me.zhanghai.android.materialprogressbar.IntrinsicPaddingDrawable
    public void setUseIntrinsicPadding(boolean z) {
        if (this.mUseIntrinsicPadding != z) {
            this.mUseIntrinsicPadding = z;
            invalidateSelf();
        }
    }
}
