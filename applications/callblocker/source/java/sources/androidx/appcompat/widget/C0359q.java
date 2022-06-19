package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.C0083a;
/* renamed from: androidx.appcompat.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/q.class */
public class C0359q extends SeekBar {

    /* renamed from: a */
    private final C0360r f1482a;

    public C0359q(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0083a.C0084a.seekBarStyle);
    }

    public C0359q(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1482a = new C0360r(this);
        this.f1482a.mo21273a(attributeSet, i);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f1482a.m21271c();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f1482a.m21272b();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            super.onDraw(canvas);
            this.f1482a.m21275a(canvas);
        }
    }
}
