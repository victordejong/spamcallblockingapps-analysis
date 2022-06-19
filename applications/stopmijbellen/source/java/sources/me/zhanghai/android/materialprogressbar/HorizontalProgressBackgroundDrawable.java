package me.zhanghai.android.materialprogressbar;

import android.content.Context;
import android.graphics.Canvas;
/* loaded from: classes2-dex2jar.jar:me/zhanghai/android/materialprogressbar/HorizontalProgressBackgroundDrawable.class */
class HorizontalProgressBackgroundDrawable extends BaseSingleHorizontalProgressDrawable implements ShowBackgroundDrawable {
    private boolean mShow = true;

    public HorizontalProgressBackgroundDrawable(Context context) {
        super(context);
    }

    @Override // me.zhanghai.android.materialprogressbar.BaseDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mShow) {
            super.draw(canvas);
        }
    }

    @Override // me.zhanghai.android.materialprogressbar.ShowBackgroundDrawable
    public boolean getShowBackground() {
        return this.mShow;
    }

    @Override // me.zhanghai.android.materialprogressbar.ShowBackgroundDrawable
    public void setShowBackground(boolean z) {
        if (this.mShow != z) {
            this.mShow = z;
            invalidateSelf();
        }
    }
}
