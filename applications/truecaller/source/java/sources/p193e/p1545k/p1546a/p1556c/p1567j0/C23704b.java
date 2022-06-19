package p193e.p1545k.p1546a.p1556c.p1567j0;

import com.razorpay.AnalyticsConstants;
import java.io.Serializable;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.k.a.c.j0.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/b.class */
public final class C23704b implements Serializable {

    /* renamed from: a */
    public final Class<?> f65735a;

    /* renamed from: b */
    public final int f65736b;

    /* renamed from: c */
    public String f65737c;

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0033, code lost:
        if (r6.isEmpty() != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C23704b(java.lang.Class<?> r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f65735a = r1
            r0 = r5
            java.lang.String r0 = r0.getName()
            int r0 = r0.hashCode()
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L1b
            r0 = 0
            r8 = r0
            goto L21
        L1b:
            r0 = r6
            int r0 = r0.hashCode()
            r8 = r0
        L21:
            r0 = r4
            r1 = r7
            r2 = r8
            int r1 = r1 + r2
            r0.f65736b = r1
            r0 = r6
            if (r0 == 0) goto L36
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L38
        L36:
            r0 = 0
            r5 = r0
        L38:
            r0 = r4
            r1 = r5
            r0.f65737c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1567j0.C23704b.<init>(java.lang.Class, java.lang.String):void");
    }

    /* renamed from: a */
    public boolean m6218a() {
        return this.f65737c != null;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != C23704b.class) {
            return false;
        }
        C23704b c23704b = (C23704b) obj;
        if (this.f65735a != c23704b.f65735a || !Objects.equals(this.f65737c, c23704b.f65737c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f65736b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[NamedType, class ");
        C22128a.m8545z0(this.f65735a, m8728C, ", name: ");
        return C22128a.m8618h(m8728C, this.f65737c == null ? AnalyticsConstants.NULL : C22128a.m8618h(C22128a.m8728C("'"), this.f65737c, "'"), "]");
    }
}
