package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22485c0;
/* renamed from: e.f.a.n.q.d.b0 */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/b0.class */
public class C22484b0 implements C22485c0.AbstractC22486a {

    /* renamed from: a */
    public final /* synthetic */ float f62348a;

    /* renamed from: b */
    public final /* synthetic */ float f62349b;

    /* renamed from: c */
    public final /* synthetic */ float f62350c;

    /* renamed from: d */
    public final /* synthetic */ float f62351d;

    public C22484b0(float f, float f2, float f3, float f4) {
        this.f62348a = f;
        this.f62349b = f2;
        this.f62350c = f3;
        this.f62351d = f4;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22485c0.AbstractC22486a
    /* renamed from: a */
    public void mo8204a(Canvas canvas, Paint paint, RectF rectF) {
        Path path = new Path();
        float f = this.f62348a;
        float f2 = this.f62349b;
        float f3 = this.f62350c;
        float f4 = this.f62351d;
        path.addRoundRect(rectF, new float[]{f, f, f2, f2, f3, f3, f4, f4}, Path.Direction.CW);
        canvas.drawPath(path, paint);
    }
}
