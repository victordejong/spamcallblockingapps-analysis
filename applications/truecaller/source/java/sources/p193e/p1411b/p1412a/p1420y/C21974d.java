package p193e.p1411b.p1412a.p1420y;

import java.util.List;
import p193e.p1411b.p1412a.p1420y.p1422k.C22002n;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.y.d */
/* loaded from: classes-dex2jar.jar:e/b/a/y/d.class */
public class C21974d {

    /* renamed from: a */
    public final List<C22002n> f61019a;

    /* renamed from: b */
    public final char f61020b;

    /* renamed from: c */
    public final double f61021c;

    /* renamed from: d */
    public final String f61022d;

    /* renamed from: e */
    public final String f61023e;

    public C21974d(List<C22002n> list, char c, double d, double d2, String str, String str2) {
        this.f61019a = list;
        this.f61020b = c;
        this.f61021c = d2;
        this.f61022d = str;
        this.f61023e = str2;
    }

    /* renamed from: a */
    public static int m8851a(char c, String str, String str2) {
        return str2.hashCode() + C22128a.m8579q2(str, (c + 0) * 31, 31);
    }

    public int hashCode() {
        return m8851a(this.f61020b, this.f61023e, this.f61022d);
    }
}
