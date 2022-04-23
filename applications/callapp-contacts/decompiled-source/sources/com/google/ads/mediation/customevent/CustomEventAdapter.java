package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.a;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.c;
import com.google.ads.mediation.d;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.internal.ads.za;
/* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter<CustomEventExtras, c>, MediationInterstitialAdapter<CustomEventExtras, c> {

    /* renamed from: a  reason: collision with root package name */
    private View f20279a;

    /* renamed from: b  reason: collision with root package name */
    private com.google.ads.mediation.customevent.a f20280b;

    /* renamed from: c  reason: collision with root package name */
    private com.google.ads.mediation.customevent.b f20281c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        private final CustomEventAdapter f20282a;

        /* renamed from: b  reason: collision with root package name */
        private final d f20283b;

        public a(CustomEventAdapter customEventAdapter, d dVar) {
            this.f20282a = customEventAdapter;
            this.f20283b = dVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final CustomEventAdapter f20285a;

        /* renamed from: b  reason: collision with root package name */
        private final c f20286b;

        public b(CustomEventAdapter customEventAdapter, c cVar) {
            this.f20285a = customEventAdapter;
            this.f20286b = cVar;
        }
    }

    private static <T> T a(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            za.zzez(sb.toString());
            return null;
        }
    }

    @Override // com.google.ads.mediation.b
    public final void destroy() {
    }

    @Override // com.google.ads.mediation.b
    public final Class<CustomEventExtras> getAdditionalParametersType() {
        return CustomEventExtras.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.f20279a;
    }

    @Override // com.google.ads.mediation.b
    public final Class<c> getServerParametersType() {
        return c.class;
    }

    public final void requestBannerAd(c cVar, Activity activity, c cVar2, com.google.ads.b bVar, com.google.ads.mediation.a aVar, CustomEventExtras customEventExtras) {
        com.google.ads.mediation.customevent.a aVar2 = (com.google.ads.mediation.customevent.a) a(cVar2.f20288b);
        this.f20280b = aVar2;
        if (aVar2 == null) {
            cVar.a(a.EnumC0408a.INTERNAL_ERROR);
            return;
        }
        if (customEventExtras != null) {
            customEventExtras.getExtra(cVar2.f20287a);
        }
        new b(this, cVar);
    }

    public final void requestInterstitialAd(d dVar, Activity activity, c cVar, com.google.ads.mediation.a aVar, CustomEventExtras customEventExtras) {
        com.google.ads.mediation.customevent.b bVar = (com.google.ads.mediation.customevent.b) a(cVar.f20288b);
        this.f20281c = bVar;
        if (bVar == null) {
            dVar.b(a.EnumC0408a.INTERNAL_ERROR);
            return;
        }
        if (customEventExtras != null) {
            customEventExtras.getExtra(cVar.f20287a);
        }
        new a(this, dVar);
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
    }
}
