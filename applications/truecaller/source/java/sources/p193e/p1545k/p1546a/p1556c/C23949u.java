package p193e.p1545k.p1546a.p1556c;

import java.io.Serializable;
import p193e.p1545k.p1546a.p1547a.EnumC23310j0;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
/* renamed from: e.k.a.c.u */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/u.class */
public class C23949u implements Serializable {

    /* renamed from: h */
    public static final C23949u f66290h = new C23949u(Boolean.TRUE, null, null, null, null, null, null);

    /* renamed from: i */
    public static final C23949u f66291i = new C23949u(Boolean.FALSE, null, null, null, null, null, null);

    /* renamed from: j */
    public static final C23949u f66292j = new C23949u(null, null, null, null, null, null, null);

    /* renamed from: a */
    public final Boolean f66293a;

    /* renamed from: b */
    public final String f66294b;

    /* renamed from: c */
    public final Integer f66295c;

    /* renamed from: d */
    public final String f66296d;

    /* renamed from: e */
    public final transient C23950a f66297e;

    /* renamed from: f */
    public EnumC23310j0 f66298f;

    /* renamed from: g */
    public EnumC23310j0 f66299g;

    /* renamed from: e.k.a.c.u$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/u$a.class */
    public static final class C23950a {

        /* renamed from: a */
        public final AbstractC23663i f66300a;

        /* renamed from: b */
        public final boolean f66301b;

        public C23950a(AbstractC23663i abstractC23663i, boolean z) {
            this.f66300a = abstractC23663i;
            this.f66301b = z;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0020, code lost:
        if (r7.isEmpty() != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C23949u(java.lang.Boolean r4, java.lang.String r5, java.lang.Integer r6, java.lang.String r7, p193e.p1545k.p1546a.p1556c.C23949u.C23950a r8, p193e.p1545k.p1546a.p1547a.EnumC23310j0 r9, p193e.p1545k.p1546a.p1547a.EnumC23310j0 r10) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r3
            r1 = r4
            r0.f66293a = r1
            r0 = r3
            r1 = r5
            r0.f66294b = r1
            r0 = r3
            r1 = r6
            r0.f66295c = r1
            r0 = r7
            if (r0 == 0) goto L23
            r0 = r7
            r4 = r0
            r0 = r7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L25
        L23:
            r0 = 0
            r4 = r0
        L25:
            r0 = r3
            r1 = r4
            r0.f66296d = r1
            r0 = r3
            r1 = r8
            r0.f66297e = r1
            r0 = r3
            r1 = r9
            r0.f66298f = r1
            r0 = r3
            r1 = r10
            r0.f66299g = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.C23949u.<init>(java.lang.Boolean, java.lang.String, java.lang.Integer, java.lang.String, e.k.a.c.u$a, e.k.a.a.j0, e.k.a.a.j0):void");
    }

    /* renamed from: a */
    public static C23949u m5668a(Boolean bool, String str, Integer num, String str2) {
        if (str == null && num == null && str2 == null) {
            if (bool == null) {
                return f66292j;
            }
            return bool.booleanValue() ? f66290h : f66291i;
        }
        return new C23949u(bool, str, num, str2, null, null, null);
    }

    /* renamed from: b */
    public C23949u m5667b(C23950a c23950a) {
        return new C23949u(this.f66293a, this.f66294b, this.f66295c, this.f66296d, c23950a, this.f66298f, this.f66299g);
    }

    /* renamed from: c */
    public C23949u m5666c(EnumC23310j0 enumC23310j0, EnumC23310j0 enumC23310j02) {
        return new C23949u(this.f66293a, this.f66294b, this.f66295c, this.f66296d, this.f66297e, enumC23310j0, enumC23310j02);
    }

    public Object readResolve() {
        if (this.f66294b == null && this.f66295c == null && this.f66296d == null && this.f66297e == null && this.f66298f == null && this.f66299g == null) {
            Boolean bool = this.f66293a;
            if (bool == null) {
                return f66292j;
            }
            return bool.booleanValue() ? f66290h : f66291i;
        }
        return this;
    }
}
