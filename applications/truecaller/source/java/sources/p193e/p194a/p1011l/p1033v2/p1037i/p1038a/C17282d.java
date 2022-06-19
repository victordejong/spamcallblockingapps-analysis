package p193e.p194a.p1011l.p1033v2.p1037i.p1038a;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1040c.C17290a;
import s1.z.c.l;
/* renamed from: e.a.l.v2.i.a.d */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/i/a/d.class */
public final class C17282d {

    /* renamed from: a */
    public final List<C17280b> f48490a;

    /* renamed from: b */
    public final List<C17290a> f48491b;

    /* renamed from: c */
    public final boolean f48492c;

    /* renamed from: d */
    public final String f48493d;

    /* renamed from: e */
    public final List<String> f48494e;

    /* renamed from: f */
    public final int f48495f;

    public C17282d() {
        this(null, null, false, null, null, 0, 63);
    }

    public C17282d(List<C17280b> list, List<C17290a> list2, boolean z, String str, List<String> list3, int i) {
        l.e(list, "buttons");
        l.e(list2, "offerButtons");
        l.e(list3, "offerDisclaimers");
        this.f48490a = list;
        this.f48491b = list2;
        this.f48492c = z;
        this.f48493d = str;
        this.f48494e = list3;
        this.f48495f = i;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C17282d(java.util.List r9, java.util.List r10, boolean r11, java.lang.String r12, java.util.List r13, int r14, int r15) {
        /*
            r8 = this;
            s1.u.s r0 = s1.u.s.a
            r16 = r0
            r0 = r15
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L12
            r0 = r16
            r9 = r0
            goto L12
        L12:
            r0 = r15
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L1f
            r0 = r16
            r10 = r0
            goto L1f
        L1f:
            r0 = r15
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L2b
            r0 = 0
            r11 = r0
            goto L2b
        L2b:
            r0 = r15
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L36
            r0 = 0
            r12 = r0
        L36:
            r0 = r15
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L41
            goto L45
        L41:
            r0 = r13
            r16 = r0
        L45:
            r0 = r15
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L53
            r0 = 0
            r14 = r0
            goto L53
        L53:
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r16
            r6 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17282d.<init>(java.util.List, java.util.List, boolean, java.lang.String, java.util.List, int, int):void");
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17282d)) {
                return false;
            }
            C17282d c17282d = (C17282d) obj;
            return l.a(this.f48490a, c17282d.f48490a) && l.a(this.f48491b, c17282d.f48491b) && this.f48492c == c17282d.f48492c && l.a(this.f48493d, c17282d.f48493d) && l.a(this.f48494e, c17282d.f48494e) && this.f48495f == c17282d.f48495f;
        }
        return true;
    }

    public int hashCode() {
        List<C17280b> list = this.f48490a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<C17290a> list2 = this.f48491b;
        int hashCode2 = list2 != null ? list2.hashCode() : 0;
        boolean z = this.f48492c;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        String str = this.f48493d;
        int hashCode3 = str != null ? str.hashCode() : 0;
        List<String> list3 = this.f48494e;
        if (list3 != null) {
            i = list3.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + (z2 ? 1 : 0)) * 31) + hashCode3) * 31) + i) * 31) + this.f48495f;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SubscriptionButtonGroup(buttons=");
        m8728C.append(this.f48490a);
        m8728C.append(", offerButtons=");
        m8728C.append(this.f48491b);
        m8728C.append(", showProrationNote=");
        m8728C.append(this.f48492c);
        m8728C.append(", disclaimer=");
        m8728C.append(this.f48493d);
        m8728C.append(", offerDisclaimers=");
        m8728C.append(this.f48494e);
        m8728C.append(", defaultSelectedOffer=");
        return C22128a.m8697J2(m8728C, this.f48495f, ")");
    }
}
