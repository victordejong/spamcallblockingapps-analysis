package p193e.p194a.p1405z2;

import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import javax.inject.Inject;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import s1.z.c.l;
/* renamed from: e.a.z2.b */
/* loaded from: classes5-dex2jar.jar:e/a/z2/b.class */
public final class C21848b implements AbstractC21847a {

    /* renamed from: a */
    public final boolean f60729a;

    @Inject
    public C21848b(AbstractC8426f abstractC8426f) {
        l.e(abstractC8426f, "regionUtils");
        this.f60729a = abstractC8426f.mo28594d();
    }

    @Override // p193e.p194a.p1405z2.AbstractC21847a
    /* renamed from: a */
    public boolean mo8994a(Contact contact) {
        boolean z = true;
        if (contact == null || !m8990e(!contact.m35570C0(), contact.m35495t0(), contact.m35516g0(1))) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0092, code lost:
        if ((r4.m35516g0(16) && !r4.m35574A0() && !r4.m35516g0(32) && !r4.m35516g0(256)) != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a4, code lost:
        if (r6 == false) goto L49;
     */
    @Override // p193e.p194a.p1405z2.AbstractC21847a
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo8993b(com.truecaller.data.entity.Contact r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L1b
            r0 = r4
            r1 = 2
            boolean r0 = r0.m35516g0(r1)
            r1 = 1
            if (r0 != r1) goto L1b
            r0 = r4
            boolean r0 = r0.m35495t0()
            if (r0 != 0) goto L1b
            r0 = 1
            r6 = r0
            goto L1d
        L1b:
            r0 = 0
            r6 = r0
        L1d:
            r0 = r6
            if (r0 != 0) goto La7
            r0 = r4
            if (r0 == 0) goto La1
            r0 = r4
            r1 = 128(0x80, float:1.794E-43)
            boolean r0 = r0.m35516g0(r1)
            if (r0 == 0) goto L36
            r0 = r4
            boolean r0 = r0.m35574A0()
            if (r0 != 0) goto L5c
        L36:
            r0 = r4
            r1 = 128(0x80, float:1.794E-43)
            boolean r0 = r0.m35516g0(r1)
            if (r0 == 0) goto L61
            r0 = r4
            r1 = 16
            boolean r0 = r0.m35516g0(r1)
            if (r0 != 0) goto L61
            r0 = r4
            r1 = 32
            boolean r0 = r0.m35516g0(r1)
            if (r0 != 0) goto L61
            r0 = r4
            r1 = 256(0x100, float:3.59E-43)
            boolean r0 = r0.m35516g0(r1)
            if (r0 != 0) goto L61
        L5c:
            r0 = 1
            r6 = r0
            goto L63
        L61:
            r0 = 0
            r6 = r0
        L63:
            r0 = r6
            if (r0 != 0) goto L95
            r0 = r4
            r1 = 16
            boolean r0 = r0.m35516g0(r1)
            if (r0 == 0) goto L8f
            r0 = r4
            boolean r0 = r0.m35574A0()
            if (r0 != 0) goto L8f
            r0 = r4
            r1 = 32
            boolean r0 = r0.m35516g0(r1)
            if (r0 != 0) goto L8f
            r0 = r4
            r1 = 256(0x100, float:3.59E-43)
            boolean r0 = r0.m35516g0(r1)
            if (r0 != 0) goto L8f
            r0 = 1
            r6 = r0
            goto L91
        L8f:
            r0 = 0
            r6 = r0
        L91:
            r0 = r6
            if (r0 == 0) goto La1
        L95:
            r0 = r4
            boolean r0 = r0.m35495t0()
            if (r0 != 0) goto La1
            r0 = 1
            r6 = r0
            goto La3
        La1:
            r0 = 0
            r6 = r0
        La3:
            r0 = r6
            if (r0 == 0) goto La9
        La7:
            r0 = 1
            r5 = r0
        La9:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1405z2.C21848b.mo8993b(com.truecaller.data.entity.Contact):boolean");
    }

    @Override // p193e.p194a.p1405z2.AbstractC21847a
    /* renamed from: c */
    public boolean mo8992c(Participant participant) {
        l.e(participant, "participant");
        boolean z = false;
        if (participant.f11569b == 0) {
            String str = participant.f11579l;
            z = false;
            if (m8990e(!(str == null || str.length() == 0), participant.m35447m(), participant.m35451h(1))) {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x009c, code lost:
        if ((r4.m35451h(16) && !r4.m35446n() && !r4.m35451h(32) && !r4.m35451h(256)) != false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b9  */
    @Override // p193e.p194a.p1405z2.AbstractC21847a
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo8991d(com.truecaller.data.entity.messaging.Participant r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "participant"
            s1.z.c.l.e(r0, r1)
            r0 = r4
            r1 = 2
            boolean r0 = r0.m35451h(r1)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L1f
            r0 = r4
            boolean r0 = r0.m35447m()
            if (r0 != 0) goto L1f
            r0 = 1
            r7 = r0
            goto L22
        L1f:
            r0 = 0
            r7 = r0
        L22:
            r0 = r6
            r5 = r0
            r0 = r7
            if (r0 != 0) goto Lbb
            r0 = r4
            r1 = 128(0x80, float:1.794E-43)
            boolean r0 = r0.m35451h(r1)
            if (r0 == 0) goto L3a
            r0 = r4
            boolean r0 = r0.m35446n()
            if (r0 != 0) goto L60
        L3a:
            r0 = r4
            r1 = 128(0x80, float:1.794E-43)
            boolean r0 = r0.m35451h(r1)
            if (r0 == 0) goto L66
            r0 = r4
            r1 = 16
            boolean r0 = r0.m35451h(r1)
            if (r0 != 0) goto L66
            r0 = r4
            r1 = 32
            boolean r0 = r0.m35451h(r1)
            if (r0 != 0) goto L66
            r0 = r4
            r1 = 256(0x100, float:3.59E-43)
            boolean r0 = r0.m35451h(r1)
            if (r0 != 0) goto L66
        L60:
            r0 = 1
            r7 = r0
            goto L69
        L66:
            r0 = 0
            r7 = r0
        L69:
            r0 = r7
            if (r0 != 0) goto L9f
            r0 = r4
            r1 = 16
            boolean r0 = r0.m35451h(r1)
            if (r0 == 0) goto L97
            r0 = r4
            boolean r0 = r0.m35446n()
            if (r0 != 0) goto L97
            r0 = r4
            r1 = 32
            boolean r0 = r0.m35451h(r1)
            if (r0 != 0) goto L97
            r0 = r4
            r1 = 256(0x100, float:3.59E-43)
            boolean r0 = r0.m35451h(r1)
            if (r0 != 0) goto L97
            r0 = 1
            r7 = r0
            goto L9a
        L97:
            r0 = 0
            r7 = r0
        L9a:
            r0 = r7
            if (r0 == 0) goto Lac
        L9f:
            r0 = r4
            boolean r0 = r0.m35447m()
            if (r0 != 0) goto Lac
            r0 = 1
            r7 = r0
            goto Laf
        Lac:
            r0 = 0
            r7 = r0
        Laf:
            r0 = r7
            if (r0 == 0) goto Lb9
            r0 = r6
            r5 = r0
            goto Lbb
        Lb9:
            r0 = 0
            r5 = r0
        Lbb:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1405z2.C21848b.mo8991d(com.truecaller.data.entity.messaging.Participant):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003c, code lost:
        if (r4 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
        if (r6 == false) goto L16;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8990e(boolean r4, boolean r5, boolean r6) {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.f60729a
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L2a
            r0 = r8
            r7 = r0
            r0 = r5
            if (r0 != 0) goto L42
            r0 = r8
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L42
            r0 = r8
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L42
            goto L3f
        L2a:
            r0 = r7
            if (r0 != 0) goto L45
            r0 = r8
            r7 = r0
            r0 = r5
            if (r0 != 0) goto L42
            r0 = r8
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L42
        L3f:
            r0 = 1
            r7 = r0
        L42:
            r0 = r7
            return r0
        L45:
            s1.i r0 = new s1.i
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1405z2.C21848b.m8990e(boolean, boolean, boolean):boolean");
    }
}
