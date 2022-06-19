package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import me.zhanghai.android.materialprogressbar.C3681R;
/* renamed from: androidx.appcompat.widget.v */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v.class */
public class C0284v extends SeekBar {

    /* renamed from: a */
    public final C0286w f1121a;

    public C0284v(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, C3681R.attr.seekBarStyle);
        C0283u0.m8427a(this, getContext());
        C0286w c0286w = new C0286w(this);
        this.f1121a = c0286w;
        c0286w.mo8423a(attributeSet, C3681R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0286w c0286w = this.f1121a;
        Drawable drawable = c0286w.f1123e;
        if (drawable == null || !drawable.isStateful() || !drawable.setState(c0286w.f1122d.getDrawableState())) {
            return;
        }
        c0286w.f1122d.invalidateDrawable(drawable);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1121a.f1123e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onDraw(Canvas canvas) {
        synchronized (this) {
            super.onDraw(canvas);
            this.f1121a.m8421d(canvas);
        }
    }
}
