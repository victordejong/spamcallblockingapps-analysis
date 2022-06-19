package p1727n3.p1734b.p1743f;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.widget.SeekBar;
/* renamed from: n3.b.f.m */
/* loaded from: classes-dex2jar.jar:n3/b/f/m.class */
public class C25528m extends SeekBar {

    /* renamed from: a */
    public final C25530n f71422a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C25528m(android.content.Context r6, android.util.AttributeSet r7) {
        /*
            r5 = this;
            int r0 = androidx.appcompat.C0032R.attr.seekBarStyle
            r8 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            r0.<init>(r1, r2, r3)
            r0 = r5
            r1 = r5
            android.content.Context r1 = r1.getContext()
            p1727n3.p1734b.p1743f.C25529m0.m3344a(r0, r1)
            n3.b.f.n r0 = new n3.b.f.n
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r6 = r0
            r0 = r5
            r1 = r6
            r0.f71422a = r1
            r0 = r6
            r1 = r7
            r2 = r8
            r0.mo3340a(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1743f.C25528m.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C25530n c25530n = this.f71422a;
        Drawable drawable = c25530n.f71431e;
        if (drawable == null || !drawable.isStateful() || !drawable.setState(c25530n.f71430d.getDrawableState())) {
            return;
        }
        c25530n.f71430d.invalidateDrawable(drawable);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f71422a.f71431e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onDraw(Canvas canvas) {
        synchronized (this) {
            super.onDraw(canvas);
            this.f71422a.m3338d(canvas);
        }
    }
}
