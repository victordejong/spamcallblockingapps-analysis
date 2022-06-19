package p193e.p194a.p1315v4.p1330u0.p1331k;

import com.razorpay.AnalyticsConstants;
import org.apache.avro.generic.GenericRecord;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a;
import s1.k;
import s1.u.i;
import s1.z.c.f0;
import s1.z.c.l;
/* renamed from: e.a.v4.u0.k.b */
/* loaded from: classes12-dex2jar.jar:e/a/v4/u0/k/b.class */
public final class C21153b implements AbstractC21148a {

    /* renamed from: a */
    public final String f59324a;

    /* renamed from: b */
    public final AbstractC21040l f59325b;

    /* renamed from: c */
    public final AbstractC21148a.AbstractC21151c f59326c;

    /* renamed from: d */
    public final AbstractC21148a.AbstractC21149a f59327d;

    /* renamed from: e */
    public final AbstractC21148a.AbstractC21152d f59328e;

    public C21153b(AbstractC21040l abstractC21040l, AbstractC21148a.AbstractC21150b abstractC21150b, AbstractC21148a.AbstractC21151c abstractC21151c, AbstractC21148a.AbstractC21149a abstractC21149a, AbstractC21148a.AbstractC21152d abstractC21152d, int i) {
        AbstractC21148a.AbstractC21150b abstractC21150b2 = null;
        AbstractC21148a.AbstractC21150b abstractC21150b3 = (i & 4) != 0 ? abstractC21150b : null;
        AbstractC21148a.AbstractC21150b abstractC21150b4 = (i & 8) != 0 ? abstractC21150b : null;
        abstractC21150b2 = (i & 16) != 0 ? abstractC21150b : abstractC21150b2;
        l.e(abstractC21040l, "eventsTrackerHolder");
        l.e(abstractC21150b, "partnerEventHelper");
        l.e(abstractC21150b3, "partnerInfoHolder");
        l.e(abstractC21150b4, "integrationTypeHolder");
        l.e(abstractC21150b2, "uiStateHelper");
        this.f59325b = abstractC21040l;
        this.f59326c = abstractC21150b3;
        this.f59327d = abstractC21150b4;
        this.f59328e = abstractC21150b2;
        this.f59324a = C22128a.m8627e2("UUID.randomUUID().toString()");
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a
    /* renamed from: a */
    public void mo10216a() {
        m10212e(new k<>("PopupState", "requested"));
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a
    /* renamed from: b */
    public void mo10215b(boolean z) {
        m10212e(new k<>("InfoExpanded", String.valueOf(z)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0038, code lost:
        if (r13 != null) goto L9;
     */
    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo10214c(int r10) {
        /*
            r9 = this;
            r0 = r10
            r1 = -1
            if (r0 != r1) goto L79
            s1.k r0 = new s1.k
            r1 = r0
            java.lang.String r2 = "PopupState"
            java.lang.String r3 = "dismissed"
            r1.<init>(r2, r3)
            r11 = r0
            s1.k r0 = new s1.k
            r1 = r0
            java.lang.String r2 = "DismissReason"
            r3 = r10
            java.lang.String r3 = java.lang.String.valueOf(r3)
            r1.<init>(r2, r3)
            r12 = r0
            r0 = r9
            e.a.v4.u0.k.a$c r0 = r0.f59326c
            java.util.Locale r0 = r0.mo10228l()
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L3e
            r0 = r13
            java.lang.String r0 = r0.getLanguage()
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L3e
            goto L58
        L3e:
            java.util.Locale r0 = java.util.Locale.ENGLISH
            r13 = r0
            r0 = r13
            java.lang.String r1 = "Locale.ENGLISH"
            s1.z.c.l.d(r0, r1)
            r0 = r13
            java.lang.String r0 = r0.getLanguage()
            r13 = r0
            r0 = r13
            java.lang.String r1 = "Locale.ENGLISH.language"
            s1.z.c.l.d(r0, r1)
        L58:
            r0 = r9
            r1 = 3
            s1.k[] r1 = new s1.k[r1]
            r2 = r1
            r3 = 0
            r4 = r11
            r2[r3] = r4
            r2 = r1
            r3 = 1
            r4 = r12
            r2[r3] = r4
            r2 = r1
            r3 = 2
            s1.k r4 = new s1.k
            r5 = r4
            java.lang.String r6 = "LanguageLocale"
            r7 = r13
            r5.<init>(r6, r7)
            r2[r3] = r4
            r0.m10212e(r1)
            goto L9f
        L79:
            r0 = r9
            r1 = 2
            s1.k[] r1 = new s1.k[r1]
            r2 = r1
            r3 = 0
            s1.k r4 = new s1.k
            r5 = r4
            java.lang.String r6 = "PopupState"
            java.lang.String r7 = "dismissed"
            r5.<init>(r6, r7)
            r2[r3] = r4
            r2 = r1
            r3 = 1
            s1.k r4 = new s1.k
            r5 = r4
            java.lang.String r6 = "DismissReason"
            r7 = r10
            java.lang.String r7 = java.lang.String.valueOf(r7)
            r5.<init>(r6, r7)
            r2[r3] = r4
            r0.m10212e(r1)
        L9f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.p1330u0.p1331k.C21153b.mo10214c(int):void");
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a
    /* renamed from: d */
    public void mo10213d() {
        m10212e(new k<>("PopupState", AnalyticsConstants.SHOWN));
    }

    /* renamed from: e */
    public final void m10212e(k<? extends CharSequence, ? extends CharSequence>... kVarArr) {
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("TruecallerSDK_Popup");
        m15852a.m15847e(this.f59324a);
        f0 f0Var = new f0(16);
        f0Var.a.add(new k("PartnerKey", this.f59326c.mo10226p()));
        f0Var.a.add(new k("PartnerName", this.f59326c.mo10225z()));
        f0Var.a.add(new k("PartnerSdkVersion", this.f59326c.mo10230f()));
        f0Var.a.add(new k("ConsentUI", this.f59328e.mo10221n()));
        f0Var.a.add(new k("IntegrationType", this.f59327d.mo10232b()));
        f0Var.a.add(new k("AdditionalCta", this.f59328e.mo10218w()));
        f0Var.a.add(new k("ContextPrefixText", this.f59328e.mo10220r()));
        f0Var.a.add(new k("ContextSuffixText", this.f59328e.mo10217y()));
        f0Var.a.add(new k("CtaText", this.f59328e.mo10223j()));
        f0Var.a.add(new k("ButtonShape", this.f59328e.mo10219s()));
        f0Var.a.add(new k("IsTosLinkPresent", String.valueOf(this.f59328e.mo10224A())));
        f0Var.a.add(new k("IsPrivacyLinkPresent", String.valueOf(this.f59328e.mo10222k())));
        f0Var.a.add(new k("RequestedTheme", this.f59326c.mo10227o() == 1 ? "dark" : "light"));
        String mo10231d = this.f59326c.mo10231d();
        if (mo10231d == null) {
            mo10231d = "";
        }
        f0Var.a.add(new k("PartnerSdkVariant", mo10231d));
        String mo10229i = this.f59326c.mo10229i();
        String str = "";
        if (mo10229i != null) {
            str = mo10229i;
        }
        f0Var.a.add(new k("PartnerSdkVariantVersion", str));
        f0Var.a(kVarArr);
        m15852a.m15848d(i.W((k[]) f0Var.a.toArray(new k[f0Var.b()])));
        GenericRecord build = m15852a.build();
        AbstractC19462a mo10387a = this.f59325b.mo10387a();
        l.d(build, "internalEvent");
        mo10387a.mo13275a(build);
    }
}
