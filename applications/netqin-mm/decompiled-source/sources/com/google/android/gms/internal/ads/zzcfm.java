package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import com.android.volley.Request;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbhu;
import com.google.android.gms.internal.ads.zzcfm;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfm.class */
public final class zzcfm {

    /* renamed from: a */
    public final zzcjt f25945a;

    /* renamed from: b */
    public final zzcil f25946b;

    /* renamed from: c */
    public final zzbnd f25947c;

    /* renamed from: d */
    public final zzceq f25948d;

    public zzcfm(zzcjt zzcjtVar, zzcil zzcilVar, zzbnd zzbndVar, zzceq zzceqVar) {
        this.f25945a = zzcjtVar;
        this.f25946b = zzcilVar;
        this.f25947c = zzbndVar;
        this.f25948d = zzceqVar;
    }

    /* renamed from: a */
    public final View m14341a() throws zzbgv {
        zzbgj a = this.f25945a.m14129a(zzvn.m11195i());
        a.getView().setVisibility(8);
        a.mo15570b("/sendMessageToSdk", new zzahq(this) { // from class: c.d.b.d.g.a.wh

            /* renamed from: a */
            public final zzcfm f15947a;

            {
                this.f15947a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzahq
            /* renamed from: a */
            public final void mo14168a(Object obj, Map map) {
                this.f15947a.m14336d((zzbgj) obj, map);
            }
        });
        a.mo15570b("/adMuted", new zzahq(this) { // from class: c.d.b.d.g.a.yh

            /* renamed from: a */
            public final zzcfm f16218a;

            {
                this.f16218a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzahq
            /* renamed from: a */
            public final void mo14168a(Object obj, Map map) {
                this.f16218a.m14337c((zzbgj) obj, map);
            }
        });
        this.f25946b.m14172a(new WeakReference(a), "/loadHtml", new zzahq(this) { // from class: c.d.b.d.g.a.xh

            /* renamed from: a */
            public final zzcfm f16045a;

            {
                this.f16045a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzahq
            /* renamed from: a */
            public final void mo14168a(Object obj, Map map) {
                zzbgj zzbgjVar = (zzbgj) obj;
                zzbgjVar.mo15543z().mo15492a(new zzbhu(this.f16045a, map) { // from class: c.d.b.d.g.a.bi

                    /* renamed from: a */
                    public final zzcfm f12478a;

                    /* renamed from: b */
                    public final Map f12479b;

                    {
                        this.f12478a = r4;
                        this.f12479b = map;
                    }

                    @Override // com.google.android.gms.internal.ads.zzbhu
                    /* renamed from: a */
                    public final void mo15515a(boolean z) {
                        this.f12478a.m14339a(this.f12479b, z);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzbgjVar.loadData(str, "text/html", Request.DEFAULT_PARAMS_ENCODING);
                } else {
                    zzbgjVar.loadDataWithBaseURL(str2, str, "text/html", Request.DEFAULT_PARAMS_ENCODING, null);
                }
            }
        });
        this.f25946b.m14172a(new WeakReference(a), "/showOverlay", new zzahq(this) { // from class: c.d.b.d.g.a.ai

            /* renamed from: a */
            public final zzcfm f12292a;

            {
                this.f12292a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzahq
            /* renamed from: a */
            public final void mo14168a(Object obj, Map map) {
                this.f12292a.m14338b((zzbgj) obj, map);
            }
        });
        this.f25946b.m14172a(new WeakReference(a), "/hideOverlay", new zzahq(this) { // from class: c.d.b.d.g.a.zh

            /* renamed from: a */
            public final zzcfm f16454a;

            {
                this.f16454a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzahq
            /* renamed from: a */
            public final void mo14168a(Object obj, Map map) {
                this.f16454a.m14340a((zzbgj) obj, map);
            }
        });
        return a.getView();
    }

    /* renamed from: a */
    public final /* synthetic */ void m14340a(zzbgj zzbgjVar, Map map) {
        zzbbq.m15854c("Hiding native ads overlay.");
        zzbgjVar.getView().setVisibility(8);
        this.f25947c.m15293a(false);
    }

    /* renamed from: a */
    public final /* synthetic */ void m14339a(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "htmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.f25946b.m14175a("sendMessageToNativeJs", hashMap);
    }

    /* renamed from: b */
    public final /* synthetic */ void m14338b(zzbgj zzbgjVar, Map map) {
        zzbbq.m15854c("Showing native ads overlay.");
        zzbgjVar.getView().setVisibility(0);
        this.f25947c.m15293a(true);
    }

    /* renamed from: c */
    public final /* synthetic */ void m14337c(zzbgj zzbgjVar, Map map) {
        this.f25948d.mo14317a();
    }

    /* renamed from: d */
    public final /* synthetic */ void m14336d(zzbgj zzbgjVar, Map map) {
        this.f25946b.m14175a("sendMessageToNativeJs", map);
    }
}
