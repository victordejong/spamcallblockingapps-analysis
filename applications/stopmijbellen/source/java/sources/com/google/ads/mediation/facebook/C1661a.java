package com.google.ads.mediation.facebook;

import android.content.Context;
import com.facebook.ads.AudienceNetworkAds;
import com.google.android.gms.ads.AdError;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.google.ads.mediation.facebook.a */
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/a.class */
public class C1661a implements AudienceNetworkAds.InitListener {

    /* renamed from: d */
    public static C1661a f6201d;

    /* renamed from: a */
    public boolean f6202a = false;

    /* renamed from: b */
    public boolean f6203b = false;

    /* renamed from: c */
    public ArrayList<AbstractC1662a> f6204c = new ArrayList<>();

    /* renamed from: com.google.ads.mediation.facebook.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/a$a.class */
    public interface AbstractC1662a {
        /* renamed from: a */
        void mo4818a();

        /* renamed from: b */
        void mo4817b(AdError adError);
    }

    /* renamed from: a */
    public static C1661a m4822a() {
        if (f6201d == null) {
            f6201d = new C1661a();
        }
        return f6201d;
    }

    /* renamed from: b */
    public void m4821b(Context context, String str, AbstractC1662a abstractC1662a) {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(str);
        m4822a().m4820c(context, arrayList, abstractC1662a);
    }

    /* renamed from: c */
    public void m4820c(Context context, ArrayList<String> arrayList, AbstractC1662a abstractC1662a) {
        if (this.f6202a) {
            this.f6204c.add(abstractC1662a);
        } else if (this.f6203b) {
            abstractC1662a.mo4818a();
        } else {
            this.f6202a = true;
            m4822a().f6204c.add(abstractC1662a);
            AudienceNetworkAds.buildInitSettings(context).withMediationService("GOOGLE:6.8.0.0").withPlacementIds(arrayList).withInitListener(this).initialize();
        }
    }

    @Override // com.facebook.ads.AudienceNetworkAds.InitListener
    public void onInitialized(AudienceNetworkAds.InitResult initResult) {
        this.f6202a = false;
        this.f6203b = initResult.isSuccess();
        Iterator<AbstractC1662a> it2 = this.f6204c.iterator();
        while (it2.hasNext()) {
            AbstractC1662a next = it2.next();
            if (initResult.isSuccess()) {
                next.mo4818a();
            } else {
                next.mo4817b(new AdError(104, initResult.getMessage(), FacebookMediationAdapter.ERROR_DOMAIN));
            }
        }
        this.f6204c.clear();
    }
}
