package p081h.p203i.p392f.p393a.p397c;
/* renamed from: h.i.f.a.c.a */
/* loaded from: classes2-dex2jar.jar:h/i/f/a/c/a.class */
public class C10211a {

    /* renamed from: a */
    public final double f23032a;

    /* renamed from: b */
    public final double f23033b;

    /* renamed from: c */
    public final double f23034c;

    /* renamed from: d */
    public final double f23035d;

    /* renamed from: e */
    public final double f23036e;

    /* renamed from: f */
    public final double f23037f;

    public C10211a(double d, double d2, double d3, double d4) {
        this.f23032a = d;
        this.f23033b = d3;
        this.f23034c = d2;
        this.f23035d = d4;
        this.f23036e = (d + d2) / 2.0d;
        this.f23037f = (d3 + d4) / 2.0d;
    }

    /* renamed from: a */
    public boolean m13113a(double d, double d2) {
        return this.f23032a <= d && d <= this.f23034c && this.f23033b <= d2 && d2 <= this.f23035d;
    }

    /* renamed from: a */
    public boolean m13112a(double d, double d2, double d3, double d4) {
        return d < this.f23034c && this.f23032a < d2 && d3 < this.f23035d && this.f23033b < d4;
    }

    /* renamed from: a */
    public boolean m13111a(C10211a aVar) {
        return aVar.f23032a >= this.f23032a && aVar.f23034c <= this.f23034c && aVar.f23033b >= this.f23033b && aVar.f23035d <= this.f23035d;
    }

    /* renamed from: a */
    public boolean m13110a(C10212b bVar) {
        return m13113a(bVar.f23038a, bVar.f23039b);
    }

    /* renamed from: b */
    public boolean m13109b(C10211a aVar) {
        return m13112a(aVar.f23032a, aVar.f23034c, aVar.f23033b, aVar.f23035d);
    }
}
