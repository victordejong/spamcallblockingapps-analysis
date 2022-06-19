package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bae.class */
public final class bae {

    /* renamed from: a */
    private final bee f10772a;

    /* renamed from: b */
    private final bcy f10773b;

    /* renamed from: c */
    private final ajk f10774c;

    /* renamed from: d */
    private final azh f10775d;

    public bae(bee beeVar, bcy bcyVar, ajk ajkVar, azh azhVar) {
        this.f10772a = beeVar;
        this.f10773b = bcyVar;
        this.f10774c = ajkVar;
        this.f10775d = azhVar;
    }

    /* renamed from: a */
    public final View m12179a() {
        act m12037a = this.f10772a.m12037a(dyd.m8193a(), false);
        m12037a.getView().setVisibility(8);
        m12037a.mo13462a("/sendMessageToSdk", new AbstractC3131fa(this) { // from class: com.google.android.gms.internal.ads.bad

            /* renamed from: a */
            private final bae f10771a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10771a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3131fa
            /* renamed from: a */
            public final void mo7414a(Object obj, Map map) {
                this.f10771a.m12174d((act) obj, map);
            }
        });
        m12037a.mo13462a("/adMuted", new AbstractC3131fa(this) { // from class: com.google.android.gms.internal.ads.bag

            /* renamed from: a */
            private final bae f10777a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10777a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3131fa
            /* renamed from: a */
            public final void mo7414a(Object obj, Map map) {
                this.f10777a.m12175c((act) obj, map);
            }
        });
        this.f10773b.m12084a(new WeakReference(m12037a), "/loadHtml", new AbstractC3131fa(this) { // from class: com.google.android.gms.internal.ads.baf

            /* renamed from: a */
            private final bae f10776a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10776a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3131fa
            /* renamed from: a */
            public final void mo7414a(Object obj, final Map map) {
                final bae baeVar = this.f10776a;
                act actVar = (act) obj;
                actVar.mo13426v().mo13528a(new aee(baeVar, map) { // from class: com.google.android.gms.internal.ads.bak

                    /* renamed from: a */
                    private final bae f10784a;

                    /* renamed from: b */
                    private final Map f10785b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10784a = baeVar;
                        this.f10785b = map;
                    }

                    @Override // com.google.android.gms.internal.ads.aee
                    /* renamed from: a */
                    public final void mo11712a(boolean z) {
                        this.f10784a.m12177a(this.f10785b, z);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    actVar.loadData(str, "text/html", "UTF-8");
                } else {
                    actVar.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                }
            }
        });
        this.f10773b.m12084a(new WeakReference(m12037a), "/showOverlay", new AbstractC3131fa(this) { // from class: com.google.android.gms.internal.ads.bai

            /* renamed from: a */
            private final bae f10779a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10779a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3131fa
            /* renamed from: a */
            public final void mo7414a(Object obj, Map map) {
                this.f10779a.m12176b((act) obj, map);
            }
        });
        this.f10773b.m12084a(new WeakReference(m12037a), "/hideOverlay", new AbstractC3131fa(this) { // from class: com.google.android.gms.internal.ads.bah

            /* renamed from: a */
            private final bae f10778a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10778a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3131fa
            /* renamed from: a */
            public final void mo7414a(Object obj, Map map) {
                this.f10778a.m12178a((act) obj, map);
            }
        });
        return m12037a.getView();
    }

    /* renamed from: a */
    public final /* synthetic */ void m12178a(act actVar, Map map) {
        C3556uu.m6747d("Hiding native ads overlay.");
        actVar.getView().setVisibility(8);
        this.f10774c.m13067a(false);
    }

    /* renamed from: a */
    public final /* synthetic */ void m12177a(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "htmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.f10773b.m12087a("sendMessageToNativeJs", hashMap);
    }

    /* renamed from: b */
    public final /* synthetic */ void m12176b(act actVar, Map map) {
        C3556uu.m6747d("Showing native ads overlay.");
        actVar.getView().setVisibility(0);
        this.f10774c.m13067a(true);
    }

    /* renamed from: c */
    public final /* synthetic */ void m12175c(act actVar, Map map) {
        this.f10775d.mo12143e();
    }

    /* renamed from: d */
    public final /* synthetic */ void m12174d(act actVar, Map map) {
        this.f10773b.m12087a("sendMessageToNativeJs", map);
    }
}
