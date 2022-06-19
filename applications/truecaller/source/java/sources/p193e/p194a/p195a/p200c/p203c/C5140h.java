package p193e.p194a.p195a.p200c.p203c;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import s1.z.c.l;
/* renamed from: e.a.a.c.c.h */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/h.class */
public final class C5140h extends Drawable {

    /* renamed from: a */
    public final Paint f17566a;

    /* renamed from: b */
    public final float f17567b;

    /* renamed from: c */
    public final Drawable f17568c;

    /* renamed from: d */
    public final int f17569d;

    /* renamed from: e */
    public final int f17570e;

    /* renamed from: f */
    public final int f17571f;

    /* JADX WARN: Removed duplicated region for block: B:10:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C5140h(android.content.Context r7, int r8, int r9, int r10) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            r0.<init>()
            r0 = r6
            r1 = r8
            r0.f17569d = r1
            r0 = r6
            r1 = r9
            r0.f17570e = r1
            r0 = r6
            r1 = r10
            r0.f17571f = r1
            android.graphics.Paint r0 = new android.graphics.Paint
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            r0.setColor(r1)
            r0 = r11
            android.graphics.Paint$Style r1 = android.graphics.Paint.Style.FILL
            r0.setStyle(r1)
            r0 = r11
            r1 = 1
            r0.setAntiAlias(r1)
            r0 = r6
            r1 = r11
            r0.f17566a = r1
            r0 = r6
            r1 = r7
            android.content.res.Resources r1 = r1.getResources()
            r2 = 2131165653(0x7f0701d5, float:1.794553E38)
            float r1 = r1.getDimension(r2)
            r0.f17567b = r1
            java.lang.Object r0 = p1727n3.p1807k.p1809b.C26467a.f74235a
            r11 = r0
            r0 = r7
            r1 = r8
            android.graphics.drawable.Drawable r0 = p1727n3.p1807k.p1809b.C26467a.C26470c.m1789b(r0, r1)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L72
            r0 = r7
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L72
            r0 = r7
            r1 = r9
            r0.setTint(r1)
            r0 = r7
            android.graphics.PorterDuff$Mode r1 = android.graphics.PorterDuff.Mode.SRC_IN
            r0.setTintMode(r1)
            goto L74
        L72:
            r0 = 0
            r7 = r0
        L74:
            r0 = r6
            r1 = r7
            r0.f17568c = r1
            r0 = r7
            if (r0 == 0) goto L8b
            r0 = r7
            r1 = 0
            r2 = 0
            r3 = r7
            int r3 = r3.getIntrinsicWidth()
            r4 = r7
            int r4 = r4.getIntrinsicHeight()
            r0.setBounds(r1, r2, r3, r4)
        L8b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p203c.C5140h.<init>(android.content.Context, int, int, int):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        float f = getBounds().left;
        float f2 = getBounds().top;
        float f3 = getBounds().right;
        float f4 = getBounds().bottom;
        float f5 = this.f17567b;
        canvas.drawRoundRect(f, f2, f3, f4, f5, f5, this.f17566a);
        if (this.f17568c == null) {
            return;
        }
        canvas.save();
        canvas.translate((getBounds().width() - this.f17568c.getIntrinsicWidth()) * 0.5f, (getBounds().height() - this.f17568c.getIntrinsicHeight()) * 0.5f);
        this.f17568c.draw(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
