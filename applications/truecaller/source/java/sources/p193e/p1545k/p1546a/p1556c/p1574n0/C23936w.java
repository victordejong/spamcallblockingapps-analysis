package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23384p;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23869m;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
/* renamed from: e.k.a.c.n0.w */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/w.class */
public class C23936w implements AbstractC23869m {

    /* renamed from: a */
    public Object f66202a;

    public C23936w(String str) {
        this.f66202a = str;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: b */
    public void mo5715b(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        Object obj = this.f66202a;
        if (obj instanceof AbstractC23869m) {
            ((AbstractC23869m) obj).mo5715b(abstractC23372g, abstractC23425a0, abstractC23712h);
        } else if (!(obj instanceof AbstractC23384p)) {
        } else {
            mo5714c(abstractC23372g, abstractC23425a0);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Object obj = this.f66202a;
        if (obj instanceof AbstractC23869m) {
            ((AbstractC23869m) obj).mo5714c(abstractC23372g, abstractC23425a0);
        } else if (obj instanceof AbstractC23384p) {
            abstractC23372g.mo7020B1((AbstractC23384p) obj);
        } else {
            abstractC23372g.mo5886E1(String.valueOf(obj));
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C23936w)) {
            return false;
        }
        Object obj2 = this.f66202a;
        Object obj3 = ((C23936w) obj).f66202a;
        if (obj2 == obj3) {
            return true;
        }
        if (obj2 == null || !obj2.equals(obj3)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        Object obj = this.f66202a;
        return obj == null ? 0 : obj.hashCode();
    }

    public String toString() {
        return String.format("[RawValue of type %s]", C23914g.m5761f(this.f66202a));
    }
}
