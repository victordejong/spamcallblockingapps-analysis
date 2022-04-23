package com.inmobi.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.view.View;
import com.inmobi.ads.AbstractC8252i;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.p503d.C8224a;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.rendering.RenderView;
import java.util.Map;
/* renamed from: com.inmobi.ads.p */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/p.class */
public class C8298p extends AbstractC8252i implements Application.ActivityLifecycleCallbacks {

    /* renamed from: C */
    public static final String f32293C = C8298p.class.getSimpleName();

    /* renamed from: D */
    public static final String f32294D = InMobiBanner.class.getSimpleName();

    /* renamed from: B */
    public String f32296B;

    /* renamed from: E */
    public boolean f32297E;

    /* renamed from: z */
    public boolean f32299z = false;

    /* renamed from: A */
    public boolean f32295A = false;

    /* renamed from: F */
    public int f32298F = 0;

    public C8298p(Context context, long j, AbstractC8252i.AbstractC8282b bVar) {
        super(context, j, bVar);
    }

    /* renamed from: a */
    public static C8298p m5977a(Context context, C8175bj bjVar, AbstractC8252i.AbstractC8282b bVar) {
        return new C8298p(context, bjVar.f31894a, bVar);
    }

    /* renamed from: a */
    public static C8298p m5976a(Context context, C8175bj bjVar, AbstractC8252i.AbstractC8282b bVar, int i) {
        AbstractC8252i iVar = C8224a.f32105a.get(bjVar);
        C8298p pVar = iVar instanceof C8298p ? (C8298p) iVar : null;
        if (pVar == null || 1 != i) {
            if (pVar == null) {
                new StringBuilder("Creating new adUnit for placement-ID : ").append(bjVar.f31894a);
                C8298p pVar2 = new C8298p(context, bjVar.f31894a, bVar);
                pVar = pVar2;
                if (i != 0) {
                    C8224a.f32105a.put(bjVar, pVar2);
                    pVar = pVar2;
                }
            } else {
                new StringBuilder("Found pre-fetching adUnit for placement-ID : ").append(bjVar.f31894a);
                super.mo5978a(context);
                C8224a.f32105a.remove(bjVar);
                pVar.f32297E = true;
            }
            pVar.m6082a(bVar);
            pVar.mo6086a(bjVar.f31899f);
            return pVar;
        }
        throw new IllegalStateException("There's already a pre-loading going on for the same placementID");
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: F */
    public final void mo5984F() {
        if (1 == this.f32193a) {
            this.f32193a = 9;
            if (!this.f32206n) {
                this.f32297E = false;
                m5970c(false);
                return;
            }
            AbstractC8252i.AbstractC8285e eVar = this.f32209q;
            if (eVar != null) {
                eVar.mo5991a(this);
            }
        }
    }

    /* renamed from: M */
    public final void m5983M() {
        RenderView renderView = (RenderView) m6039j();
        if (renderView != null) {
            this.f32295A = true;
            renderView.mo5607a();
        }
    }

    /* renamed from: N */
    public final boolean m5982N() {
        return this.f32193a == 8;
    }

    /* renamed from: O */
    public final void m5981O() {
        AdContainer j;
        AbstractC8213cb viewableAd;
        int i = this.f32193a;
        if ((i == 4 || i == 7 || i == 8) && (j = m6039j()) != null && (viewableAd = j.getViewableAd()) != null) {
            viewableAd.mo5934d();
        }
    }

    /* renamed from: P */
    public final void m5980P() {
        AdContainer j;
        AbstractC8213cb viewableAd;
        int i = this.f32193a;
        if ((i == 4 || i == 7 || i == 8) && (j = m6039j()) != null && (viewableAd = j.getViewableAd()) != null) {
            viewableAd.mo5937a(new View[0]);
        }
    }

    /* renamed from: Q */
    public final void m5979Q() {
        if (m6092a() instanceof Activity) {
            ((Activity) m6092a()).getApplication().unregisterActivityLifecycleCallbacks(this);
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: a */
    public final void mo5978a(Context context) {
        super.mo5978a(context);
    }

    @Override // com.inmobi.ads.AbstractC8252i, com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: a */
    public final void mo5550a(RenderView renderView) {
        try {
            super.mo5550a(renderView);
            if (this.f32193a == 2) {
                m6103A();
                this.f32193a = 4;
                m6100D();
                Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
                String str = f32294D;
                Logger.m5724a(internalLogLevel, str, "Successfully loaded Banner ad markup in the WebView for placement id: " + this.f32196d);
                if (m6047f() != null) {
                    m6047f().mo6012a();
                }
                m6028s();
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f32294D, "Unable to load ad; SDK encountered an internal error");
            new StringBuilder("Loading ad markup into container encountered an unexpected error: ").append(e.getMessage());
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: b */
    public final String mo5975b() {
        return "banner";
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: b */
    public final void mo5974b(InMobiAdRequestStatus inMobiAdRequestStatus) {
        if (1 == this.f32193a) {
            this.f32193a = 3;
            if (!this.f32206n) {
                AbstractC8252i.AbstractC8282b f = m6047f();
                if (f != null) {
                    this.f32297E = false;
                    m6080a(f, "VAR", "");
                    m6080a(f, "ARN", "");
                    f.mo6011a(inMobiAdRequestStatus);
                    return;
                }
                AbstractC8252i.AbstractC8285e eVar = this.f32209q;
                if (eVar != null) {
                    eVar.mo5990a(this, inMobiAdRequestStatus);
                    return;
                }
                return;
            }
            AbstractC8252i.AbstractC8285e eVar2 = this.f32209q;
            if (eVar2 != null) {
                eVar2.mo5990a(this, inMobiAdRequestStatus);
            }
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: b */
    public final void mo5973b(C8047a aVar) {
    }

    @Override // com.inmobi.ads.AbstractC8252i, com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: b */
    public final void mo5548b(RenderView renderView) {
        try {
            super.mo5548b(renderView);
            if (this.f32193a == 4) {
                this.f32193a = 7;
                m6050d("AdRendered");
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f32294D, "Unable to load ad; SDK encountered an internal error");
            new StringBuilder("BannerAdUnit.onRenderViewVisible threw unexpected error: ").append(e.getMessage());
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: c */
    public final String mo5972c() {
        return this.f32296B;
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: c */
    public final void mo5971c(long j, C8047a aVar) {
        try {
            super.mo5971c(j, aVar);
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
            String str = f32294D;
            Logger.m5724a(internalLogLevel, str, "Banner ad fetch successful for placement id: " + this.f32196d);
            if (j == this.f32196d && this.f32193a == 2) {
                m6065a(false, mo5967k());
                try {
                    Logger.InternalLogLevel internalLogLevel2 = Logger.InternalLogLevel.DEBUG;
                    String str2 = f32294D;
                    Logger.m5724a(internalLogLevel2, str2, "Started loading banner ad markup in WebView for placement id: " + this.f32196d);
                    m6081a((AbstractC8252i.AbstractC8282b) null, this.f32200h, (Runnable) null, (Looper) null);
                } catch (Exception e) {
                    m6103A();
                    if (m6047f() != null) {
                        m6047f().mo6011a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                    }
                    Logger.m5724a(Logger.InternalLogLevel.ERROR, f32294D, "Unable to load ad; SDK encountered an internal error");
                    new StringBuilder("Loading ad markup into container encountered an unexpected error: ").append(e.getMessage());
                }
            }
        } catch (Exception e2) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f32294D, "Unable to load ad; SDK encountered an internal error");
            new StringBuilder("Handling ad fetch successful encountered an unexpected error: ").append(e2.getMessage());
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i, com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: c */
    public final void mo5545c(RenderView renderView) {
        synchronized (this) {
            try {
                super.mo5545c(renderView);
                if (this.f32193a == 7) {
                    this.f32298F++;
                    this.f32193a = 8;
                    Logger.m5724a(Logger.InternalLogLevel.DEBUG, f32294D, "Successfully displayed banner ad for placement Id : " + this.f32196d);
                    if (m6047f() != null) {
                        m6047f().mo6001d();
                    }
                } else if (this.f32193a == 8) {
                    this.f32298F++;
                }
            } catch (Exception e) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, f32294D, "Unable to display ad; SDK encountered an internal error");
                new StringBuilder("BannerAdUnit.onAdScreenDisplayed threw unexpected error: ").append(e.getMessage());
            }
        }
    }

    /* renamed from: c */
    public final void m5970c(boolean z) {
        if (z) {
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
            String str = f32294D;
            Logger.m5724a(internalLogLevel, str, "Initiating Banner refresh for placement id: " + this.f32196d);
        }
        Logger.InternalLogLevel internalLogLevel2 = Logger.InternalLogLevel.DEBUG;
        String str2 = f32294D;
        Logger.m5724a(internalLogLevel2, str2, "Fetching a Banner ad for placement id: " + this.f32196d);
        this.f32215w = false;
        this.f32299z = z;
        int i = this.f32193a;
        if (1 == i) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f32293C, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad");
            if (!this.f32297E) {
                mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_PENDING), false);
            }
        } else if (2 == i || 8 == i) {
            mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false);
            Logger.InternalLogLevel internalLogLevel3 = Logger.InternalLogLevel.ERROR;
            String str3 = f32294D;
            Logger.m5724a(internalLogLevel3, str3, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: " + this.f32196d);
        } else {
            super.mo6032n();
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: d */
    public final AdContainer.RenderingProperties.PlacementType mo5969d() {
        return AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE;
    }

    @Override // com.inmobi.ads.AbstractC8252i, com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: d */
    public final void mo5544d(RenderView renderView) {
        synchronized (this) {
            try {
                super.mo5544d(renderView);
                if (this.f32193a == 8) {
                    int i = this.f32298F - 1;
                    this.f32298F = i;
                    if (i == 0) {
                        this.f32193a = 7;
                        if (m6047f() != null) {
                            m6047f().mo6000e();
                        }
                    }
                }
            } catch (Exception e) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, f32294D, "Unable to dismiss ad; SDK encountered an internal error");
                new StringBuilder("BannerAdUnit.onAdScreenDismissed threw unexpected error: ").append(e.getMessage());
            }
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: e */
    public final Map<String, String> mo5968e() {
        Map<String, String> e = super.mo5968e();
        e.put("u-rt", this.f32299z ? "1" : "0");
        e.put("mk-ad-slot", this.f32296B);
        return e;
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: k */
    public final RenderView mo5967k() {
        RenderView k = super.mo5967k();
        if (this.f32295A && k != null) {
            k.mo5607a();
        }
        return k;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Context a = m6092a();
        if (a != null && a.equals(activity)) {
            ((Activity) a).getApplication().unregisterActivityLifecycleCallbacks(this);
            mo6027t();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Context a = m6092a();
        if (a != null && a.equals(activity)) {
            m5980P();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Context a = m6092a();
        if (a != null && a.equals(activity)) {
            m5981O();
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: q */
    public final void mo5966q() {
        super.mo5966q();
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: r */
    public final int mo5965r() {
        int i = this.f32193a;
        if (1 == i || 2 == i) {
            this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.p.1
                @Override // java.lang.Runnable
                public final void run() {
                    C8298p.this.mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_PENDING), false);
                }
            });
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.ERROR;
            String str = f32294D;
            Logger.m5724a(internalLogLevel, str, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: " + this.f32196d);
            return 2;
        } else if (i != 8) {
            return super.mo5965r();
        } else {
            this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.p.2
                @Override // java.lang.Runnable
                public final void run() {
                    C8298p.this.mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false);
                }
            });
            Logger.InternalLogLevel internalLogLevel2 = Logger.InternalLogLevel.ERROR;
            String str2 = f32294D;
            Logger.m5724a(internalLogLevel2, str2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: " + this.f32196d);
            return 3;
        }
    }
}
