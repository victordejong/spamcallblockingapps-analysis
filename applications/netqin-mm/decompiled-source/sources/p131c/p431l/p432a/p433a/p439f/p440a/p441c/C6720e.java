package p131c.p431l.p432a.p433a.p439f.p440a.p441c;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import com.mopub.mobileads.resource.DrawableConstants;
import p131c.p390g.p391a.p392a.C6475a;
/* renamed from: c.l.a.a.f.a.c.e */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/c/e.class */
public class C6720e extends C6475a.AbstractC6476a {

    /* renamed from: j */
    public final int f20720j = Color.parseColor("#00000000");

    @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6476a
    /* renamed from: a */
    public void mo19988a(Canvas canvas, Paint paint) {
        paint.setColor(Color.argb(Math.min((int) ((m20741b() * 250.0f) + 5.0f), (int) DrawableConstants.CtaButton.WIDTH_DIPS), Color.red(this.f20720j), Color.green(this.f20720j), Color.blue(this.f20720j)));
        canvas.drawPaint(paint);
    }

    @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6476a
    /* renamed from: d */
    public void mo19984d() {
        m20745a(400L);
    }
}
