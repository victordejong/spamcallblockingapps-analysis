package p613k;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import p613k.C10438b;
import p613k.C10442c;
import p613k.p614d.AbstractC10446a;
import p613k.p614d.AbstractC10448b;
import p613k.p614d.C10458j;
/* renamed from: k.a */
/* loaded from: classes2-dex2jar.jar:k/a.class */
public class C10435a {

    /* renamed from: A */
    public static final Interpolator f38619A = new LinearInterpolator();

    /* renamed from: B */
    public static final Interpolator f38620B = new animationInterpolatorC10437b(null);

    /* renamed from: a */
    public final C10442c f38621a;

    /* renamed from: b */
    public final Rect f38622b;

    /* renamed from: c */
    public float f38623c;

    /* renamed from: d */
    public float f38624d;

    /* renamed from: e */
    public float f38625e;

    /* renamed from: f */
    public float f38626f;

    /* renamed from: g */
    public float f38627g;

    /* renamed from: h */
    public float f38628h;

    /* renamed from: i */
    public C10458j f38629i;

    /* renamed from: j */
    public C10458j f38630j;

    /* renamed from: k */
    public C10458j f38631k;

    /* renamed from: l */
    public C10458j f38632l;

    /* renamed from: n */
    public float f38634n;

    /* renamed from: o */
    public float f38635o;

    /* renamed from: s */
    public boolean f38639s;

    /* renamed from: t */
    public boolean f38640t;

    /* renamed from: w */
    public int f38643w;

    /* renamed from: x */
    public int f38644x;

    /* renamed from: y */
    public C10442c.AbstractC10445c f38645y;

    /* renamed from: m */
    public float f38633m = 1.0f;

    /* renamed from: p */
    public float f38636p = 0.0f;

    /* renamed from: q */
    public float f38637q = 0.0f;

    /* renamed from: r */
    public float f38638r = 0.0f;

    /* renamed from: u */
    public float f38641u = 0.0f;

    /* renamed from: v */
    public float f38642v = 0.0f;

    /* renamed from: z */
    public final AbstractC10448b f38646z = new C10436a();

    /* renamed from: k.a$a */
    /* loaded from: classes2-dex2jar.jar:k/a$a.class */
    public class C10436a extends AbstractC10448b {
        public C10436a() {
        }

        @Override // p613k.p614d.AbstractC10446a.AbstractC10447a
        /* renamed from: d */
        public void mo129d(AbstractC10446a aVar) {
            C10435a.this.m169i();
            C10442c.AbstractC10445c cVar = C10435a.this.f38645y;
            if (cVar != null) {
                cVar.onFinish();
            }
        }
    }

    /* renamed from: k.a$b  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:k/a$b.class */
    public static final class animationInterpolatorC10437b implements Interpolator {
        public animationInterpolatorC10437b() {
        }

        public /* synthetic */ animationInterpolatorC10437b(C10436a aVar) {
            this();
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            double d = -f;
            Double.isNaN(d);
            return 1.0f - ((float) Math.pow(400.0d, d * 1.4d));
        }
    }

    public C10435a(C10442c cVar, Rect rect, float f, float f2) {
        this.f38621a = cVar;
        this.f38622b = rect;
        this.f38625e = f;
        this.f38626f = f2;
    }

    /* renamed from: a */
    public void m185a() {
        this.f38640t = true;
        m178b();
        this.f38640t = false;
    }

    /* renamed from: a */
    public void m184a(float f, float f2) {
        this.f38625e = f;
        this.f38626f = f2;
        m175c();
    }

    /* renamed from: a */
    public void m183a(int i, float f) {
        if (i != -1) {
            this.f38639s = true;
            this.f38623c = i;
        } else {
            float width = this.f38622b.width() / 2.0f;
            float height = this.f38622b.height() / 2.0f;
            this.f38623c = (float) Math.sqrt((width * width) + (height * height));
        }
        this.f38634n = 0.0f;
        this.f38635o = 0.0f;
        this.f38624d = f;
        m175c();
    }

    /* renamed from: a */
    public void m182a(int i, int i2) {
        C10458j a = C10458j.m103a(this, "radiusGravity", 1.0f);
        a.m101b(true);
        long j = i;
        a.mo64d(j);
        a.m77a(f38620B);
        C10458j a2 = C10458j.m103a(this, "xGravity", 1.0f);
        a2.m101b(true);
        a2.mo64d(j);
        a2.m77a(f38620B);
        C10458j a3 = C10458j.m103a(this, "yGravity", 1.0f);
        a3.m101b(true);
        a3.mo64d(j);
        a3.m77a(f38620B);
        C10458j a4 = C10458j.m103a(this, "opacity", 0.0f);
        a4.m101b(true);
        a4.mo64d(i2);
        a4.m77a(f38619A);
        a4.m131a((AbstractC10446a.AbstractC10447a) this.f38646z);
        this.f38629i = a;
        this.f38630j = a4;
        this.f38631k = a2;
        this.f38632l = a3;
        a.mo56m();
        a4.mo56m();
        a2.mo56m();
        a3.mo56m();
    }

    /* renamed from: a */
    public void m179a(C10442c.AbstractC10445c cVar) {
        this.f38645y = cVar;
    }

    /* renamed from: a */
    public boolean m181a(Canvas canvas, Paint paint) {
        return m176b(canvas, paint);
    }

    /* renamed from: b */
    public final void m178b() {
        C10458j jVar = this.f38629i;
        if (jVar != null) {
            jVar.m68c();
            this.f38629i = null;
        }
        C10458j jVar2 = this.f38630j;
        if (jVar2 != null) {
            jVar2.m68c();
            this.f38630j = null;
        }
        C10458j jVar3 = this.f38631k;
        if (jVar3 != null) {
            jVar3.m68c();
            this.f38631k = null;
        }
        C10458j jVar4 = this.f38632l;
        if (jVar4 != null) {
            jVar4.m68c();
            this.f38632l = null;
        }
    }

    /* renamed from: b */
    public void m177b(float f, float f2) {
        this.f38641u = f;
        this.f38642v = f2;
        Rect rect = this.f38622b;
        int i = rect.left;
        int i2 = (int) f;
        int i3 = rect.top;
        int i4 = (int) f2;
        rect.set(i + i2, i3 + i4, rect.right + i2, rect.bottom + i4);
        m170h();
    }

    /* renamed from: b */
    public final boolean m176b(Canvas canvas, Paint paint) {
        boolean z;
        int alpha = paint.getAlpha();
        int i = (int) ((alpha * this.f38633m) + 0.5f);
        float b = C10438b.C10441c.m152b(0.0f, this.f38623c, this.f38636p);
        if (i <= 0 || b <= 0.0f) {
            z = false;
        } else {
            float b2 = C10438b.C10441c.m152b(this.f38627g - this.f38622b.exactCenterX(), this.f38634n, this.f38637q);
            float b3 = C10438b.C10441c.m152b(this.f38628h - this.f38622b.exactCenterY(), this.f38635o, this.f38638r);
            paint.setAlpha(i);
            canvas.drawCircle(b2, b3, b, paint);
            paint.setAlpha(alpha);
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public final void m175c() {
        float exactCenterX = this.f38622b.exactCenterX() + this.f38641u;
        float exactCenterY = this.f38622b.exactCenterY() + this.f38642v;
        float f = this.f38625e;
        float f2 = f - exactCenterX;
        float f3 = this.f38626f;
        float f4 = f3 - exactCenterY;
        float f5 = this.f38623c;
        if ((f2 * f2) + (f4 * f4) > f5 * f5) {
            double atan2 = Math.atan2(f4, f2);
            double cos = Math.cos(atan2);
            double d = f5;
            Double.isNaN(d);
            this.f38627g = exactCenterX + ((float) (cos * d));
            double sin = Math.sin(atan2);
            Double.isNaN(d);
            this.f38628h = exactCenterY + ((float) (sin * d));
            return;
        }
        this.f38627g = f;
        this.f38628h = f3;
    }

    /* renamed from: d */
    public final void m174d() {
        C10458j jVar = this.f38629i;
        if (jVar != null) {
            jVar.m63e();
            this.f38629i = null;
        }
        C10458j jVar2 = this.f38630j;
        if (jVar2 != null) {
            jVar2.m63e();
            this.f38630j = null;
        }
        C10458j jVar3 = this.f38631k;
        if (jVar3 != null) {
            jVar3.m63e();
            this.f38631k = null;
        }
        C10458j jVar4 = this.f38632l;
        if (jVar4 != null) {
            jVar4.m63e();
            this.f38632l = null;
        }
    }

    /* renamed from: e */
    public void m173e() {
        m185a();
        int sqrt = (int) ((Math.sqrt((this.f38623c / 1024.0f) * this.f38624d) * 1000.0d) + 0.5d);
        C10458j a = C10458j.m103a(this, "radiusGravity", 1.0f);
        a.m101b(true);
        long j = sqrt;
        a.mo64d(j);
        a.m77a(f38619A);
        a.m62e(80L);
        C10458j a2 = C10458j.m103a(this, "xGravity", 1.0f);
        a2.m101b(true);
        a2.mo64d(j);
        a2.m77a(f38619A);
        a2.m62e(80L);
        C10458j a3 = C10458j.m103a(this, "yGravity", 1.0f);
        a3.m101b(true);
        a3.mo64d(j);
        a3.m77a(f38619A);
        a3.m62e(80L);
        this.f38629i = a;
        this.f38631k = a2;
        this.f38632l = a3;
        a.mo56m();
        a2.mo56m();
        a3.mo56m();
    }

    /* renamed from: f */
    public void m172f() {
        float b = C10438b.C10441c.m152b(0.0f, this.f38623c, this.f38636p);
        C10458j jVar = this.f38629i;
        float f = (jVar == null || !jVar.m58k()) ? this.f38623c : this.f38623c - b;
        m185a();
        int sqrt = (int) ((Math.sqrt((f / 4424.0f) * this.f38624d) * 1000.0d) + 0.5d);
        this.f38643w = sqrt;
        int i = (int) (((this.f38633m * 1000.0f) / 3.0f) + 0.5f);
        this.f38644x = i;
        m182a(sqrt, i);
    }

    /* renamed from: g */
    public void m171g() {
        this.f38640t = true;
        m174d();
        this.f38640t = false;
    }

    /* renamed from: h */
    public void m170h() {
        if (!this.f38639s) {
            float width = this.f38622b.width() / 2.0f;
            float height = this.f38622b.height() / 2.0f;
            this.f38623c = (float) Math.sqrt((width * width) + (height * height));
            m175c();
        }
    }

    /* renamed from: i */
    public final void m169i() {
        if (!this.f38640t) {
            this.f38621a.m140b(this);
        }
    }
}
