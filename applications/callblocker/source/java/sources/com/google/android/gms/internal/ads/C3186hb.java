package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.hb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hb.class */
public final class C3186hb extends C3199ho<AbstractC3241jc> implements AbstractC3195hk, AbstractC3200hp {

    /* renamed from: a */
    private final aex f16705a;

    /* renamed from: b */
    private AbstractC3203hs f16706b;

    public C3186hb(Context context, C3647yd c3647yd) {
        try {
            this.f16705a = new aex(context, new C3192hh(this));
            this.f16705a.setWillNotDraw(true);
            this.f16705a.addJavascriptInterface(new C3193hi(this), "GoogleJsInterface");
            C2341q.m14744c().m7004a(context, c3647yd.f17636a, this.f16705a.getSettings());
            super.m7790a(this);
        } catch (Throwable th) {
            throw new zzbew("Init failed.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: a */
    public final void mo7782a() {
        this.f16705a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: a */
    public final void mo7780a(AbstractC3203hs abstractC3203hs) {
        this.f16706b = abstractC3203hs;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: a */
    public final void mo7778a(String str) {
        mo7776b(String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>", str));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3195hk
    /* renamed from: a */
    public final void mo7738a(String str, String str2) {
        C3194hj.m7796a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3187hc
    /* renamed from: a */
    public final void mo7737a(String str, Map map) {
        C3194hj.m7795a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: a */
    public final void mo7736a(String str, JSONObject jSONObject) {
        C3194hj.m7794a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: b */
    public final void mo7776b(String str) {
        C3650yg.f17646e.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.he

            /* renamed from: a */
            private final C3186hb f16709a;

            /* renamed from: b */
            private final String f16710b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16709a = this;
                this.f16710b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16709a.m7800g(this.f16710b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3195hk, com.google.android.gms.internal.ads.AbstractC3187hc
    /* renamed from: b */
    public final void mo7734b(String str, JSONObject jSONObject) {
        C3194hj.m7793b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: b */
    public final boolean mo7777b() {
        return this.f16705a.m13419B();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: c */
    public final AbstractC3240jb mo7775c() {
        return new C3242jd(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: c */
    public final void mo7774c(String str) {
        C3650yg.f17646e.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.hd

            /* renamed from: a */
            private final C3186hb f16707a;

            /* renamed from: b */
            private final String f16708b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16707a = this;
                this.f16708b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16707a.m7801f(this.f16708b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3195hk, com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: d */
    public final void mo7733d(String str) {
        C3650yg.f17646e.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.hg

            /* renamed from: a */
            private final C3186hb f16711a;

            /* renamed from: b */
            private final String f16712b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16711a = this;
                this.f16712b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16711a.m7802e(this.f16712b);
            }
        });
    }

    /* renamed from: e */
    public final /* synthetic */ void m7802e(String str) {
        this.f16705a.mo7733d(str);
    }

    /* renamed from: f */
    public final /* synthetic */ void m7801f(String str) {
        this.f16705a.loadUrl(str);
    }

    /* renamed from: g */
    public final /* synthetic */ void m7800g(String str) {
        this.f16705a.loadData(str, "text/html", "UTF-8");
    }
}
