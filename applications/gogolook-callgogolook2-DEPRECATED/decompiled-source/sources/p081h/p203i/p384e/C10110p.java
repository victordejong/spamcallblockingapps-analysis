package p081h.p203i.p384e;

import p081h.p203i.p384e.p386w.C10123a;
import p081h.p203i.p384e.p386w.C10145f;
/* renamed from: h.i.e.p */
/* loaded from: classes2-dex2jar.jar:h/i/e/p.class */
public final class C10110p extends AbstractC10104j {

    /* renamed from: a */
    public final Object f22834a;

    public C10110p(Boolean bool) {
        C10123a.m13355a(bool);
        this.f22834a = bool;
    }

    public C10110p(Number number) {
        C10123a.m13355a(number);
        this.f22834a = number;
    }

    public C10110p(String str) {
        C10123a.m13355a(str);
        this.f22834a = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
        if ((r0 instanceof java.lang.Byte) != false) goto L_0x003c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m13362a(p081h.p203i.p384e.C10110p r2) {
        /*
            r0 = r2
            java.lang.Object r0 = r0.f22834a
            r2 = r0
            r0 = r2
            boolean r0 = r0 instanceof java.lang.Number
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L_0x003e
            r0 = r2
            java.lang.Number r0 = (java.lang.Number) r0
            r2 = r0
            r0 = r2
            boolean r0 = r0 instanceof java.math.BigInteger
            if (r0 != 0) goto L_0x003c
            r0 = r2
            boolean r0 = r0 instanceof java.lang.Long
            if (r0 != 0) goto L_0x003c
            r0 = r2
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto L_0x003c
            r0 = r2
            boolean r0 = r0 instanceof java.lang.Short
            if (r0 != 0) goto L_0x003c
            r0 = r4
            r5 = r0
            r0 = r2
            boolean r0 = r0 instanceof java.lang.Byte
            if (r0 == 0) goto L_0x003e
        L_0x003c:
            r0 = 1
            r5 = r0
        L_0x003e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p384e.C10110p.m13362a(h.i.e.p):boolean");
    }

    /* renamed from: A */
    public Number m13366A() {
        Object obj = this.f22834a;
        return obj instanceof String ? new C10145f((String) obj) : (Number) obj;
    }

    /* renamed from: C */
    public boolean m13365C() {
        return this.f22834a instanceof Boolean;
    }

    /* renamed from: D */
    public boolean m13364D() {
        return this.f22834a instanceof Number;
    }

    /* renamed from: E */
    public boolean m13363E() {
        return this.f22834a instanceof String;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        boolean z2 = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C10110p.class != obj.getClass()) {
            return false;
        }
        C10110p pVar = (C10110p) obj;
        if (this.f22834a == null) {
            if (pVar.f22834a != null) {
                z2 = false;
            }
            return z2;
        } else if (m13362a(this) && m13362a(pVar)) {
            if (m13366A().longValue() != pVar.m13366A().longValue()) {
                z = false;
            }
            return z;
        } else if (!(this.f22834a instanceof Number) || !(pVar.f22834a instanceof Number)) {
            return this.f22834a.equals(pVar.f22834a);
        } else {
            double doubleValue = m13366A().doubleValue();
            double doubleValue2 = pVar.m13366A().doubleValue();
            boolean z3 = true;
            if (doubleValue != doubleValue2) {
                z3 = Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
            }
            return z3;
        }
    }

    public int hashCode() {
        long doubleToLongBits;
        if (this.f22834a == null) {
            return 31;
        }
        if (m13362a(this)) {
            doubleToLongBits = m13366A().longValue();
        } else {
            Object obj = this.f22834a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(m13366A().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    @Override // p081h.p203i.p384e.AbstractC10104j
    /* renamed from: r */
    public String mo13361r() {
        return m13364D() ? m13366A().toString() : m13365C() ? ((Boolean) this.f22834a).toString() : (String) this.f22834a;
    }

    /* renamed from: w */
    public boolean m13360w() {
        return m13365C() ? ((Boolean) this.f22834a).booleanValue() : Boolean.parseBoolean(mo13361r());
    }

    /* renamed from: x */
    public double m13359x() {
        return m13364D() ? m13366A().doubleValue() : Double.parseDouble(mo13361r());
    }

    /* renamed from: y */
    public int m13358y() {
        return m13364D() ? m13366A().intValue() : Integer.parseInt(mo13361r());
    }

    /* renamed from: z */
    public long m13357z() {
        return m13364D() ? m13366A().longValue() : Long.parseLong(mo13361r());
    }
}
