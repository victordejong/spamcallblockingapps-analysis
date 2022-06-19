package p193e.p194a.p1011l.p1020g;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.premium.provider.Store;
import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1032u2.AbstractC17246a;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.z.c.l;
/* renamed from: e.a.l.g.t */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/t.class */
public final class C16913t {

    /* renamed from: a */
    public final C20592g f47498a;

    /* renamed from: b */
    public final AbstractC17197v0 f47499b;

    /* renamed from: c */
    public final AbstractC16832c2 f47500c;

    /* renamed from: d */
    public final AbstractC8621z f47501d;

    /* renamed from: e */
    public final AbstractC17246a f47502e;

    @Inject
    public C16913t(C20592g c20592g, AbstractC17197v0 abstractC17197v0, AbstractC16832c2 abstractC16832c2, AbstractC8621z abstractC8621z, AbstractC17246a abstractC17246a) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(abstractC17246a, "productStoreProvider");
        this.f47498a = c20592g;
        this.f47499b = abstractC17197v0;
        this.f47500c = abstractC16832c2;
        this.f47501d = abstractC8621z;
        this.f47502e = abstractC17246a;
    }

    /* renamed from: a */
    public final Intent m16774a(Context context, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "normalizedNumber");
        Participant m35455d = Participant.m35455d(str, this.f47501d, "-1");
        l.d(m35455d, "Participant.buildFromNum…anager.SIM_TOKEN_UNKNOWN)");
        Intent intent = new Intent(context, ConversationActivity.class);
        intent.putExtra("participants", new Participant[]{m35455d});
        intent.putExtra("launch_source", "detailView");
        return intent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0091, code lost:
        if ((r0 == null || r0.length() == 0) == false) goto L31;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m16773b() {
        /*
            r3 = this;
            r0 = r3
            e.a.l.p2.v0 r0 = r0.f47499b
            r4 = r0
            r0 = r3
            boolean r0 = r0.m16772c()
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L97
            r0 = r3
            e.a.l.c2 r0 = r0.f47500c
            boolean r0 = r0.mo16887e3()
            if (r0 != 0) goto L97
            r0 = r3
            e.a.l.c2 r0 = r0.f47500c
            boolean r0 = r0.mo16879n2()
            if (r0 == 0) goto L97
            r0 = r4
            boolean r0 = r0.mo16408H()
            if (r0 == 0) goto L97
            r0 = r4
            java.lang.String r0 = r0.mo16411D2()
            java.lang.String r1 = "gold"
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto L97
            r0 = r4
            boolean r0 = r0.mo16392s1()
            if (r0 == 0) goto L97
            r0 = r4
            com.truecaller.premium.data.ProductKind r0 = r0.mo16407H2()
            r7 = r0
            r0 = r7
            com.truecaller.premium.data.ProductKind r1 = com.truecaller.premium.data.ProductKind.SUBSCRIPTION_GOLD
            if (r0 == r1) goto L69
            r0 = r7
            com.truecaller.premium.data.ProductKind r1 = com.truecaller.premium.data.ProductKind.CONSUMABLE_GOLD_YEARLY
            if (r0 != r1) goto L63
            goto L69
        L63:
            r0 = 0
            r8 = r0
            goto L6c
        L69:
            r0 = 1
            r8 = r0
        L6c:
            r0 = r8
            if (r0 == 0) goto L97
            r0 = r4
            java.lang.String r0 = r0.mo16414A0()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L8c
            r0 = r4
            int r0 = r0.length()
            if (r0 != 0) goto L86
            goto L8c
        L86:
            r0 = 0
            r8 = r0
            goto L8f
        L8c:
            r0 = 1
            r8 = r0
        L8f:
            r0 = r8
            if (r0 != 0) goto L97
            goto L99
        L97:
            r0 = 0
            r6 = r0
        L99:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1020g.C16913t.m16773b():boolean");
    }

    /* renamed from: c */
    public final boolean m16772c() {
        C20592g c20592g = this.f47498a;
        return c20592g.f57998p.m10941a(c20592g, C20592g.f57695p6[12]).isEnabled() && this.f47502e.mo16331a() == Store.GOOGLE_PLAY;
    }

    /* renamed from: d */
    public final boolean m16771d() {
        boolean z;
        if (m16772c() && !this.f47500c.mo16887e3()) {
            C20592g c20592g = this.f47498a;
            if (((AbstractC20597i) c20592g.f57990o.m10941a(c20592g, C20592g.f57695p6[11])).isEnabled()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
