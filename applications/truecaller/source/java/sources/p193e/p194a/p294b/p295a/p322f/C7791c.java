package p193e.p194a.p294b.p295a.p322f;

import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import e.m.d.y.n;
import e.m.e.k;
import java.io.IOException;
import javax.inject.Inject;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18228e;
import p193e.p194a.p294b.p295a.p322f.AbstractC7780a;
import p193e.p194a.p294b.p295a.p322f.p323j.AbstractC7799a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.w.d;
import s1.z.c.l;
import x3.a0;
/* renamed from: e.a.b.a.f.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/f/c.class */
public final class C7791c implements AbstractC7790b {

    /* renamed from: a */
    public final AbstractC7792d f24249a;

    /* renamed from: b */
    public final AbstractC8541a f24250b;

    /* renamed from: c */
    public final k f24251c;

    /* renamed from: d */
    public final AbstractC7799a f24252d;

    /* renamed from: e */
    public final AbstractC18223b f24253e;

    /* renamed from: f */
    public final AbstractC18228e f24254f;

    @Inject
    public C7791c(AbstractC7792d abstractC7792d, AbstractC8541a abstractC8541a, k kVar, AbstractC7799a abstractC7799a, AbstractC18223b abstractC18223b, AbstractC18228e abstractC18228e) {
        l.e(abstractC7792d, "businessProfileV2RestAdapter");
        l.e(abstractC8541a, "coreSettings");
        l.e(kVar, "gson");
        l.e(abstractC7799a, "businessProfileDecorator");
        l.e(abstractC18223b, "bizProfileLocalFileManager");
        l.e(abstractC18228e, "bizProfileRefreshNotifier");
        this.f24249a = abstractC7792d;
        this.f24250b = abstractC8541a;
        this.f24251c = kVar;
        this.f24252d = abstractC7799a;
        this.f24253e = abstractC18223b;
        this.f24254f = abstractC18228e;
    }

    @Override // p193e.p194a.p294b.p295a.p322f.AbstractC7790b
    /* renamed from: a */
    public Object mo29293a(BusinessProfile businessProfile, d<? super AbstractC7780a> dVar) {
        AbstractC7780a abstractC7780a;
        if (this.f24252d.mo29284a(businessProfile)) {
            try {
                a0 execute = this.f24249a.mo29289A(businessProfile).execute();
                l.d(execute, "response");
                AbstractC7780a m29294a = AbstractC7780a.m29294a(execute, this.f24251c);
                abstractC7780a = m29294a;
                if (m29294a.f24239a) {
                    l.e(businessProfile, "businessProfile");
                    this.f24250b.putString("companyProfile", this.f24251c.m(businessProfile));
                    abstractC7780a = m29294a;
                }
            } catch (IOException e) {
                abstractC7780a = AbstractC7780a.C7785e.f24245c;
            }
        } else {
            abstractC7780a = new AbstractC7780a.C7788h(0, 1);
        }
        return abstractC7780a;
    }

    @Override // p193e.p194a.p294b.p295a.p322f.AbstractC7790b
    /* renamed from: b */
    public void mo29292b(BusinessProfile businessProfile) {
        l.e(businessProfile, "businessProfile");
        this.f24250b.putString("companyProfile", this.f24251c.m(businessProfile));
    }

    @Override // p193e.p194a.p294b.p295a.p322f.AbstractC7790b
    /* renamed from: c */
    public BusinessProfile mo29291c() {
        BusinessProfile businessProfile;
        String string = this.f24250b.getString("companyProfile");
        if (string != null) {
            businessProfile = (BusinessProfile) n.B1(BusinessProfile.class).cast(this.f24251c.g(string, BusinessProfile.class));
        } else {
            businessProfile = null;
        }
        return businessProfile;
    }

    @Override // p193e.p194a.p294b.p295a.p322f.AbstractC7790b
    /* renamed from: d */
    public Object mo29290d(d<? super AbstractC7780a> dVar) {
        AbstractC7780a abstractC7780a;
        try {
            a0 execute = this.f24249a.mo29288B().execute();
            l.d(execute, "response");
            AbstractC7780a m29294a = AbstractC7780a.m29294a(execute, this.f24251c);
            abstractC7780a = m29294a;
            if (m29294a instanceof AbstractC7780a.C7787g) {
                this.f24253e.mo15397e(((AbstractC7780a.C7787g) m29294a).f24247c);
                C17422k.m16095W(this.f24254f, ((AbstractC7780a.C7787g) m29294a).f24247c.getName(), false, 2, null);
                abstractC7780a = m29294a;
            }
        } catch (IOException e) {
            abstractC7780a = AbstractC7780a.C7785e.f24245c;
        }
        return abstractC7780a;
    }
}
