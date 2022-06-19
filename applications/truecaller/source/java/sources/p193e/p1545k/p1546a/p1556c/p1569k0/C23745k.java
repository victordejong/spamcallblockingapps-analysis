package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.IOException;
import java.util.Objects;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.AbstractC23383o;
import p193e.p1545k.p1546a.p1548b.C23369e;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23368d;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23346a;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23348c;
import p193e.p1545k.p1546a.p1548b.p1552w.C23396b;
import p193e.p1545k.p1546a.p1548b.p1553x.C23406a;
import p193e.p1545k.p1546a.p1556c.AbstractC23757l;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23945s;
import p193e.p1545k.p1546a.p1556c.C23946t;
import p193e.p1545k.p1546a.p1556c.C23957y;
import p193e.p1545k.p1546a.p1556c.p1566i0.C23699a;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
/* renamed from: e.k.a.c.k0.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/k.class */
public final class C23745k {

    /* renamed from: a */
    public static final C23699a f65805a;

    /* renamed from: b */
    public static final C23946t f65806b;

    /* renamed from: c */
    public static final C23945s f65807c;

    static {
        C23946t.C23947a c23947a = C23946t.C23947a.f66285d;
        C23699a c23699a = new C23699a();
        f65805a = c23699a;
        f65806b = new C23946t(c23699a, c23699a.f66264f);
        C23957y c23957y = c23699a.f66264f;
        C23946t c23946t = new C23946t(c23699a, c23957y);
        AbstractC23383o abstractC23383o = c23957y.f66311l;
        AbstractC23383o abstractC23383o2 = abstractC23383o;
        if (abstractC23383o == null) {
            abstractC23383o2 = C23946t.f66278g;
        }
        C23946t.C23947a c23947a2 = abstractC23383o2 == null ? c23947a : new C23946t.C23947a(abstractC23383o2, null, null);
        C23946t.C23948b c23948b = C23946t.C23948b.f66289a;
        if (c23947a != c23947a2) {
            new C23946t(c23946t, c23946t.f66279a, c23947a2, c23948b);
        }
        f65807c = new C23945s(c23699a, c23699a.f66267i, c23699a.f66260b.m5914b(null, AbstractC23757l.class, C23887o.f66073e), null, null);
    }

    /* renamed from: a */
    public static AbstractC23757l m6153a(byte[] bArr) throws IOException {
        C23945s c23945s = f65807c;
        Objects.requireNonNull(c23945s);
        if (bArr != null) {
            C23624f c23624f = c23945s.f66270a;
            C23369e c23369e = c23945s.f66272c;
            AbstractC23376j m7087b = new C23406a(new C23396b(c23369e.m7216c(), bArr, true), bArr, 0, bArr.length).m7087b(c23369e.f64625d, c23369e.f64627f, c23369e.f64623b, c23369e.f64622a, c23369e.f64624c);
            c23624f.m6518v(m7087b, c23945s.f66276g);
            return (AbstractC23757l) c23945s.m5672c(m7087b);
        }
        throw new IllegalArgumentException(String.format("argument \"%s\" is null", "content"));
    }

    /* renamed from: b */
    public static byte[] m6152b(Object obj) throws IOException {
        byte[] bArr;
        C23699a c23699a = f65805a;
        Objects.requireNonNull(c23699a);
        C23348c c23348c = new C23348c(c23699a.f66259a.m7216c(), 500);
        try {
            EnumC23368d enumC23368d = EnumC23368d.UTF8;
            c23699a.m5682c("out", c23348c);
            AbstractC23372g m7215d = c23699a.f66259a.m7215d(c23348c, enumC23368d);
            c23699a.f66264f.m5652u(m7215d);
            c23699a.m5677h(m7215d, obj);
            byte[] m7247q = c23348c.m7247q();
            c23348c.m7248l();
            C23346a c23346a = c23348c.f64568a;
            if (c23346a != null && (bArr = c23348c.f64571d) != null) {
                c23346a.f64563a.set(2, bArr);
                c23348c.f64571d = null;
            }
            return m7247q;
        } catch (C23379k e) {
            throw e;
        } catch (IOException e2) {
            throw C23733k.m6162e(e2);
        }
    }
}
