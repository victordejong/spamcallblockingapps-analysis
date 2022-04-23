package p131c.p431l.p432a.p433a.p439f.p440a.p441c;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.util.TypedValue;
import com.netqin.p525cm.main.p529ui.NqApplication;
import p012b.p042i.p044i.C0869a;
/* renamed from: c.l.a.a.f.a.c.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/c/b.class */
public class C6717b extends AbstractC6716a {

    /* renamed from: v */
    public static int f20689v;

    /* renamed from: w */
    public static final int[] f20690w = {2131165545, 2131165547};

    /* renamed from: k */
    public int f20691k;

    /* renamed from: l */
    public float f20692l;

    /* renamed from: m */
    public final Path f20693m = new Path();

    /* renamed from: n */
    public PathMeasure f20694n = new PathMeasure();

    /* renamed from: o */
    public final float[] f20695o = new float[2];

    /* renamed from: p */
    public final float[] f20696p = new float[2];

    /* renamed from: q */
    public Bitmap f20697q;

    /* renamed from: r */
    public int f20698r;

    /* renamed from: s */
    public int f20699s;

    /* renamed from: t */
    public float f20700t;

    /* renamed from: u */
    public TypedValue f20701u;

    /* renamed from: a */
    public static Bitmap m19995a(int i) {
        return ((BitmapDrawable) C0869a.m35684c(NqApplication.m3303b(), f20690w[i])).getBitmap();
    }

    /* renamed from: a */
    public final void m19996a(float f, float f2, float f3, float f4) {
        this.f20693m.rewind();
        this.f20693m.moveTo(f, f2);
        this.f20693m.lineTo(f3, f4);
    }

    @Override // p131c.p431l.p432a.p433a.p439f.p440a.p441c.AbstractC6716a
    /* renamed from: b */
    public void mo19985b(Canvas canvas, Paint paint) {
        int save = canvas.save();
        m19994e();
        paint.setAlpha(this.f20691k);
        if (f20689v == 4) {
            canvas.scale(-1.0f, 1.0f, this.f20698r + (this.f20697q.getWidth() / 2), this.f20699s + (this.f20697q.getHeight() / 2));
        }
        canvas.rotate(this.f20692l, this.f20187b.centerX(), this.f20187b.centerY());
        canvas.drawBitmap(this.f20697q, (Rect) null, this.f20187b, paint);
        canvas.restoreToCount(save);
    }

    @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6476a
    /* renamed from: d */
    public void mo19984d() {
        float f;
        int height;
        m20745a(700L);
        int i = f20689v + 1;
        f20689v = i;
        if (i > 4) {
            f20689v = 1;
        }
        this.f20698r = Math.round(AbstractC6716a.f20688j * 0.4f);
        this.f20699s = Math.round(AbstractC6716a.f20688j * 0.1f);
        this.f20697q = null;
        float f2 = AbstractC6716a.f20688j * 0.458f;
        this.f20701u = new TypedValue();
        int i2 = f20689v;
        if (i2 == 1) {
            this.f20692l = -10.0f;
            this.f20697q = m19995a(0);
            this.f20698r = Math.round(AbstractC6716a.f20688j * 0.4f);
            this.f20699s = Math.round(AbstractC6716a.f20688j * 0.1f);
            NqApplication.m3303b().getResources().getValue(2131099931, this.f20701u, true);
            float f3 = this.f20701u.getFloat();
            this.f20700t = f3;
            f = AbstractC6716a.f20688j * f3;
            height = this.f20697q.getHeight();
        } else if (i2 == 2) {
            this.f20692l = -25.0f;
            this.f20697q = m19995a(1);
            this.f20698r = Math.round(AbstractC6716a.f20688j * 0.52f);
            this.f20699s = Math.round(AbstractC6716a.f20688j * 0.1f);
            NqApplication.m3303b().getResources().getValue(2131099934, this.f20701u, true);
            float f4 = this.f20701u.getFloat();
            this.f20700t = f4;
            f = AbstractC6716a.f20688j * f4;
            height = this.f20697q.getHeight();
        } else if (i2 == 3) {
            this.f20692l = 192.0f;
            this.f20697q = m19995a(0);
            this.f20698r = Math.round(AbstractC6716a.f20688j * 0.62f);
            this.f20699s = Math.round(AbstractC6716a.f20688j * 0.1f);
            NqApplication.m3303b().getResources().getValue(2131099932, this.f20701u, true);
            float f5 = this.f20701u.getFloat();
            this.f20700t = f5;
            f = AbstractC6716a.f20688j * f5;
            height = this.f20697q.getHeight();
        } else {
            if (i2 == 4) {
                this.f20692l = -29.0f;
                this.f20697q = m19995a(1);
                this.f20698r = Math.round(AbstractC6716a.f20688j * 0.34f);
                this.f20699s = Math.round(AbstractC6716a.f20688j * 0.1f);
                NqApplication.m3303b().getResources().getValue(2131099933, this.f20701u, true);
                float f6 = this.f20701u.getFloat();
                this.f20700t = f6;
                f = AbstractC6716a.f20688j * f6;
                height = this.f20697q.getHeight();
            }
            int width = this.f20697q.getWidth();
            int height2 = this.f20697q.getHeight();
            Rect rect = this.f20186a;
            int i3 = this.f20698r;
            int i4 = this.f20699s;
            rect.set(i3, i4, width + i3, height2 + i4);
            int i5 = this.f20698r;
            m19996a(i5, this.f20699s, i5, f2);
            this.f20694n.setPath(this.f20693m, false);
        }
        f2 = f - height;
        int width2 = this.f20697q.getWidth();
        int height22 = this.f20697q.getHeight();
        Rect rect2 = this.f20186a;
        int i32 = this.f20698r;
        int i42 = this.f20699s;
        rect2.set(i32, i42, width2 + i32, height22 + i42);
        int i52 = this.f20698r;
        m19996a(i52, this.f20699s, i52, f2);
        this.f20694n.setPath(this.f20693m, false);
    }

    /* renamed from: e */
    public final void m19994e() {
        this.f20187b.set(this.f20186a);
        float a = m20746a();
        if (a <= 0.4f) {
            float f = a / 0.4f;
            this.f20691k = (int) (100.0f * f);
            float f2 = 1.0f - f;
            this.f20187b.inset(this.f20186a.width() * f2, this.f20186a.height() * f2);
            return;
        }
        this.f20691k = 255;
        m19993f();
    }

    /* renamed from: f */
    public final void m19993f() {
        this.f20694n.getPosTan(this.f20694n.getLength() * m20741b(), this.f20695o, this.f20696p);
        RectF rectF = this.f20187b;
        float[] fArr = this.f20695o;
        rectF.offsetTo(fArr[0], fArr[1] + (rectF.height() / 2.0f));
    }
}
