package p193e.p194a.p1342w4;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import s1.z.c.l;
/* renamed from: e.a.w4.e */
/* loaded from: classes13-dex2jar.jar:e/a/w4/e.class */
public final class C21205e implements AbstractC21204d {

    /* renamed from: a */
    public final C8601l0 f59407a;

    /* renamed from: b */
    public final AbstractC8541a f59408b;

    @Inject
    public C21205e(C8601l0 c8601l0, AbstractC8541a abstractC8541a) {
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC8541a, "coreSettings");
        this.f59407a = c8601l0;
        this.f59408b = abstractC8541a;
    }

    @Override // p193e.p194a.p1342w4.AbstractC21204d
    /* renamed from: a */
    public boolean mo10139a(C16503a c16503a) {
        l.e(c16503a, "imGroupParticipant");
        int i = c16503a.f46406j;
        return (i & 13) == 0 || m10136d(false, c16503a.f46407k, i, c16503a.f46401e, c16503a.f46403g, c16503a.f46408l);
    }

    @Override // p193e.p194a.p1342w4.AbstractC21204d
    /* renamed from: b */
    public boolean mo10138b(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return m10136d(false, contact.m35540X(), contact.getSource(), contact.m35566G(), contact.m35573B(), contact.m35504o());
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0045, code lost:
        if (m10136d(r10.f11569b == 1, r10.f11587t, r10.f11581n, r10.f11579l, r10.f11580m, r10.f11589v) != false) goto L10;
     */
    @Override // p193e.p194a.p1342w4.AbstractC21204d
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo10137c(com.truecaller.data.entity.messaging.Participant r10) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r1 = "participant"
            s1.z.c.l.e(r0, r1)
            r0 = r10
            int r0 = r0.f11581n
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r11
            r1 = 13
            r0 = r0 & r1
            if (r0 == 0) goto L48
            r0 = r10
            java.lang.String r1 = "participant"
            s1.z.c.l.e(r0, r1)
            r0 = r10
            int r0 = r0.f11569b
            r1 = 1
            if (r0 != r1) goto L28
            r0 = 1
            r13 = r0
            goto L2b
        L28:
            r0 = 0
            r13 = r0
        L2b:
            r0 = r9
            r1 = r13
            r2 = r10
            long r2 = r2.f11587t
            r3 = r10
            int r3 = r3.f11581n
            r4 = r10
            java.lang.String r4 = r4.f11579l
            r5 = r10
            java.lang.String r5 = r5.f11580m
            r6 = r10
            java.lang.Long r6 = r6.f11589v
            boolean r0 = r0.m10136d(r1, r2, r3, r4, r5, r6)
            if (r0 == 0) goto L4a
        L48:
            r0 = 1
            r12 = r0
        L4a:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1342w4.C21205e.mo10137c(com.truecaller.data.entity.messaging.Participant):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x006e, code lost:
        if ((r14 == null || r14.length() == 0) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ad, code lost:
        if ((r12 & 8) != 0) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m10136d(boolean r9, long r10, int r12, java.lang.String r13, java.lang.String r14, java.lang.Long r15) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1342w4.C21205e.m10136d(boolean, long, int, java.lang.String, java.lang.String, java.lang.Long):boolean");
    }
}
