package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSeekBar.class */
public class AppCompatSeekBar extends SeekBar {

    /* renamed from: a  reason: collision with root package name */
    private final j f916a;

    public AppCompatSeekBar(Context context) {
        this(context, null);
    }

    public AppCompatSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.seekBarStyle);
    }

    public AppCompatSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        x.a(this, getContext());
        j jVar = new j(this);
        this.f916a = jVar;
        jVar.a(attributeSet, i);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        j jVar = this.f916a;
        Drawable drawable = jVar.f1104c;
        if (drawable != null && drawable.isStateful() && drawable.setState(jVar.f1103b.getDrawableState())) {
            jVar.f1103b.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        j jVar = this.f916a;
        if (jVar.f1104c != null) {
            jVar.f1104c.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            super.onDraw(canvas);
            j jVar = this.f916a;
            if (jVar.f1104c != null) {
                int max = jVar.f1103b.getMax();
                int i = 1;
                if (max > 1) {
                    int intrinsicWidth = jVar.f1104c.getIntrinsicWidth();
                    int intrinsicHeight = jVar.f1104c.getIntrinsicHeight();
                    int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                    if (intrinsicHeight >= 0) {
                        i = intrinsicHeight / 2;
                    }
                    jVar.f1104c.setBounds(-i2, -i, i2, i);
                    float width = ((jVar.f1103b.getWidth() - jVar.f1103b.getPaddingLeft()) - jVar.f1103b.getPaddingRight()) / max;
                    int save = canvas.save();
                    canvas.translate(jVar.f1103b.getPaddingLeft(), jVar.f1103b.getHeight() / 2);
                    for (int i3 = 0; i3 <= max; i3++) {
                        jVar.f1104c.draw(canvas);
                        canvas.translate(width, BitmapDescriptorFactory.HUE_RED);
                    }
                    canvas.restoreToCount(save);
                }
            }
        }
    }
}
