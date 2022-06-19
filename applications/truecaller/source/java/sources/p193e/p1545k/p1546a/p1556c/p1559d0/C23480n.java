package p193e.p1545k.p1546a.p1556c.p1559d0;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.HashMap;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23616b;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23923m;
/* renamed from: e.k.a.c.d0.n */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/n.class */
public final class C23480n implements Serializable {

    /* renamed from: b */
    public final HashMap<AbstractC23698i, AbstractC23700j<Object>> f65159b = new HashMap<>(8);

    /* renamed from: a */
    public final C23923m<AbstractC23698i, AbstractC23700j<Object>> f65158a = new C23923m<>(Math.min(64, 500), 2000);

    /* renamed from: a */
    public AbstractC23700j<Object> m6786a(AbstractC23632g abstractC23632g, AbstractC23481o abstractC23481o, AbstractC23698i abstractC23698i) throws C23733k {
        try {
            AbstractC23700j<Object> m6785b = m6785b(abstractC23632g, abstractC23481o, abstractC23698i);
            if (m6785b == null) {
                return null;
            }
            boolean z = !m6782e(abstractC23698i) && m6785b.mo6222n();
            if (m6785b instanceof AbstractC23485s) {
                this.f65159b.put(abstractC23698i, m6785b);
                ((AbstractC23485s) m6785b).mo6548b(abstractC23632g);
                this.f65159b.remove(abstractC23698i);
            }
            if (z) {
                this.f65158a.m5729a(abstractC23698i, m6785b);
            }
            return m6785b;
        } catch (IllegalArgumentException e) {
            throw new C23733k(abstractC23632g.f65505g, C23914g.m5757j(e), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0167, code lost:
        if (p193e.p1545k.p1546a.p1556c.p1574n0.C23914g.m5745v(r0) != false) goto L54;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.AbstractC23700j<java.lang.Object> m6785b(p193e.p1545k.p1546a.p1556c.AbstractC23632g r18, p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23481o r19, p193e.p1545k.p1546a.p1556c.AbstractC23698i r20) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            Method dump skipped, instructions count: 1399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.C23480n.m6785b(e.k.a.c.g, e.k.a.c.d0.o, e.k.a.c.i):e.k.a.c.j");
    }

    /* JADX WARN: Code restructure failed: missing block: B:144:0x04a2, code lost:
        if (r0 == null) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0562, code lost:
        if (r12.size() == 0) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x0d87, code lost:
        if (r13 != null) goto L455;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x1025, code lost:
        if (r0.endsWith("DataSource") != false) goto L551;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0cf9  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0d47  */
    /* JADX WARN: Removed duplicated region for block: B:518:0x0f9d  */
    /* JADX WARN: Removed duplicated region for block: B:522:0x0faa  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x107a  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.AbstractC23700j<?> m6784c(p193e.p1545k.p1546a.p1556c.AbstractC23632g r12, p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23481o r13, p193e.p1545k.p1546a.p1556c.AbstractC23698i r14, p193e.p1545k.p1546a.p1556c.AbstractC23444c r15) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            Method dump skipped, instructions count: 4346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.C23480n.m6784c(e.k.a.c.g, e.k.a.c.d0.o, e.k.a.c.i, e.k.a.c.c):e.k.a.c.j");
    }

    /* renamed from: d */
    public AbstractC23700j<Object> m6783d(AbstractC23698i abstractC23698i) {
        if (abstractC23698i != null) {
            if (!m6782e(abstractC23698i)) {
                return this.f65158a.f66180b.get(abstractC23698i);
            }
            return null;
        }
        throw new IllegalArgumentException("Null JavaType passed");
    }

    /* renamed from: e */
    public final boolean m6782e(AbstractC23698i abstractC23698i) {
        if (abstractC23698i.mo5931z()) {
            AbstractC23698i mo5948k = abstractC23698i.mo5948k();
            if (mo5948k != null && (mo5948k.f65730c != null || mo5948k.f65731d != null)) {
                return true;
            }
            return abstractC23698i.mo5972F() && abstractC23698i.mo5970o().f65730c != null;
        }
        return false;
    }

    /* renamed from: f */
    public AbstractC23700j<Object> m6781f(AbstractC23632g abstractC23632g, AbstractC23481o abstractC23481o, AbstractC23698i abstractC23698i) throws C23733k {
        AbstractC23700j<Object> abstractC23700j;
        AbstractC23700j<Object> abstractC23700j2;
        AbstractC23700j<Object> m6783d = m6783d(abstractC23698i);
        AbstractC23700j<Object> abstractC23700j3 = m6783d;
        if (m6783d == null) {
            synchronized (this.f65159b) {
                AbstractC23700j<Object> m6783d2 = m6783d(abstractC23698i);
                if (m6783d2 != null) {
                    abstractC23700j = m6783d2;
                } else {
                    int size = this.f65159b.size();
                    if (size <= 0 || (abstractC23700j2 = this.f65159b.get(abstractC23698i)) == null) {
                        abstractC23700j = m6786a(abstractC23632g, abstractC23481o, abstractC23698i);
                        if (size == 0 && this.f65159b.size() > 0) {
                            this.f65159b.clear();
                        }
                    } else {
                        abstractC23700j = abstractC23700j2;
                    }
                }
            }
            abstractC23700j3 = abstractC23700j;
            if (abstractC23700j == null) {
                Class<?> cls = abstractC23698i.f65728a;
                Annotation[] annotationArr = C23914g.f66156a;
                if (!((cls.getModifiers() & 1536) == 0)) {
                    throw new C23616b(abstractC23632g.f65505g, "Cannot find a Value deserializer for abstract type " + abstractC23698i, abstractC23698i);
                }
                throw new C23616b(abstractC23632g.f65505g, "Cannot find a Value deserializer for type " + abstractC23698i, abstractC23698i);
            }
        }
        return abstractC23700j3;
    }

    public Object writeReplace() {
        this.f65159b.clear();
        return this;
    }
}
