package p193e.p1545k.p1546a.p1556c.p1569k0;

import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23869m;
/* renamed from: e.k.a.c.k0.t */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/t.class */
public class C23754t extends AbstractC23756v {

    /* renamed from: a */
    public final Object f65825a;

    public C23754t(Object obj) {
        this.f65825a = obj;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23756v, p193e.p1545k.p1546a.p1548b.AbstractC23388t
    /* renamed from: a */
    public EnumC23381m mo6146a() {
        return EnumC23381m.VALUE_EMBEDDED_OBJECT;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23736b, p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public final void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Object obj = this.f65825a;
        if (obj == null) {
            abstractC23425a0.m6880t(abstractC23372g);
        } else if (obj instanceof AbstractC23869m) {
            ((AbstractC23869m) obj).mo5714c(abstractC23372g, abstractC23425a0);
        } else if (obj != null) {
            abstractC23425a0.m6899A(obj.getClass(), true, null).mo5894f(obj, abstractC23372g, abstractC23425a0);
        } else if (abstractC23425a0.f65002l) {
            abstractC23372g.mo5888D0();
        } else {
            abstractC23425a0.f64998h.mo5894f(null, abstractC23372g, abstractC23425a0);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23754t)) {
            return false;
        }
        C23754t c23754t = (C23754t) obj;
        Object obj2 = this.f65825a;
        if (obj2 != null) {
            z = obj2.equals(c23754t.f65825a);
        } else if (c23754t.f65825a != null) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: f */
    public boolean mo6133f(boolean z) {
        Object obj = this.f65825a;
        boolean z2 = z;
        if (obj != null) {
            z2 = z;
            if (obj instanceof Boolean) {
                z2 = ((Boolean) obj).booleanValue();
            }
        }
        return z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [double] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: h */
    public double mo6131h(double d) {
        Object obj = this.f65825a;
        ?? r4 = d;
        if (obj instanceof Number) {
            r4 = ((Number) obj).doubleValue();
        }
        return r4;
    }

    public int hashCode() {
        return this.f65825a.hashCode();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: j */
    public int mo6129j(int i) {
        Object obj = this.f65825a;
        if (obj instanceof Number) {
            i = ((Number) obj).intValue();
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: l */
    public long mo6127l(long j) {
        Object obj = this.f65825a;
        ?? r4 = j;
        if (obj instanceof Number) {
            r4 = ((Number) obj).longValue();
        }
        return r4;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: m */
    public String mo6126m() {
        Object obj = this.f65825a;
        return obj == null ? AnalyticsConstants.NULL : obj.toString();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: v */
    public EnumC23747m mo6118v() {
        return EnumC23747m.POJO;
    }
}
