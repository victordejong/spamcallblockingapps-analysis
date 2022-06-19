package p193e.p194a.p1011l;

import com.truecaller.premium.data.ProductKind;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import com.truecaller.premium.personalisation.PersonalisationPromo;
import java.util.List;
import org.apache.avro.Schema;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1030s2.AbstractC17229a;
import p193e.p194a.p1050l5.p1051a.C17565h2;
import p193e.p194a.p1050l5.p1051a.C17583i2;
import p193e.p194a.p1050l5.p1051a.C17601j2;
import p193e.p194a.p1050l5.p1051a.C17700q;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.k2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/k2.class */
public final class C16948k2 implements AbstractC16965n0 {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC19463a0> f47546a;

    /* renamed from: b */
    public final AbstractC17229a f47547b;

    public C16948k2(AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC17229a abstractC17229a) {
        l.e(abstractC19854f, "eventTracker");
        l.e(abstractC17229a, "firebasePersonalisationManager");
        this.f47546a = abstractC19854f;
        this.f47547b = abstractC17229a;
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: a */
    public void mo16647a(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        AbstractC19463a0 mo11854a = this.f47546a.mo11854a();
        Schema schema = C17583i2.f49503f;
        String str = null;
        C17583i2.C17585b c17585b = new C17583i2.C17585b(null);
        String name = c16956m0.f47560a.name();
        c17585b.validate(c17585b.fields()[2], name);
        c17585b.f49512a = name;
        c17585b.fieldSetFlags()[2] = true;
        SubscriptionPromoEventMetaData subscriptionPromoEventMetaData = c16956m0.f47566g;
        if (subscriptionPromoEventMetaData != null) {
            str = subscriptionPromoEventMetaData.f14246b;
        }
        c17585b.validate(c17585b.fields()[3], str);
        c17585b.f49513b = str;
        c17585b.fieldSetFlags()[3] = true;
        Boolean valueOf = Boolean.valueOf(c16956m0.f47564e);
        c17585b.validate(c17585b.fields()[4], valueOf);
        c17585b.f49514c = valueOf;
        c17585b.fieldSetFlags()[4] = true;
        mo11854a.mo13111a(c17585b.build());
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: b */
    public void mo16646b(C16956m0 c16956m0) {
        ProductKind productKind;
        l.e(c16956m0, "params");
        SubscriptionPromoEventMetaData subscriptionPromoEventMetaData = c16956m0.f47566g;
        String str = "";
        if (subscriptionPromoEventMetaData != null) {
            Schema schema = C17700q.f50073e;
            C17700q.C17702b c17702b = new C17700q.C17702b(null);
            l.d(c17702b, "builder");
            String str2 = subscriptionPromoEventMetaData.f14245a;
            c17702b.validate(c17702b.fields()[3], str2);
            c17702b.f50082b = str2;
            c17702b.fieldSetFlags()[3] = true;
            String str3 = c16956m0.f47561b;
            if (str3 == null) {
                str3 = "";
            }
            c17702b.validate(c17702b.fields()[2], str3);
            c17702b.f50081a = str3;
            c17702b.fieldSetFlags()[2] = true;
            this.f47546a.mo11854a().mo13111a(c17702b.build());
        }
        String str4 = c16956m0.f47561b;
        if (str4 != null) {
            AbstractC19463a0 mo11854a = this.f47546a.mo11854a();
            Schema schema2 = C17565h2.f49426h;
            C17565h2.C17567b c17567b = new C17565h2.C17567b(null);
            String name = c16956m0.f47560a.name();
            c17567b.validate(c17567b.fields()[2], name);
            c17567b.f49437a = name;
            c17567b.fieldSetFlags()[2] = true;
            c17567b.validate(c17567b.fields()[4], str4);
            c17567b.f49439c = str4;
            c17567b.fieldSetFlags()[4] = true;
            C16993f c16993f = c16956m0.f47563d;
            String name2 = (c16993f == null || (productKind = c16993f.f47672k) == null) ? null : productKind.name();
            if (name2 != null) {
                str = name2;
            }
            c17567b.validate(c17567b.fields()[3], str);
            c17567b.f49438b = str;
            c17567b.fieldSetFlags()[3] = true;
            SubscriptionPromoEventMetaData subscriptionPromoEventMetaData2 = c16956m0.f47566g;
            String str5 = null;
            if (subscriptionPromoEventMetaData2 != null) {
                str5 = subscriptionPromoEventMetaData2.f14246b;
            }
            c17567b.validate(c17567b.fields()[5], str5);
            c17567b.f49440d = str5;
            c17567b.fieldSetFlags()[5] = true;
            Boolean valueOf = Boolean.valueOf(c16956m0.f47564e);
            c17567b.validate(c17567b.fields()[6], valueOf);
            c17567b.f49441e = valueOf;
            c17567b.fieldSetFlags()[6] = true;
            mo11854a.mo13111a(c17567b.build());
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: c */
    public void mo16645c(C16993f c16993f) {
        l.e(c16993f, "subscription");
        l.e(c16993f, "subscription");
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: d */
    public void mo16644d(C16956m0 c16956m0) {
        ProductKind productKind;
        l.e(c16956m0, "params");
        String str = c16956m0.f47561b;
        if (str != null) {
            Schema schema = C17601j2.f49569k;
            C17601j2.C17603b c17603b = new C17601j2.C17603b(null);
            String name = c16956m0.f47560a.name();
            c17603b.validate(c17603b.fields()[2], name);
            c17603b.f49583a = name;
            c17603b.fieldSetFlags()[2] = true;
            c17603b.validate(c17603b.fields()[4], str);
            c17603b.f49585c = str;
            c17603b.fieldSetFlags()[4] = true;
            C16993f c16993f = c16956m0.f47563d;
            String name2 = (c16993f == null || (productKind = c16993f.f47672k) == null) ? null : productKind.name();
            if (name2 == null) {
                name2 = "";
            }
            c17603b.validate(c17603b.fields()[3], name2);
            c17603b.f49584b = name2;
            c17603b.fieldSetFlags()[3] = true;
            String str2 = c16956m0.f47562c == null ? "purchase" : "upgrade";
            c17603b.validate(c17603b.fields()[6], str2);
            c17603b.f49587e = str2;
            c17603b.fieldSetFlags()[6] = true;
            List<String> list = c16956m0.f47562c;
            String str3 = list != null ? (String) i.D(list) : null;
            c17603b.validate(c17603b.fields()[5], str3);
            c17603b.f49586d = str3;
            c17603b.fieldSetFlags()[5] = true;
            SubscriptionPromoEventMetaData subscriptionPromoEventMetaData = c16956m0.f47566g;
            String str4 = subscriptionPromoEventMetaData != null ? subscriptionPromoEventMetaData.f14246b : null;
            c17603b.validate(c17603b.fields()[7], str4);
            c17603b.f49588f = str4;
            c17603b.fieldSetFlags()[7] = true;
            PersonalisationPromo mo16358b = this.f47547b.mo16358b();
            String str5 = null;
            if (mo16358b != null) {
                str5 = mo16358b.name();
            }
            c17603b.validate(c17603b.fields()[8], str5);
            c17603b.f49589g = str5;
            c17603b.fieldSetFlags()[8] = true;
            Boolean valueOf = Boolean.valueOf(c16956m0.f47564e);
            c17603b.validate(c17603b.fields()[9], valueOf);
            c17603b.f49590h = valueOf;
            c17603b.fieldSetFlags()[9] = true;
            this.f47546a.mo11854a().mo13111a(c17603b.build());
        }
    }
}
