package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.C10582a;
import com.google.ads.C10585b;
import com.google.ads.mediation.AbstractC10595c;
import com.google.ads.mediation.AbstractC10601d;
import com.google.ads.mediation.C10593a;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.internal.ads.C13088za;
/* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter<CustomEventExtras, C10600c>, MediationInterstitialAdapter<CustomEventExtras, C10600c> {

    /* renamed from: a */
    private View f34357a;

    /* renamed from: b */
    private AbstractC10598a f34358b;

    /* renamed from: c */
    private AbstractC10599b f34359c;

    /* renamed from: com.google.ads.mediation.customevent.CustomEventAdapter$a */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter$a.class */
    public final class C10596a {

        /* renamed from: a */
        private final CustomEventAdapter f34360a;

        /* renamed from: b */
        private final AbstractC10601d f34361b;

        public C10596a(CustomEventAdapter customEventAdapter, AbstractC10601d abstractC10601d) {
            CustomEventAdapter.this = r4;
            this.f34360a = customEventAdapter;
            this.f34361b = abstractC10601d;
        }
    }

    /* renamed from: com.google.ads.mediation.customevent.CustomEventAdapter$b */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter$b.class */
    public static final class C10597b {

        /* renamed from: a */
        private final CustomEventAdapter f34363a;

        /* renamed from: b */
        private final AbstractC10595c f34364b;

        public C10597b(CustomEventAdapter customEventAdapter, AbstractC10595c abstractC10595c) {
            this.f34363a = customEventAdapter;
            this.f34364b = abstractC10595c;
        }
    }

    /* renamed from: a */
    private static <T> T m22621a(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            C13088za.zzez(sb.toString());
            return null;
        }
    }

    @Override // com.google.ads.mediation.AbstractC10594b
    public final void destroy() {
    }

    @Override // com.google.ads.mediation.AbstractC10594b
    public final Class<CustomEventExtras> getAdditionalParametersType() {
        return CustomEventExtras.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.f34357a;
    }

    @Override // com.google.ads.mediation.AbstractC10594b
    public final Class<C10600c> getServerParametersType() {
        return C10600c.class;
    }

    public final void requestBannerAd(AbstractC10595c abstractC10595c, Activity activity, C10600c c10600c, C10585b c10585b, C10593a c10593a, CustomEventExtras customEventExtras) {
        AbstractC10598a abstractC10598a = (AbstractC10598a) m22621a(c10600c.f34366b);
        this.f34358b = abstractC10598a;
        if (abstractC10598a == null) {
            abstractC10595c.mo14332a(C10582a.EnumC10583a.INTERNAL_ERROR);
            return;
        }
        if (customEventExtras != null) {
            customEventExtras.getExtra(c10600c.f34365a);
        }
        new C10597b(this, abstractC10595c);
    }

    public final void requestInterstitialAd(AbstractC10601d abstractC10601d, Activity activity, C10600c c10600c, C10593a c10593a, CustomEventExtras customEventExtras) {
        AbstractC10599b abstractC10599b = (AbstractC10599b) m22621a(c10600c.f34366b);
        this.f34359c = abstractC10599b;
        if (abstractC10599b == null) {
            abstractC10601d.mo14331b(C10582a.EnumC10583a.INTERNAL_ERROR);
            return;
        }
        if (customEventExtras != null) {
            customEventExtras.getExtra(c10600c.f34365a);
        }
        new C10596a(this, abstractC10601d);
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
    }
}
