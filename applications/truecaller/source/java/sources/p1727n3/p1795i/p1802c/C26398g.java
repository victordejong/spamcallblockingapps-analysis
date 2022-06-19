package p1727n3.p1795i.p1802c;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
/* renamed from: n3.i.c.g */
/* loaded from: classes-dex2jar.jar:n3/i/c/g.class */
public class C26398g extends View {

    /* renamed from: a */
    public int f73998a;

    /* renamed from: b */
    public View f73999b;

    /* renamed from: c */
    public int f74000c;

    /* renamed from: a */
    public void m1945a() {
        if (this.f73999b == null) {
            return;
        }
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) getLayoutParams();
        ConstraintLayout.C0111a c0111a2 = (ConstraintLayout.C0111a) this.f73999b.getLayoutParams();
        c0111a2.f646l0.f73712j0 = 0;
        C26363d.EnumC26364a m2067r = c0111a.f646l0.m2067r();
        C26363d.EnumC26364a enumC26364a = C26363d.EnumC26364a.FIXED;
        if (m2067r != enumC26364a) {
            c0111a.f646l0.m2079S(c0111a2.f646l0.m2062w());
        }
        if (c0111a.f646l0.m2063v() != enumC26364a) {
            c0111a.f646l0.m2084N(c0111a2.f646l0.m2068q());
        }
        c0111a2.f646l0.f73712j0 = 8;
    }

    public View getContent() {
        return this.f73999b;
    }

    public int getEmptyVisibility() {
        return this.f74000c;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            float f = width / 2.0f;
            float width2 = rect.width() / 2.0f;
            canvas.drawText("?", (f - width2) - rect.left, ((rect.height() / 2.0f) + (height / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i) {
        View findViewById;
        if (this.f73998a == i) {
            return;
        }
        View view = this.f73999b;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.C0111a) this.f73999b.getLayoutParams()).f624a0 = false;
            this.f73999b = null;
        }
        this.f73998a = i;
        if (i == -1 || (findViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i) {
        this.f74000c = i;
    }
}
