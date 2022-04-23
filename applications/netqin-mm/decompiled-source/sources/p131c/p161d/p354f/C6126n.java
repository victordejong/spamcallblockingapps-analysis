package p131c.p161d.p354f;

import com.google.gson.internal.LazilyParsedNumber;
import p131c.p161d.p354f.p356t.C6137a;
/* renamed from: c.d.f.n */
/* loaded from: classes2-dex2jar.jar:c/d/f/n.class */
public final class C6126n extends AbstractC6123k {

    /* renamed from: a */
    public final Object f19646a;

    public C6126n(Boolean bool) {
        C6137a.m21941a(bool);
        this.f19646a = bool;
    }

    public C6126n(Number number) {
        C6137a.m21941a(number);
        this.f19646a = number;
    }

    public C6126n(String str) {
        C6137a.m21941a(str);
        this.f19646a = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
        if ((r0 instanceof java.lang.Byte) != false) goto L_0x003c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m21952a(p131c.p161d.p354f.C6126n r2) {
        /*
            r0 = r2
            java.lang.Object r0 = r0.f19646a
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
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p354f.C6126n.m21952a(c.d.f.n):boolean");
    }

    public boolean equals(Object obj) {
        boolean z = true;
        boolean z2 = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C6126n.class != obj.getClass()) {
            return false;
        }
        C6126n nVar = (C6126n) obj;
        if (this.f19646a == null) {
            if (nVar.f19646a != null) {
                z2 = false;
            }
            return z2;
        } else if (m21952a(this) && m21952a(nVar)) {
            if (m21947q().longValue() != nVar.m21947q().longValue()) {
                z = false;
            }
            return z;
        } else if (!(this.f19646a instanceof Number) || !(nVar.f19646a instanceof Number)) {
            return this.f19646a.equals(nVar.f19646a);
        } else {
            double doubleValue = m21947q().doubleValue();
            double doubleValue2 = nVar.m21947q().doubleValue();
            boolean z3 = true;
            if (doubleValue != doubleValue2) {
                z3 = Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
            }
            return z3;
        }
    }

    public int hashCode() {
        long doubleToLongBits;
        if (this.f19646a == null) {
            return 31;
        }
        if (m21952a(this)) {
            doubleToLongBits = m21947q().longValue();
        } else {
            Object obj = this.f19646a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(m21947q().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    /* renamed from: k */
    public boolean m21951k() {
        return m21945u() ? ((Boolean) this.f19646a).booleanValue() : Boolean.parseBoolean(m21946t());
    }

    /* renamed from: m */
    public double m21950m() {
        return m21944v() ? m21947q().doubleValue() : Double.parseDouble(m21946t());
    }

    /* renamed from: n */
    public int m21949n() {
        return m21944v() ? m21947q().intValue() : Integer.parseInt(m21946t());
    }

    /* renamed from: o */
    public long m21948o() {
        return m21944v() ? m21947q().longValue() : Long.parseLong(m21946t());
    }

    /* renamed from: q */
    public Number m21947q() {
        Object obj = this.f19646a;
        return obj instanceof String ? new LazilyParsedNumber((String) this.f19646a) : (Number) obj;
    }

    /* renamed from: t */
    public String m21946t() {
        return m21944v() ? m21947q().toString() : m21945u() ? ((Boolean) this.f19646a).toString() : (String) this.f19646a;
    }

    /* renamed from: u */
    public boolean m21945u() {
        return this.f19646a instanceof Boolean;
    }

    /* renamed from: v */
    public boolean m21944v() {
        return this.f19646a instanceof Number;
    }

    /* renamed from: y */
    public boolean m21943y() {
        return this.f19646a instanceof String;
    }
}
