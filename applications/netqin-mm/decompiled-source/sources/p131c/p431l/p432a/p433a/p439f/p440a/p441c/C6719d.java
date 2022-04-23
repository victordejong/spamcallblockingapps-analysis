package p131c.p431l.p432a.p433a.p439f.p440a.p441c;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.animation.AccelerateInterpolator;
import com.netqin.p525cm.main.p529ui.NqApplication;
/* renamed from: c.l.a.a.f.a.c.d */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/c/d.class */
public class C6719d extends AbstractC6716a {

    /* renamed from: l */
    public static final int f20718l = Color.argb(255, 173, 75, 157);

    /* renamed from: k */
    public final Bitmap f20719k = BitmapFactory.decodeResource(NqApplication.m3303b().getResources(), 2131165546);

    @Override // p131c.p431l.p432a.p433a.p439f.p440a.p441c.AbstractC6716a
    /* renamed from: b */
    public void mo19985b(Canvas canvas, Paint paint) {
        int i = AbstractC6716a.f20688j;
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(f20718l);
        float f = i >> 1;
        canvas.drawCircle(f, f, Math.min(m20741b() * f, f), paint);
        m19989e();
        canvas.drawBitmap(this.f20719k, (Rect) null, this.f20187b, paint);
    }

    @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6476a
    /* renamed from: d */
    public void mo19984d() {
        m20745a(400L);
        m20744a(new AccelerateInterpolator(2.0f));
        int width = this.f20719k.getWidth();
        int height = this.f20719k.getHeight();
        int i = AbstractC6716a.f20688j;
        int i2 = i >> 1;
        int i3 = (int) (i * 0.7f);
        this.f20186a.set(i2, i3, width + i2, height + i3);
        m19989e();
    }

    /* renamed from: e */
    public final void m19989e() {
        this.f20187b.set(this.f20186a);
        float a = m20746a();
        float f = 1.0f - (a < 0.5f ? 0.0f : (a - 0.5f) / 0.5f);
        this.f20187b.inset((this.f20186a.width() * f) / 2.0f, (this.f20186a.height() * f) / 2.0f);
    }
}
