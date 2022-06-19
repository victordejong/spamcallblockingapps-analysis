package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.C0051a;
/* renamed from: androidx.appcompat.widget.s */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/s.class */
public class C0346s extends SeekBar {

    /* renamed from: a */
    private final C0347t f1396a;

    public C0346s(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.seekBarStyle);
    }

    public C0346s(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1396a = new C0347t(this);
        this.f1396a.mo7034a(attributeSet, i);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f1396a.m7032c();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f1396a.m7033b();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            super.onDraw(canvas);
            this.f1396a.m7036a(canvas);
        }
    }
}
