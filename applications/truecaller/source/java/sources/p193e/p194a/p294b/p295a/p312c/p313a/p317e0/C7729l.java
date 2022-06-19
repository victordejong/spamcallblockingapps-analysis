package p193e.p194a.p294b.p295a.p312c.p313a.p317e0;

import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7752y;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7753z;
import p193e.p194a.p294b.p295a.p321e.AbstractC7761a;
import p193e.p194a.p294b.p295a.p321e.AbstractC7775b;
import p193e.p194a.p294b.p295a.p322f.AbstractC7790b;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.AbstractC14537p;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.a.c.a.e0.l */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/l.class */
public final class C7729l extends AbstractC7709a<AbstractC7753z> implements AbstractC7752y {

    /* renamed from: h */
    public List<C8551c> f24185h;

    /* renamed from: i */
    public long f24186i;

    /* renamed from: j */
    public Long f24187j;

    /* renamed from: k */
    public BusinessProfile f24188k;

    /* renamed from: l */
    public final f f24189l;

    /* renamed from: m */
    public final f f24190m;

    /* renamed from: n */
    public final AbstractC7790b f24191n;

    /* renamed from: o */
    public final AbstractC19223c0 f24192o;

    /* renamed from: p */
    public final AbstractC8552d f24193p;

    /* renamed from: q */
    public final AbstractC14537p f24194q;

    /* renamed from: r */
    public final AbstractC7775b f24195r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7729l(@Named("IO") f fVar, @Named("UI") f fVar2, AbstractC7790b abstractC7790b, AbstractC19223c0 abstractC19223c0, AbstractC8552d abstractC8552d, AbstractC14537p abstractC14537p, AbstractC7775b abstractC7775b) {
        super(fVar, fVar2, abstractC7790b, abstractC19223c0);
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC7790b, "businessProfileV2Repository");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC8552d, "tagManager");
        l.e(abstractC14537p, "tagDisplayUtil");
        l.e(abstractC7775b, "businessAnalyticsManager");
        this.f24189l = fVar;
        this.f24190m = fVar2;
        this.f24191n = abstractC7790b;
        this.f24192o = abstractC19223c0;
        this.f24193p = abstractC8552d;
        this.f24194q = abstractC14537p;
        this.f24195r = abstractC7775b;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7752y
    /* renamed from: H */
    public int mo29312H(int i) {
        return this.f24192o.mo13770H(i);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q
    /* renamed from: b4 */
    public void mo29341b4(BusinessProfile businessProfile) {
        Long l;
        AbstractC7753z abstractC7753z;
        l.e(businessProfile, "businessProfile");
        this.f24188k = businessProfile;
        List<Long> tags = businessProfile.getTags();
        if (tags == null || (l = (Long) i.D(tags)) == null) {
            return;
        }
        long longValue = l.longValue();
        C8551c mo20024c = this.f24194q.mo20024c(longValue);
        if (mo20024c != null && (abstractC7753z = (AbstractC7753z) this.f57683a) != null) {
            abstractC7753z.mo29306t3(mo20024c);
        }
        this.f24186i = longValue;
        d.w2(this, this.f24190m, (j0) null, new C7727k(this, longValue, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7752y
    /* renamed from: bd */
    public void mo29311bd() {
        List<Long> d0 = i.d0(new Long[]{Long.valueOf(this.f24186i)});
        Long l = this.f24187j;
        if (l != null) {
            d0.add(Long.valueOf(l.longValue()));
        }
        if (this.f24187j == null && (true ^ d0.isEmpty())) {
            long longValue = ((Number) i.B(d0)).longValue();
            d0.clear();
            d0.add(Long.valueOf(longValue));
        }
        BusinessProfile businessProfile = this.f24188k;
        if (businessProfile == null) {
            l.l("businessProfile");
            throw null;
        }
        businessProfile.setTags(d0);
        AbstractC7753z abstractC7753z = (AbstractC7753z) this.f57683a;
        if (abstractC7753z == null) {
            return;
        }
        BusinessProfile businessProfile2 = this.f24188k;
        if (businessProfile2 != null) {
            abstractC7753z.mo29308cx(businessProfile2);
        } else {
            l.l("businessProfile");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7752y
    /* renamed from: y1 */
    public C8551c mo29310y1(long j) {
        return this.f24194q.mo20024c(j);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7752y
    /* renamed from: yf */
    public void mo29309yf(Long l) {
        this.f24187j = l;
        if (l != null) {
            l.longValue();
            this.f24195r.mo29295a(new AbstractC7761a.C7764c(String.valueOf(l)));
        }
    }
}
