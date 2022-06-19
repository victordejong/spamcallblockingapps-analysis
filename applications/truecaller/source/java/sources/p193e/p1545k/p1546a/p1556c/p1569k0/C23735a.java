package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23757l;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
/* renamed from: e.k.a.c.k0.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/a.class */
public class C23735a extends AbstractC23740f<C23735a> implements Serializable {

    /* renamed from: b */
    public final List<AbstractC23757l> f65783b = new ArrayList();

    public C23735a(C23746l c23746l) {
        super(c23746l);
    }

    /* renamed from: N */
    public C23735a m6155N(AbstractC23757l abstractC23757l) {
        C23751q c23751q = abstractC23757l;
        if (abstractC23757l == null) {
            m6154M();
            c23751q = C23751q.f65823a;
        }
        this.f65783b.add(c23751q);
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23388t
    /* renamed from: a */
    public EnumC23381m mo6146a() {
        return EnumC23381m.START_ARRAY;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: b */
    public void mo5715b(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, abstractC23712h.m6216d(this, EnumC23381m.START_ARRAY));
        Iterator<AbstractC23757l> it = this.f65783b.iterator();
        while (it.hasNext()) {
            ((AbstractC23736b) it.next()).mo5714c(abstractC23372g, abstractC23425a0);
        }
        abstractC23712h.mo6001f(abstractC23372g, mo6002e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23736b, p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        List<AbstractC23757l> list = this.f65783b;
        int size = list.size();
        abstractC23372g.mo5876L1(this, size);
        for (int i = 0; i < size; i++) {
            ((AbstractC23736b) list.get(i)).mo5714c(abstractC23372g, abstractC23425a0);
        }
        abstractC23372g.mo5848p0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23869m.AbstractC23870a
    /* renamed from: d */
    public boolean mo5989d(AbstractC23425a0 abstractC23425a0) {
        return this.f65783b.isEmpty();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23735a)) {
            return false;
        }
        return this.f65783b.equals(((C23735a) obj).f65783b);
    }

    public int hashCode() {
        return this.f65783b.hashCode();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: r */
    public Iterator<AbstractC23757l> mo6121r() {
        return this.f65783b.iterator();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public int size() {
        return this.f65783b.size();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: u */
    public AbstractC23757l mo6119u(String str) {
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: v */
    public EnumC23747m mo6118v() {
        return EnumC23747m.ARRAY;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: y */
    public boolean mo6115y() {
        return true;
    }
}
