package p193e.p194a.p195a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.commons.LanguageCommonNames;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import java.util.List;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.p235g1.AbstractC6254b;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.AbstractC10259i;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.k;
import s1.o;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.s */
/* loaded from: classes10-dex2jar.jar:e/a/a/s.class */
public final class C7245s implements AbstractC10259i {

    /* renamed from: a */
    public final a<AbstractC6254b> f23166a;

    /* renamed from: b */
    public final a<AbstractC9691j> f23167b;

    /* renamed from: c */
    public final a<AbstractC10060c> f23168c;

    /* renamed from: d */
    public final AbstractC6392i0 f23169d;

    /* renamed from: e */
    public final AbstractC19462a f23170e;

    @Inject
    public C7245s(a<AbstractC6254b> aVar, a<AbstractC9691j> aVar2, a<AbstractC10060c> aVar3, AbstractC6392i0 abstractC6392i0, AbstractC19462a abstractC19462a) {
        l.e(aVar, "translateManager");
        l.e(aVar2, "insightsStatusProvider");
        l.e(aVar3, "insightsAnalyticsManager");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f23166a = aVar;
        this.f23167b = aVar2;
        this.f23168c = aVar3;
        this.f23169d = abstractC6392i0;
        this.f23170e = abstractC19462a;
    }

    @Override // p193e.p194a.p437c.p548h.AbstractC10259i
    /* renamed from: a */
    public Object mo26518a(String str, d<? super Boolean> dVar) {
        return ((AbstractC6254b) this.f23166a.get()).mo31548a(str, dVar);
    }

    @Override // p193e.p194a.p437c.p548h.AbstractC10259i
    /* renamed from: b */
    public String mo26517b(String str) {
        l.e(str, "languageCode");
        return ((AbstractC6254b) this.f23166a.get()).mo31547b(str);
    }

    @Override // p193e.p194a.p437c.p548h.AbstractC10259i
    /* renamed from: c */
    public void mo26516c(String str, boolean z, s1.z.b.l<? super Boolean, s> lVar) {
        l.e(str, "langCode");
        l.e(lVar, "callback");
        if (((AbstractC9691j) this.f23167b.get()).mo27292C()) {
            AbstractC10060c abstractC10060c = (AbstractC10060c) this.f23168c.get();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            l.e("", "feature");
            l.e("", "eventCategory");
            l.e("", "eventInfo");
            l.e("", AnalyticsConstants.CONTEXT);
            l.e("", "actionType");
            l.e("", "actionInfo");
            l.e(linkedHashMap, "propertyMap");
            l.e("translation_smart_sms", "<set-?>");
            l.e("model_download", "<set-?>");
            l.e("requested_model_download", "<set-?>");
            abstractC10060c.mo26757a(new C10529b(new SimpleAnalyticsModel("translation_smart_sms", "model_download", "", "", "", "requested_model_download", 0L, null, false, 448, null), i.W0(linkedHashMap)));
            ((AbstractC6254b) this.f23166a.get()).mo31539j(str, z, !l.a(this.f23169d.mo31051j2(), "wifiOrMobile"), lVar);
        }
    }

    @Override // p193e.p194a.p437c.p548h.AbstractC10259i
    /* renamed from: d */
    public void mo26515d(List<k<String, Float>> list) {
        l.e(list, "results");
        C10480a.m26053K1(this.f23170e, list, ((AbstractC6254b) this.f23166a.get()).mo31545d());
    }

    @Override // p193e.p194a.p437c.p548h.AbstractC10259i
    /* renamed from: e */
    public o<String, String, Float> mo26514e(String str) {
        l.e(str, "message");
        return (o) s1.a.a.a.v0.f.d.c3((f) null, new C7200r(this, str, null), 1, (Object) null);
    }

    @Override // p193e.p194a.p437c.p548h.AbstractC10259i
    /* renamed from: f */
    public String mo26513f(LanguageCommonNames languageCommonNames) {
        String str;
        l.e(languageCommonNames, "languageCommonName");
        int ordinal = languageCommonNames.ordinal();
        if (ordinal == 0) {
            str = "sv";
        } else if (ordinal != 1) {
            throw new s1.i();
        } else {
            str = "ar";
        }
        return str;
    }
}
