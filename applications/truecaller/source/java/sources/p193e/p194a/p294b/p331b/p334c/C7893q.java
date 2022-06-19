package p193e.p194a.p294b.p331b.p334c;

import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.p152ui.address.BusinessAddressInput;
import com.truecaller.profile.data.dto.BusinessData;
import com.truecaller.profile.data.dto.Company;
import com.truecaller.profile.data.dto.Profile;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p354l.AbstractC8018a;
import p193e.p194a.p294b.p354l.AbstractC8027h;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p424n.C8523b;
import p193e.p194a.p677d3.AbstractC12589h;
import p193e.p194a.p798g5.AbstractC14537p;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.b.b.c.q */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/c/q.class */
public final class C7893q extends AbstractC20574a<AbstractC7892p> {

    /* renamed from: d */
    public Profile f24478d;

    /* renamed from: e */
    public BusinessAddressInput f24479e;

    /* renamed from: f */
    public boolean f24480f;

    /* renamed from: g */
    public Integer f24481g;

    /* renamed from: h */
    public boolean f24482h;

    /* renamed from: i */
    public final List<String> f24483i = new ArrayList();

    /* renamed from: j */
    public int f24484j = 2;

    /* renamed from: k */
    public final AbstractC8027h f24485k;

    /* renamed from: l */
    public final AbstractC8018a f24486l;

    /* renamed from: m */
    public final AbstractC7877d f24487m;

    /* renamed from: n */
    public final AbstractC8426f f24488n;

    /* renamed from: o */
    public final f f24489o;

    /* renamed from: p */
    public final C20592g f24490p;

    /* renamed from: q */
    public final AbstractC14537p f24491q;

    /* renamed from: r */
    public final AbstractC12589h f24492r;

    /* renamed from: s */
    public final C8523b f24493s;

    @e(c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfilePresenter$onSaveProfile$2", f = "CreateBusinessProfilePresenter.kt", l = {357, 361, 364, 370, 391}, m = "invokeSuspend")
    /* renamed from: e.a.b.b.c.q$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/c/q$a.class */
    public static final class C7894a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f24494e;

        /* renamed from: f */
        public Object f24495f;

        /* renamed from: g */
        public Object f24496g;

        /* renamed from: h */
        public int f24497h;

        /* renamed from: i */
        public int f24498i;

        /* renamed from: k */
        public final /* synthetic */ c0 f24500k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7894a(c0 c0Var, d dVar) {
            super(2, dVar);
            C7893q.this = r5;
            this.f24500k = c0Var;
        }

        /* renamed from: i */
        public final d<s> m29140i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7894a(this.f24500k, dVar);
        }

        /* renamed from: k */
        public final Object m29139k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7894a(this.f24500k, dVar).m29138s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:104:0x04ae  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0575  */
        /* JADX WARN: Removed duplicated region for block: B:122:0x0604  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x06a0  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x0769  */
        /* JADX WARN: Removed duplicated region for block: B:165:0x0952  */
        /* JADX WARN: Removed duplicated region for block: B:172:0x09b8  */
        /* JADX WARN: Removed duplicated region for block: B:180:0x0a41  */
        /* JADX WARN: Removed duplicated region for block: B:189:0x0a99  */
        /* JADX WARN: Removed duplicated region for block: B:194:0x0af8  */
        /* JADX WARN: Removed duplicated region for block: B:198:0x0b56  */
        /* JADX WARN: Removed duplicated region for block: B:258:0x0250 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0215 A[Catch: IOException -> 0x014d, r -> 0x0151, TryCatch #7 {r -> 0x0151, IOException -> 0x014d, blocks: (B:14:0x006d, B:23:0x00ff, B:26:0x0127, B:29:0x0143, B:50:0x01c4, B:52:0x01d2, B:57:0x01fd, B:59:0x020d, B:61:0x0215, B:65:0x0250, B:71:0x0295, B:73:0x02bb, B:75:0x02d9), top: B:257:0x004c }] */
        /* JADX WARN: Removed duplicated region for block: B:73:0x02bb A[Catch: IOException -> 0x014d, r -> 0x0151, TRY_ENTER, TRY_LEAVE, TryCatch #7 {r -> 0x0151, IOException -> 0x014d, blocks: (B:14:0x006d, B:23:0x00ff, B:26:0x0127, B:29:0x0143, B:50:0x01c4, B:52:0x01d2, B:57:0x01fd, B:59:0x020d, B:61:0x0215, B:65:0x0250, B:71:0x0295, B:73:0x02bb, B:75:0x02d9), top: B:257:0x004c }] */
        /* JADX WARN: Removed duplicated region for block: B:74:0x02d6  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x02ef  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x031a A[Catch: all -> 0x03fc, TRY_LEAVE, TryCatch #2 {all -> 0x03fc, blocks: (B:80:0x0310, B:82:0x031a), top: B:255:0x0310 }] */
        /* JADX WARN: Removed duplicated region for block: B:92:0x03ed  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x0379 -> B:253:0x039f). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m29138s(java.lang.Object r18) {
            /*
                Method dump skipped, instructions count: 3513
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p331b.p334c.C7893q.C7894a.m29138s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7893q(AbstractC8027h abstractC8027h, AbstractC8018a abstractC8018a, AbstractC7877d abstractC7877d, AbstractC8426f abstractC8426f, @Named("UI") f fVar, @Named("features_registry") C20592g c20592g, AbstractC14537p abstractC14537p, AbstractC12589h abstractC12589h, C8523b c8523b) {
        super(fVar);
        l.e(abstractC8027h, "repository");
        l.e(abstractC8018a, "addressRepository");
        l.e(abstractC7877d, "businessProfileAnalyticsManager");
        l.e(abstractC8426f, "regionUtils");
        l.e(fVar, "ui");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC14537p, "tagDisplayUtil");
        l.e(abstractC12589h, "businessCardRepository");
        l.e(c8523b, "profileErrorMessageHelper");
        this.f24485k = abstractC8027h;
        this.f24486l = abstractC8018a;
        this.f24487m = abstractC7877d;
        this.f24488n = abstractC8426f;
        this.f24489o = fVar;
        this.f24490p = c20592g;
        this.f24491q = abstractC14537p;
        this.f24492r = abstractC12589h;
        this.f24493s = c8523b;
    }

    /* renamed from: Ij */
    public void m29142Ij() {
        BusinessData businessData;
        Company company;
        AbstractC7892p abstractC7892p = (AbstractC7892p) this.f57683a;
        if (abstractC7892p != null) {
            abstractC7892p.mo29163a0();
        }
        Profile profile = this.f24478d;
        if (profile == null || (businessData = profile.getBusinessData()) == null || (company = businessData.getCompany()) == null || company.getBranding() == null) {
            AbstractC7892p abstractC7892p2 = (AbstractC7892p) this.f57683a;
            if (abstractC7892p2 == null) {
                return;
            }
            C18334g0.m15270E0(abstractC7892p2, C3478R.string.BusinessProfile_ErrorCreatingProfile, false, 2, null);
            return;
        }
        c0 c0Var = new c0();
        Profile profile2 = this.f24478d;
        if (profile2 == null) {
            return;
        }
        c0Var.a = profile2;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C7894a(c0Var, null), 3, (Object) null);
    }

    /* renamed from: Jj */
    public void m29141Jj(BusinessAddressInput businessAddressInput) {
        AbstractC7892p abstractC7892p;
        AbstractC7892p abstractC7892p2;
        l.e(businessAddressInput, "address");
        this.f24479e = businessAddressInput;
        String mo28967c = this.f24486l.mo28967c(businessAddressInput.getCountryCode());
        if (mo28967c != null && (abstractC7892p2 = (AbstractC7892p) this.f57683a) != null) {
            abstractC7892p2.mo29145t8(businessAddressInput.getStreet(), businessAddressInput.getZipCode(), businessAddressInput.getCity(), mo28967c);
        }
        if (businessAddressInput.getLatitude() != null && businessAddressInput.getLongitude() != null && (abstractC7892p = (AbstractC7892p) this.f57683a) != null) {
            abstractC7892p.mo29146t5(businessAddressInput.getLatitude().doubleValue(), businessAddressInput.getLongitude().doubleValue());
        }
        AbstractC7892p abstractC7892p3 = (AbstractC7892p) this.f57683a;
        if (abstractC7892p3 != null) {
            abstractC7892p3.mo29171I5();
        }
        AbstractC7892p abstractC7892p4 = (AbstractC7892p) this.f57683a;
        if (abstractC7892p4 != null) {
            abstractC7892p4.mo29144w1();
        }
    }
}
