package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23757l;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
/* renamed from: e.k.a.c.k0.s */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/s.class */
public class C23753s extends AbstractC23740f<C23753s> implements Serializable {

    /* renamed from: b */
    public final Map<String, AbstractC23757l> f65824b = new LinkedHashMap();

    public C23753s(C23746l c23746l) {
        super(c23746l);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: H */
    public final boolean mo6138H() {
        return true;
    }

    /* renamed from: N */
    public AbstractC23757l m6149N(String str, AbstractC23757l abstractC23757l) {
        C23751q c23751q = abstractC23757l;
        if (abstractC23757l == null) {
            m6154M();
            c23751q = C23751q.f65823a;
        }
        return this.f65824b.put(str, c23751q);
    }

    /* renamed from: O */
    public <T extends AbstractC23757l> T m6148O(String str, AbstractC23757l abstractC23757l) {
        C23751q c23751q = abstractC23757l;
        if (abstractC23757l == null) {
            m6154M();
            c23751q = C23751q.f65823a;
        }
        this.f65824b.put(str, c23751q);
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23388t
    /* renamed from: a */
    public EnumC23381m mo6146a() {
        return EnumC23381m.START_OBJECT;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: b */
    public void mo5715b(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        boolean z = abstractC23425a0 != null && !abstractC23425a0.m6889M(EnumC23958z.WRITE_EMPTY_JSON_ARRAYS);
        C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, abstractC23712h.m6216d(this, EnumC23381m.START_OBJECT));
        for (Map.Entry<String, AbstractC23757l> entry : this.f65824b.entrySet()) {
            AbstractC23736b abstractC23736b = (AbstractC23736b) entry.getValue();
            if (!z || !abstractC23736b.mo6115y() || !abstractC23736b.mo5989d(abstractC23425a0)) {
                abstractC23372g.mo5889B0(entry.getKey());
                abstractC23736b.mo5714c(abstractC23372g, abstractC23425a0);
            }
        }
        abstractC23712h.mo6001f(abstractC23372g, mo6002e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23736b, p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        boolean z = abstractC23425a0 != null && !abstractC23425a0.m6889M(EnumC23958z.WRITE_EMPTY_JSON_ARRAYS);
        abstractC23372g.mo5874O1(this);
        for (Map.Entry<String, AbstractC23757l> entry : this.f65824b.entrySet()) {
            AbstractC23736b abstractC23736b = (AbstractC23736b) entry.getValue();
            if (!z || !abstractC23736b.mo6115y() || !abstractC23736b.mo5989d(abstractC23425a0)) {
                abstractC23372g.mo5889B0(entry.getKey());
                abstractC23736b.mo5714c(abstractC23372g, abstractC23425a0);
            }
        }
        abstractC23372g.mo5840t0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23869m.AbstractC23870a
    /* renamed from: d */
    public boolean mo5989d(AbstractC23425a0 abstractC23425a0) {
        return this.f65824b.isEmpty();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23753s)) {
            return false;
        }
        return this.f65824b.equals(((C23753s) obj).f65824b);
    }

    public int hashCode() {
        return this.f65824b.hashCode();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: r */
    public Iterator<AbstractC23757l> mo6121r() {
        return this.f65824b.values().iterator();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public int size() {
        return this.f65824b.size();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: t */
    public Iterator<String> mo6120t() {
        return this.f65824b.keySet().iterator();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: u */
    public AbstractC23757l mo6119u(String str) {
        return this.f65824b.get(str);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: v */
    public EnumC23747m mo6118v() {
        return EnumC23747m.OBJECT;
    }
}
