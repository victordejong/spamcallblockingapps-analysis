package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.C0142a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSeekBar.class */
public class AppCompatSeekBar extends SeekBar {

    /* renamed from: a */
    private final C0397j f1159a;

    public AppCompatSeekBar(Context context) {
        this(context, null);
    }

    public AppCompatSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.seekBarStyle);
    }

    public AppCompatSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0425x.m45572a(this, getContext());
        C0397j c0397j = new C0397j(this);
        this.f1159a = c0397j;
        c0397j.mo45707a(attributeSet, i);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0397j c0397j = this.f1159a;
        Drawable drawable = c0397j.f1592c;
        if (drawable == null || !drawable.isStateful() || !drawable.setState(c0397j.f1591b.getDrawableState())) {
            return;
        }
        c0397j.f1591b.invalidateDrawable(drawable);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        C0397j c0397j = this.f1159a;
        if (c0397j.f1592c != null) {
            c0397j.f1592c.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            super.onDraw(canvas);
            C0397j c0397j = this.f1159a;
            if (c0397j.f1592c != null) {
                int max = c0397j.f1591b.getMax();
                int i = 1;
                if (max > 1) {
                    int intrinsicWidth = c0397j.f1592c.getIntrinsicWidth();
                    int intrinsicHeight = c0397j.f1592c.getIntrinsicHeight();
                    int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                    if (intrinsicHeight >= 0) {
                        i = intrinsicHeight / 2;
                    }
                    c0397j.f1592c.setBounds(-i2, -i, i2, i);
                    float width = ((c0397j.f1591b.getWidth() - c0397j.f1591b.getPaddingLeft()) - c0397j.f1591b.getPaddingRight()) / max;
                    int save = canvas.save();
                    canvas.translate(c0397j.f1591b.getPaddingLeft(), c0397j.f1591b.getHeight() / 2);
                    for (int i3 = 0; i3 <= max; i3++) {
                        c0397j.f1592c.draw(canvas);
                        canvas.translate(width, BitmapDescriptorFactory.HUE_RED);
                    }
                    canvas.restoreToCount(save);
                }
            }
        }
    }
}
