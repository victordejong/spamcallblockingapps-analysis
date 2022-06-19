package com.jirbo.adcolony;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.mediation.AppLovinUtils;
import com.google.ads.mediation.adcolony.AdColonyMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdConfiguration;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import p068d2.C2168b;
import p068d2.C2227e4;
import p068d2.C2268g;
import p068d2.C2357l;
import p068d2.C2408t;
import p068d2.RunnableC2228f;
/* renamed from: com.jirbo.adcolony.a */
/* loaded from: classes2-dex2jar.jar:com/jirbo/adcolony/a.class */
public class C1975a {

    /* renamed from: c */
    public static C1975a f7267c;

    /* renamed from: a */
    public final ArrayList<String> f7268a = new ArrayList<>();

    /* renamed from: b */
    public boolean f7269b = false;

    /* renamed from: com.jirbo.adcolony.a$a */
    /* loaded from: classes2-dex2jar.jar:com/jirbo/adcolony/a$a.class */
    public interface AbstractC1976a {
        /* renamed from: a */
        void mo1945a();

        /* renamed from: b */
        void mo1944b(AdError adError);
    }

    /* renamed from: d */
    public static C1975a m3986d() {
        if (f7267c == null) {
            f7267c = new C1975a();
        }
        return f7267c;
    }

    /* renamed from: a */
    public void m3989a(Context context, Bundle bundle, MediationAdRequest mediationAdRequest, AbstractC1976a abstractC1976a) {
        String string = bundle.getString("app_id");
        ArrayList<String> m3984f = m3984f(bundle);
        C2357l appOptions = AdColonyMediationAdapter.getAppOptions();
        if (mediationAdRequest != null && mediationAdRequest.isTesting()) {
            C2227e4.m3739n(appOptions.f8370d, "test_mode", true);
        }
        m3988b(context, appOptions, string, m3984f, abstractC1976a);
    }

    /* renamed from: b */
    public void m3988b(Context context, C2357l c2357l, String str, ArrayList<String> arrayList, AbstractC1976a abstractC1976a) {
        boolean z = context instanceof Activity;
        if (!z && !(context instanceof Application)) {
            abstractC1976a.mo1944b(AdColonyMediationAdapter.createAdapterError(106, "AdColony SDK requires an Activity context to initialize"));
        } else if (TextUtils.isEmpty(str)) {
            abstractC1976a.mo1944b(AdColonyMediationAdapter.createAdapterError(101, "Missing or invalid AdColony app ID."));
        } else if (arrayList.isEmpty()) {
            abstractC1976a.mo1944b(AdColonyMediationAdapter.createAdapterError(101, "No zones provided to initialize the AdColony SDK."));
        } else {
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                if (!this.f7268a.contains(next)) {
                    this.f7268a.add(next);
                    this.f7269b = false;
                }
            }
            if (this.f7269b) {
                ExecutorService executorService = C2168b.f7919a;
                if (!C2408t.f8533c) {
                    C0082b.m8750l(0, 1, "Ignoring call to AdColony.setAppOptions() as AdColony has not yet been configured.", false);
                } else {
                    C2408t.m3591d().f8103r = c2357l;
                    Context context2 = C2408t.f8531a;
                    if (context2 != null) {
                        c2357l.m3629c(context2);
                    }
                    C2168b.m3792f(new RunnableC2228f(c2357l));
                }
            } else {
                String[] strArr = (String[]) this.f7268a.toArray(new String[0]);
                C2227e4.m3744i(c2357l.f8370d, "mediation_network", "AdMob");
                C2227e4.m3744i(c2357l.f8370d, "mediation_network_version", "4.6.5.0");
                this.f7269b = z ? C2168b.m3793e((Activity) context, c2357l, str, strArr) : C2168b.m3793e((Application) context, c2357l, str, strArr);
            }
            if (!this.f7269b) {
                abstractC1976a.mo1944b(AdColonyMediationAdapter.createAdapterError(103, "AdColony SDK failed to initialize."));
            } else {
                abstractC1976a.mo1945a();
            }
        }
    }

    /* renamed from: c */
    public C2268g m3987c(MediationAdConfiguration mediationAdConfiguration) {
        boolean z;
        Bundle mediationExtras = mediationAdConfiguration.getMediationExtras();
        boolean z2 = false;
        if (mediationExtras != null) {
            z2 = mediationExtras.getBoolean("show_pre_popup", false);
            z = mediationExtras.getBoolean("show_post_popup", false);
        } else {
            z = false;
        }
        C2268g c2268g = new C2268g();
        c2268g.f8160a = z2;
        C2227e4.m3739n(c2268g.f8162c, "confirmation_enabled", true);
        c2268g.f8161b = z;
        C2227e4.m3739n(c2268g.f8162c, "results_enabled", true);
        String bidResponse = mediationAdConfiguration.getBidResponse();
        if (!bidResponse.isEmpty()) {
            C2227e4.m3744i(c2268g.f8162c, "adm", bidResponse);
        }
        return c2268g;
    }

    /* renamed from: e */
    public String m3985e(ArrayList<String> arrayList, Bundle bundle) {
        String str = (arrayList == null || arrayList.isEmpty()) ? null : arrayList.get(0);
        String str2 = str;
        if (bundle != null) {
            str2 = str;
            if (bundle.getString(AppLovinUtils.ServerParameterKeys.ZONE_ID) != null) {
                str2 = bundle.getString(AppLovinUtils.ServerParameterKeys.ZONE_ID);
            }
        }
        return str2;
    }

    /* renamed from: f */
    public ArrayList<String> m3984f(Bundle bundle) {
        ArrayList<String> arrayList;
        if (bundle != null) {
            String string = bundle.getString("zone_ids") != null ? bundle.getString("zone_ids") : bundle.getString(AppLovinUtils.ServerParameterKeys.ZONE_ID);
            if (string != null) {
                arrayList = new ArrayList<>(Arrays.asList(string.split(";")));
                return arrayList;
            }
        }
        arrayList = null;
        return arrayList;
    }
}
