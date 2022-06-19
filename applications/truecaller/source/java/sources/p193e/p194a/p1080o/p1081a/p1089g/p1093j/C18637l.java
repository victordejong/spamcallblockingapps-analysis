package p193e.p194a.p1080o.p1081a.p1089g.p1093j;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.common.account.Region;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.data.entity.FeatureType;
import com.truecaller.data.entity.MessageType;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1080o.AbstractC18769f;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18589b;
import p193e.p194a.p1080o.p1097b.AbstractC18700b;
import p193e.p194a.p1080o.p1097b.AbstractC18745n0;
import p193e.p194a.p1080o.p1097b.AbstractC18746o;
import p193e.p194a.p1080o.p1097b.AbstractC18754t;
import p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18882c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1136w0.C19347a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import q3.a.j0;
import q3.a.x2.u0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.o.a.g.j.l */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/j/l.class */
public final class C18637l extends AbstractC18589b<AbstractC18633h> implements AbstractC18632g {

    /* renamed from: e */
    public final AbstractC19223c0 f52445e;

    /* renamed from: f */
    public final AbstractC18769f f52446f;

    /* renamed from: g */
    public final AbstractC18700b f52447g;

    /* renamed from: h */
    public final a<AbstractC19462a> f52448h;

    /* renamed from: i */
    public final AbstractC18882c f52449i;

    /* renamed from: j */
    public final AbstractC18754t f52450j;

    /* renamed from: k */
    public final AbstractC8426f f52451k;

    /* renamed from: l */
    public final C19347a f52452l;

    /* renamed from: m */
    public final AbstractC18746o f52453m;

    /* renamed from: n */
    public final f f52454n;

    /* renamed from: o */
    public final AbstractC18745n0 f52455o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18637l(AbstractC19223c0 abstractC19223c0, AbstractC18769f abstractC18769f, AbstractC18700b abstractC18700b, a<AbstractC19462a> aVar, AbstractC18882c abstractC18882c, AbstractC18754t abstractC18754t, AbstractC8426f abstractC8426f, C19347a c19347a, AbstractC18746o abstractC18746o, @Named("UI") f fVar, AbstractC18745n0 abstractC18745n0) {
        super(fVar);
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC18769f, "support");
        l.e(abstractC18700b, "messageFactory");
        l.e(aVar, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC18882c, "predefinedCallReasonRepository");
        l.e(abstractC18754t, "callStateHolder");
        l.e(abstractC8426f, "regionUtils");
        l.e(c19347a, "customTabsUtil");
        l.e(abstractC18746o, "settings");
        l.e(fVar, "uiContext");
        l.e(abstractC18745n0, "sendMidCallReasonManager");
        this.f52445e = abstractC19223c0;
        this.f52446f = abstractC18769f;
        this.f52447g = abstractC18700b;
        this.f52448h = aVar;
        this.f52449i = abstractC18882c;
        this.f52450j = abstractC18754t;
        this.f52451k = abstractC8426f;
        this.f52452l = c19347a;
        this.f52453m = abstractC18746o;
        this.f52454n = fVar;
        this.f52455o = abstractC18745n0;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18597e
    /* renamed from: G0 */
    public void mo14685G0() {
        AbstractC18633h abstractC18633h = (AbstractC18633h) this.f57683a;
        if (abstractC18633h != null) {
            abstractC18633h.mo14741s();
        }
    }

    /* renamed from: Ij */
    public final CallContextMessage m14684Ij(String str, String str2, FeatureType featureType, String str3) {
        return C17891a1.C17902k.m15579r(this.f52447g, null, str, str2, featureType, MessageType.Custom.f11559b, str3, 1, null);
    }

    /* renamed from: Jj */
    public final void m14683Jj(int i) {
        if (C17891a1.C17902k.m15681F(this.f52453m, "guidelineIsAgreed", false, 2, null)) {
            return;
        }
        Region mo28592f = this.f52451k.mo28592f();
        String mo13768b = this.f52445e.mo13768b(i, new Object[0]);
        l.d(mo13768b, "resourceProvider.getString(buttonTextRes)");
        CharSequence mo13756n = this.f52445e.mo13756n(C3771R.string.context_call_on_demand_community_guideline, mo13768b, C18334g0.m15247U(mo28592f), C18334g0.m15254N(mo28592f), "https://www.truecaller.com/community-guidelines/call-reason");
        l.d(mo13756n, "resourceProvider.getRich…UNITY_GUIDELINE\n        )");
        AbstractC18633h abstractC18633h = (AbstractC18633h) this.f57683a;
        if (abstractC18633h == null) {
            return;
        }
        abstractC18633h.mo14697ms(mo13756n);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18632g
    /* renamed from: Vf */
    public void mo14682Vf(String str) {
        l.e(str, "url");
        C19347a c19347a = this.f52452l;
        Objects.requireNonNull(c19347a);
        l.e(str, "url");
        Context context = c19347a.f53816a;
        Object obj = C26467a.f74235a;
        Integer valueOf = Integer.valueOf(C26467a.C26471d.m1787a(context, 17170443) | (-16777216));
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", 0);
        Bundle bundle = new Bundle();
        if (valueOf != null) {
            bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", valueOf.intValue());
        }
        if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle2 = new Bundle();
            bundle2.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle2);
        }
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        intent.putExtras(new Bundle());
        intent.putExtras(bundle);
        intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        intent.putExtra(DeepLink.REFERRER_URI, Uri.parse("2" + c19347a.f53816a.getPackageName()));
        try {
            Context context2 = c19347a.f53816a;
            intent.setData(Uri.parse(str));
            C26467a.C26468a.m1794b(context2, intent, null);
        } catch (ActivityNotFoundException | SecurityException e) {
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.o.a.g.j.h] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        String mo14702H6;
        AbstractC18633h abstractC18633h;
        InitiateCallHelper.CallOptions mo14696r;
        String mo14702H62;
        AbstractC18633h abstractC18633h2;
        ?? r0 = (AbstractC18633h) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        OnDemandMessageSource mo14695sf = r0.mo14695sf();
        if (mo14695sf instanceof OnDemandMessageSource.SecondCall) {
            AbstractC18633h abstractC18633h3 = (AbstractC18633h) this.f57683a;
            if (abstractC18633h3 == null || (mo14696r = abstractC18633h3.mo14696r()) == null) {
                throw new Exception("Call option should be provided");
            }
            CharSequence mo13756n = this.f52445e.mo13756n(((OnDemandMessageSource.SecondCall) mo14695sf).getType() == OnDemandMessageSource.SecondCall.Type.MissedCall ? C3771R.string.context_call_call_with_custom_reason_title : C3771R.string.context_call_again_custom_reason_title, mo14696r.f10716c);
            AbstractC18633h abstractC18633h4 = (AbstractC18633h) this.f57683a;
            if (abstractC18633h4 != null) {
                if (mo13756n != null) {
                    abstractC18633h4.setTitle(mo13756n);
                } else {
                    abstractC18633h4.mo14700Xy();
                }
            }
            AbstractC18633h abstractC18633h5 = (AbstractC18633h) this.f57683a;
            if (abstractC18633h5 != null && (mo14702H62 = abstractC18633h5.mo14702H6()) != null && (abstractC18633h2 = (AbstractC18633h) this.f57683a) != null) {
                abstractC18633h2.mo14742l(mo14702H62);
            }
            AbstractC18633h abstractC18633h6 = (AbstractC18633h) this.f57683a;
            if (abstractC18633h6 != null) {
                abstractC18633h6.mo14701Un(C3771R.string.context_call_call);
            }
            m14683Jj(C3771R.string.context_call_call);
        } else if (mo14695sf instanceof OnDemandMessageSource.DetailsScreen) {
            AbstractC18633h abstractC18633h7 = (AbstractC18633h) this.f57683a;
            if (abstractC18633h7 != null) {
                abstractC18633h7.mo14700Xy();
            }
            AbstractC18633h abstractC18633h8 = (AbstractC18633h) this.f57683a;
            if (abstractC18633h8 != null) {
                abstractC18633h8.mo14701Un(C3771R.string.StrDone);
            }
        } else if (mo14695sf instanceof OnDemandMessageSource.MidCall) {
            CharSequence mo13756n2 = this.f52445e.mo13756n(C3771R.string.context_call_add_custom_reason_title, ((OnDemandMessageSource.MidCall) mo14695sf).getNameOrNumberToDisplay());
            AbstractC18633h abstractC18633h9 = (AbstractC18633h) this.f57683a;
            if (abstractC18633h9 != null) {
                if (mo13756n2 != null) {
                    abstractC18633h9.setTitle(mo13756n2);
                } else {
                    abstractC18633h9.mo14700Xy();
                }
            }
            AbstractC18633h abstractC18633h10 = (AbstractC18633h) this.f57683a;
            if (abstractC18633h10 != null && (mo14702H6 = abstractC18633h10.mo14702H6()) != null && (abstractC18633h = (AbstractC18633h) this.f57683a) != null) {
                abstractC18633h.mo14742l(mo14702H6);
            }
            AbstractC18633h abstractC18633h11 = (AbstractC18633h) this.f57683a;
            if (abstractC18633h11 != null) {
                abstractC18633h11.mo14701Un(C3771R.string.context_call_add);
            }
            m14683Jj(C3771R.string.context_call_add);
        }
        AbstractC18633h abstractC18633h12 = (AbstractC18633h) this.f57683a;
        if ((abstractC18633h12 != null ? abstractC18633h12.mo14695sf() : null) instanceof OnDemandMessageSource.MidCall) {
            d.x2(new u0(this.f52450j.mo14547c(), new C18634i(this, null)), this);
        }
        AbstractC18633h abstractC18633h13 = (AbstractC18633h) this.f57683a;
        if (!((abstractC18633h13 != null ? abstractC18633h13.mo14695sf() : null) instanceof OnDemandMessageSource.MidCall)) {
            return;
        }
        d.w2(this, (f) null, (j0) null, new C18635j(this, null), 3, (Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00fe, code lost:
        if (r13 != null) goto L39;
     */
    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18597e
    /* renamed from: w1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo14681w1(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1081a.p1089g.p1093j.C18637l.mo14681w1(java.lang.String):void");
    }
}
