package p233s6;

import java.math.BigInteger;
import p243t6.C4413d;
/* renamed from: s6.m */
/* loaded from: classes-dex2jar.jar:s6/m.class */
public final class C4318m extends AbstractC4314i {

    /* renamed from: b */
    public static final Class<?>[] f13471b = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};

    /* renamed from: a */
    public Object f13472a;

    public C4318m(Boolean bool) {
        m1101g(bool);
    }

    public C4318m(Number number) {
        m1101g(number);
    }

    public C4318m(Object obj) {
        m1101g(obj);
    }

    public C4318m(String str) {
        m1101g(str);
    }

    /* renamed from: f */
    public static boolean m1102f(C4318m c4318m) {
        boolean z;
        Object obj = c4318m.f13472a;
        if (obj instanceof Number) {
            Number number = (Number) obj;
            if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p233s6.AbstractC4314i
    /* renamed from: a */
    public int mo1105a() {
        return this.f13472a instanceof Number ? m1103e().intValue() : Integer.parseInt(mo1104d());
    }

    @Override // p233s6.AbstractC4314i
    /* renamed from: d */
    public String mo1104d() {
        Object obj = this.f13472a;
        return obj instanceof Number ? m1103e().toString() : obj instanceof Boolean ? ((Boolean) obj).toString() : (String) obj;
    }

    /* renamed from: e */
    public Number m1103e() {
        Object obj = this.f13472a;
        return obj instanceof String ? new C4413d((String) obj) : (Number) obj;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C4318m.class != obj.getClass()) {
            return false;
        }
        C4318m c4318m = (C4318m) obj;
        if (this.f13472a == null) {
            if (c4318m.f13472a != null) {
                z = false;
            }
            return z;
        } else if (m1102f(this) && m1102f(c4318m)) {
            return m1103e().longValue() == c4318m.m1103e().longValue();
        } else {
            Object obj2 = this.f13472a;
            if (!(obj2 instanceof Number) || !(c4318m.f13472a instanceof Number)) {
                return obj2.equals(c4318m.f13472a);
            }
            double doubleValue = m1103e().doubleValue();
            double doubleValue2 = c4318m.m1103e().doubleValue();
            boolean z2 = true;
            if (doubleValue != doubleValue2) {
                z2 = Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
            }
            return z2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0065, code lost:
        if (r7 == false) goto L20;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1101g(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Character
            if (r0 == 0) goto L18
            r0 = r3
            r1 = r4
            java.lang.Character r1 = (java.lang.Character) r1
            char r1 = r1.charValue()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            r0.f13472a = r1
            goto L73
        L18:
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Number
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L68
            r0 = r4
            boolean r0 = r0 instanceof java.lang.String
            if (r0 == 0) goto L30
        L2a:
            r0 = 1
            r7 = r0
            goto L63
        L30:
            r0 = r4
            java.lang.Class r0 = r0.getClass()
            r8 = r0
            java.lang.Class<?>[] r0 = p233s6.C4318m.f13471b
            r9 = r0
            r0 = r9
            int r0 = r0.length
            r10 = r0
            r0 = 0
            r7 = r0
        L43:
            r0 = r7
            r1 = r10
            if (r0 >= r1) goto L60
            r0 = r9
            r1 = r7
            r0 = r0[r1]
            r1 = r8
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L5a
            goto L2a
        L5a:
            int r7 = r7 + 1
            goto L43
        L60:
            r0 = 0
            r7 = r0
        L63:
            r0 = r7
            if (r0 == 0) goto L6a
        L68:
            r0 = 1
            r6 = r0
        L6a:
            r0 = r6
            p124i4.C3102d.m2632g(r0)
            r0 = r3
            r1 = r4
            r0.f13472a = r1
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p233s6.C4318m.m1101g(java.lang.Object):void");
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    public int hashCode() {
        char doubleToLongBits;
        if (this.f13472a == null) {
            return 31;
        }
        if (m1102f(this)) {
            doubleToLongBits = m1103e().longValue();
        } else {
            Object obj = this.f13472a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(m1103e().doubleValue());
        }
        return (int) ((doubleToLongBits >>> ' ') ^ doubleToLongBits);
    }
}
