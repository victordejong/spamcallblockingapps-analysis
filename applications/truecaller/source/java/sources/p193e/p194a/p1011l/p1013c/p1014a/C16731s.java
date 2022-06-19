package p193e.p194a.p1011l.p1013c.p1014a;

import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b;
import p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d;
import p193e.p194a.p1011l.p1020g.C16913t;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17139o;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.s */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/s.class */
public final class C16731s {

    /* renamed from: a */
    public final AbstractC17197v0 f46902a;

    /* renamed from: b */
    public final AbstractC16686b f46903b;

    /* renamed from: c */
    public final C16727r f46904c;

    /* renamed from: d */
    public final C17139o f46905d;

    /* renamed from: e */
    public final a<C16667f3> f46906e;

    /* renamed from: f */
    public final a<C16658e> f46907f;

    /* renamed from: g */
    public final a<C16657d3> f46908g;

    /* renamed from: h */
    public final a<C16764w0> f46909h;

    /* renamed from: i */
    public final C16754t2 f46910i;

    /* renamed from: j */
    public final C16670g0 f46911j;

    /* renamed from: k */
    public final C16774y2 f46912k;

    /* renamed from: l */
    public final C16913t f46913l;

    /* renamed from: m */
    public final C16707m2 f46914m;

    /* renamed from: n */
    public final C16705m0 f46915n;

    /* renamed from: o */
    public final C16653d0 f46916o;

    /* renamed from: p */
    public final C16647c0 f46917p;

    /* renamed from: q */
    public final C16726q2 f46918q;

    /* renamed from: r */
    public final C16712n2 f46919r;

    /* renamed from: s */
    public final C16766w2 f46920s;

    /* renamed from: t */
    public final AbstractC16826d f46921t;

    @e(c = "com.truecaller.premium.premiumusertab.list.CardListCreator", f = "CardListCreator.kt", l = {63, 126, 134}, m = "createCards")
    /* renamed from: e.a.l.c.a.s$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/s$a.class */
    public static final class C16732a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f46922d;

        /* renamed from: e */
        public int f46923e;

        /* renamed from: g */
        public Object f46925g;

        /* renamed from: h */
        public Object f46926h;

        /* renamed from: i */
        public Object f46927i;

        /* renamed from: j */
        public Object f46928j;

        /* renamed from: k */
        public Object f46929k;

        /* renamed from: l */
        public Object f46930l;

        /* renamed from: m */
        public Object f46931m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16732a(d dVar) {
            super(dVar);
            C16731s.this = r4;
        }

        /* renamed from: s */
        public final Object m17068s(Object obj) {
            this.f46922d = obj;
            this.f46923e |= Integer.MIN_VALUE;
            return C16731s.this.m17069a(null, this);
        }
    }

    @Inject
    public C16731s(AbstractC17197v0 abstractC17197v0, AbstractC16686b abstractC16686b, C16727r c16727r, C17139o c17139o, a<C16667f3> aVar, a<C16658e> aVar2, a<C16657d3> aVar3, a<C16764w0> aVar4, C16754t2 c16754t2, C16670g0 c16670g0, C16774y2 c16774y2, C16913t c16913t, C16707m2 c16707m2, C16705m0 c16705m0, C16653d0 c16653d0, C16647c0 c16647c0, C16726q2 c16726q2, C16712n2 c16712n2, C16766w2 c16766w2, AbstractC16826d abstractC16826d) {
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC16686b, "cardRankFactory");
        l.e(c16727r, "cardLabelFactory");
        l.e(c17139o, "goldCallerIdPreviewDataFactory");
        l.e(aVar, "whoViewedMeCardPayloadCreator");
        l.e(aVar2, "announceCallerIdPayloadCreator");
        l.e(aVar3, "whatsAppCallerIdPayloadCreator");
        l.e(aVar4, "premiumSpamStatsCardPayloadCreator");
        l.e(c16754t2, "spamProtectionCardPayloadCreator");
        l.e(c16670g0, "ghostCallCardPayloadCreator");
        l.e(c16774y2, "userBadgeCardCreator");
        l.e(c16913t, "goldGiftPromoUtils");
        l.e(c16707m2, "promoOfferCardItemCreator");
        l.e(c16705m0, "goldSubscriptionCardPayloadCreator");
        l.e(c16653d0, "debugSamplePromoOfferCardItemCreator");
        l.e(c16647c0, "debugSampleFeatureCardItemCreator");
        l.e(c16726q2, "reviewsCardCreator");
        l.e(c16712n2, "referralFeatureCardPayloadCreator");
        l.e(c16766w2, "temporaryPromoCardPayloadCreator");
        l.e(abstractC16826d, "premiumNewFeatureLabelHelper");
        this.f46902a = abstractC17197v0;
        this.f46903b = abstractC16686b;
        this.f46904c = c16727r;
        this.f46905d = c17139o;
        this.f46906e = aVar;
        this.f46907f = aVar2;
        this.f46908g = aVar3;
        this.f46909h = aVar4;
        this.f46910i = c16754t2;
        this.f46911j = c16670g0;
        this.f46912k = c16774y2;
        this.f46913l = c16913t;
        this.f46914m = c16707m2;
        this.f46915n = c16705m0;
        this.f46916o = c16653d0;
        this.f46917p = c16647c0;
        this.f46918q = c16726q2;
        this.f46919r = c16712n2;
        this.f46920s = c16766w2;
        this.f46921t = abstractC16826d;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x06fb  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0701  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0813  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0862  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0a21  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0b05  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0b92  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0c1b  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0c21  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0e66  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0e6b  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x0fd9  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x101d  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x106d A[LOOP:5: B:332:0x1064->B:334:0x106d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:338:0x10a4  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x10f6  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x115e  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x11c7  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x11ca  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x11db  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x1236  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x1239  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x1259  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x125e  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0b76 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0afc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0515  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x05b8  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x05d4  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x061f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0662  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x06b8  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m17069a(p193e.p194a.p1011l.p1025p2.AbstractC17180s1.C17182b r21, s1.w.d<? super java.util.List<p193e.p194a.p1011l.p1013c.p1014a.C16717p>> r22) {
        /*
            Method dump skipped, instructions count: 5061
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1013c.p1014a.C16731s.m17069a(e.a.l.p2.s1$b, s1.w.d):java.lang.Object");
    }
}
