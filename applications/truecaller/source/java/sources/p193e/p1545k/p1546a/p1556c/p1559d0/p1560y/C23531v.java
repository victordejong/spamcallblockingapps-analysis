package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.io.Serializable;
import java.util.Objects;
import p193e.p1545k.p1546a.p1547a.AbstractC23316k0;
import p193e.p1545k.p1546a.p1547a.AbstractC23323n0;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
/* renamed from: e.k.a.c.d0.y.v */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/v.class */
public class C23531v implements Serializable {

    /* renamed from: a */
    public final AbstractC23698i f65290a;

    /* renamed from: b */
    public final C23951v f65291b;

    /* renamed from: c */
    public final AbstractC23316k0<?> f65292c;

    /* renamed from: d */
    public final AbstractC23323n0 f65293d;

    /* renamed from: e */
    public final AbstractC23700j<Object> f65294e;

    /* renamed from: f */
    public final AbstractC23488u f65295f;

    public C23531v(AbstractC23698i abstractC23698i, C23951v c23951v, AbstractC23316k0<?> abstractC23316k0, AbstractC23700j<?> abstractC23700j, AbstractC23488u abstractC23488u, AbstractC23323n0 abstractC23323n0) {
        this.f65290a = abstractC23698i;
        this.f65291b = c23951v;
        this.f65292c = abstractC23316k0;
        this.f65293d = abstractC23323n0;
        this.f65294e = abstractC23700j;
        this.f65295f = abstractC23488u;
    }

    /* renamed from: a */
    public static C23531v m6691a(AbstractC23698i abstractC23698i, C23951v c23951v, AbstractC23316k0<?> abstractC23316k0, AbstractC23700j<?> abstractC23700j, AbstractC23488u abstractC23488u, AbstractC23323n0 abstractC23323n0) {
        return new C23531v(abstractC23698i, c23951v, abstractC23316k0, abstractC23700j, abstractC23488u, abstractC23323n0);
    }

    /* renamed from: b */
    public boolean m6690b() {
        Objects.requireNonNull(this.f65292c);
        return false;
    }

    /* renamed from: c */
    public Object m6689c(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        return this.f65294e.mo6232d(abstractC23376j, abstractC23632g);
    }
}
