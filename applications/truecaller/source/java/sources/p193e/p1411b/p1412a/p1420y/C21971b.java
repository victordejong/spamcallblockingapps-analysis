package p193e.p1411b.p1412a.p1420y;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.y.b */
/* loaded from: classes-dex2jar.jar:e/b/a/y/b.class */
public class C21971b {

    /* renamed from: a */
    public final String f61001a;

    /* renamed from: b */
    public final String f61002b;

    /* renamed from: c */
    public final double f61003c;

    /* renamed from: d */
    public final EnumC21972a f61004d;

    /* renamed from: e */
    public final int f61005e;

    /* renamed from: f */
    public final double f61006f;

    /* renamed from: g */
    public final double f61007g;

    /* renamed from: h */
    public final int f61008h;

    /* renamed from: i */
    public final int f61009i;

    /* renamed from: j */
    public final double f61010j;

    /* renamed from: k */
    public final boolean f61011k;

    /* renamed from: e.b.a.y.b$a */
    /* loaded from: classes-dex2jar.jar:e/b/a/y/b$a.class */
    public enum EnumC21972a {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public C21971b(String str, String str2, double d, EnumC21972a enumC21972a, int i, double d2, double d3, int i2, int i3, double d4, boolean z) {
        this.f61001a = str;
        this.f61002b = str2;
        this.f61003c = d;
        this.f61004d = enumC21972a;
        this.f61005e = i;
        this.f61006f = d2;
        this.f61007g = d3;
        this.f61008h = i2;
        this.f61009i = i3;
        this.f61010j = d4;
        this.f61011k = z;
    }

    public int hashCode() {
        int m8579q2 = (int) (C22128a.m8579q2(this.f61002b, this.f61001a.hashCode() * 31, 31) + this.f61003c);
        int ordinal = this.f61004d.ordinal();
        int i = this.f61005e;
        long doubleToLongBits = Double.doubleToLongBits(this.f61006f);
        return ((((((ordinal + (m8579q2 * 31)) * 31) + i) * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + this.f61008h;
    }
}
