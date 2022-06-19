package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cg1.class */
public final class cg1 {

    /* renamed from: a */
    private final bl1 f21234a;

    /* renamed from: b */
    private final qj1 f21235b;

    /* renamed from: c */
    private final pv0 f21236c;

    /* renamed from: d */
    private final ze1 f21237d;

    public cg1(bl1 bl1Var, qj1 qj1Var, pv0 pv0Var, ze1 ze1Var) {
        this.f21234a = bl1Var;
        this.f21235b = qj1Var;
        this.f21236c = pv0Var;
        this.f21237d = ze1Var;
    }

    /* renamed from: a */
    public final View m16055a() {
        wn0 m16322b = this.f21234a.m16322b(zzbdl.m8082l0(), null, null);
        ((View) m16322b).setVisibility(8);
        m16322b.mo7899l0("/sendMessageToSdk", new n20(this) { // from class: com.google.android.gms.internal.ads.wf1

            /* renamed from: a */
            private final cg1 f31560a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31560a = this;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                this.f31560a.m16050f((wn0) obj, map);
            }
        });
        m16322b.mo7899l0("/adMuted", new n20(this) { // from class: com.google.android.gms.internal.ads.xf1

            /* renamed from: a */
            private final cg1 f32034a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32034a = this;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                this.f32034a.m16051e((wn0) obj, map);
            }
        });
        this.f21235b.m11872i(new WeakReference(m16322b), "/loadHtml", new n20(this) { // from class: com.google.android.gms.internal.ads.yf1

            /* renamed from: a */
            private final cg1 f32487a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32487a = this;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                wn0 wn0Var = (wn0) obj;
                wn0Var.mo7914c0().mo14085f0(new hp0(this.f32487a, map) { // from class: com.google.android.gms.internal.ads.bg1

                    /* renamed from: d */
                    private final cg1 f20442d;

                    /* renamed from: e */
                    private final Map f20443e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f20442d = r4;
                        this.f20443e = map;
                    }

                    @Override // com.google.android.gms.internal.ads.hp0
                    /* renamed from: b */
                    public final void mo8634b(boolean z) {
                        this.f20442d.m16052d(this.f20443e, z);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    wn0Var.loadData(str, "text/html", "UTF-8");
                } else {
                    wn0Var.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                }
            }
        });
        this.f21235b.m11872i(new WeakReference(m16322b), "/showOverlay", new n20(this) { // from class: com.google.android.gms.internal.ads.zf1

            /* renamed from: a */
            private final cg1 f32918a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32918a = this;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                this.f32918a.m16053c((wn0) obj, map);
            }
        });
        this.f21235b.m11872i(new WeakReference(m16322b), "/hideOverlay", new n20(this) { // from class: com.google.android.gms.internal.ads.ag1

            /* renamed from: a */
            private final cg1 f19948a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19948a = this;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                this.f19948a.m16054b((wn0) obj, map);
            }
        });
        return (View) m16322b;
    }

    /* renamed from: b */
    public final /* synthetic */ void m16054b(wn0 wn0Var, Map map) {
        ei0.m15465e("Hiding native ads overlay.");
        wn0Var.mo7960D().setVisibility(8);
        this.f21236c.m12127d(false);
    }

    /* renamed from: c */
    public final /* synthetic */ void m16053c(wn0 wn0Var, Map map) {
        ei0.m15465e("Showing native ads overlay.");
        wn0Var.mo7960D().setVisibility(0);
        this.f21236c.m12127d(true);
    }

    /* renamed from: d */
    public final /* synthetic */ void m16052d(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "htmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.f21235b.m11874g("sendMessageToNativeJs", hashMap);
    }

    /* renamed from: e */
    public final /* synthetic */ void m16051e(wn0 wn0Var, Map map) {
        this.f21237d.mo8428G();
    }

    /* renamed from: f */
    public final /* synthetic */ void m16050f(wn0 wn0Var, Map map) {
        this.f21235b.m11874g("sendMessageToNativeJs", map);
    }
}
