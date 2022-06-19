package com.google.ads.mediation.applovin;

import android.content.Context;
import com.applovin.mediation.ApplovinAdapter;
import com.applovin.mediation.BuildConfig;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: com.google.ads.mediation.applovin.a */
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/applovin/a.class */
public class C1644a {

    /* renamed from: c */
    public static C1644a f6160c;

    /* renamed from: a */
    public final HashMap<String, Integer> f6161a = new HashMap<>();

    /* renamed from: b */
    public final HashMap<String, ArrayList<AbstractC1646b>> f6162b = new HashMap<>();

    /* renamed from: com.google.ads.mediation.applovin.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/applovin/a$a.class */
    public class C1645a implements AppLovinSdk.SdkInitializationListener {

        /* renamed from: a */
        public final /* synthetic */ String f6163a;

        public C1645a(String str) {
            C1644a.this = r4;
            this.f6163a = str;
        }

        @Override // com.applovin.sdk.AppLovinSdk.SdkInitializationListener
        public void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration) {
            C1644a.this.f6161a.put(this.f6163a, 2);
            ArrayList<AbstractC1646b> arrayList = C1644a.this.f6162b.get(this.f6163a);
            if (arrayList != null) {
                Iterator<AbstractC1646b> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().onInitializeSuccess(this.f6163a);
                }
                arrayList.clear();
            }
        }
    }

    /* renamed from: com.google.ads.mediation.applovin.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/applovin/a$b.class */
    public interface AbstractC1646b {
        void onInitializeSuccess(String str);
    }

    /* renamed from: a */
    public static C1644a m4828a() {
        if (f6160c == null) {
            f6160c = new C1644a();
        }
        return f6160c;
    }

    /* renamed from: b */
    public void m4827b(Context context, String str, AbstractC1646b abstractC1646b) {
        if (!this.f6161a.containsKey(str)) {
            this.f6161a.put(str, 0);
            this.f6162b.put(str, new ArrayList<>());
        }
        Integer num = 2;
        if (num.equals(this.f6161a.get(str))) {
            abstractC1646b.onInitializeSuccess(str);
            return;
        }
        this.f6162b.get(str).add(abstractC1646b);
        Integer num2 = 1;
        if (num2.equals(this.f6161a.get(str))) {
            return;
        }
        this.f6161a.put(str, 1);
        ApplovinAdapter.log(3, String.format("Attempting to initialize SDK with SDK Key: %s", str));
        AppLovinSdk appLovinSdk = AppLovinSdk.getInstance(str, AppLovinMediationAdapter.getSdkSettings(context), context);
        appLovinSdk.setPluginVersion(BuildConfig.ADAPTER_VERSION);
        appLovinSdk.setMediationProvider(AppLovinMediationProvider.ADMOB);
        appLovinSdk.initializeSdk(new C1645a(str));
    }
}
