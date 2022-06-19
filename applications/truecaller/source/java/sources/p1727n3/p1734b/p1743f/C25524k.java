package p1727n3.p1734b.p1743f;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.RatingBar;
/* renamed from: n3.b.f.k */
/* loaded from: classes-dex2jar.jar:n3/b/f/k.class */
public class C25524k extends RatingBar {

    /* renamed from: a */
    public final C25520i f71409a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C25524k(android.content.Context r6, android.util.AttributeSet r7) {
        /*
            r5 = this;
            int r0 = androidx.appcompat.C0032R.attr.ratingBarStyle
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
            n3.b.f.i r0 = new n3.b.f.i
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r6 = r0
            r0 = r5
            r1 = r6
            r0.f71409a = r1
            r0 = r6
            r1 = r7
            r2 = r8
            r0.mo3340a(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1743f.C25524k.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            Bitmap bitmap = this.f71409a.f71397b;
            if (bitmap != null) {
                setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
            }
        }
    }
}
