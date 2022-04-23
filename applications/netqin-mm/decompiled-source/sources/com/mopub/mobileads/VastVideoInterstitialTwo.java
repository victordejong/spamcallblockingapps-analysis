package com.mopub.mobileads;

import com.mopub.common.AdReport;
import com.mopub.common.CacheService;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.VastManager;
import com.mopub.mobileads.VastVideoConfig;
import com.mopub.mobileads.factories.VastManagerFactory;
import java.util.Map;
import org.json.JSONObject;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.C6118f;
import p573f.C9946p;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoInterstitialTwo.class */
public class VastVideoInterstitialTwo extends ResponseBodyInterstitial implements VastManager.VastManagerListener {
    public static final Companion Companion = new Companion(null);

    /* renamed from: o */
    public static final String f34305o;

    /* renamed from: g */
    public String f34306g;

    /* renamed from: h */
    public VastManager f34307h;

    /* renamed from: i */
    public VastVideoConfigTwo f34308i;

    /* renamed from: j */
    public CustomEventInterstitial.CustomEventInterstitialListener f34309j;

    /* renamed from: k */
    public JSONObject f34310k;

    /* renamed from: l */
    public Map<String, String> f34311l;

    /* renamed from: m */
    public CreativeOrientation f34312m;

    /* renamed from: n */
    public boolean f34313n;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoInterstitialTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }

        public final String getADAPTER_NAME() {
            return VastVideoInterstitialTwo.f34305o;
        }
    }

    static {
        String simpleName = VastVideoInterstitialTwo.class.getSimpleName();
        C10059q.m1642a((Object) simpleName, "VastVideoInterstitialTwo::class.java.simpleName");
        f34305o = simpleName;
    }

    @VisibleForTesting
    public static /* synthetic */ void vastManager$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void vastResponse$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void vastVideoConfig$annotations() {
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo4032a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        C10059q.m1637b(customEventInterstitialListener, "listener");
        this.f34309j = customEventInterstitialListener;
        if (!CacheService.initializeDiskCache(this.f34198c)) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f34305o, Integer.valueOf(MoPubErrorCode.VIDEO_CACHE_ERROR.getIntCode()), MoPubErrorCode.VIDEO_CACHE_ERROR);
            customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.VIDEO_CACHE_ERROR);
            return;
        }
        VastManager create = VastManagerFactory.create(this.f34198c);
        String str = this.f34306g;
        AdReport adReport = this.f34199d;
        C10059q.m1642a((Object) adReport, "mAdReport");
        create.prepareVastVideoConfiguration(str, this, adReport.getDspCreativeId(), this.f34198c);
        this.f34307h = create;
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, f34305o);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00ac  */
    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo4049a(java.util.Map<java.lang.String, java.lang.String> r7) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastVideoInterstitialTwo.mo4049a(java.util.Map):void");
    }

    public final VastManager getVastManager() {
        return this.f34307h;
    }

    public final String getVastResponse() {
        return this.f34306g;
    }

    public final VastVideoConfigTwo getVastVideoConfig() {
        return this.f34308i;
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        VastManager vastManager = this.f34307h;
        if (vastManager != null) {
            vastManager.cancel();
        }
        super.onInvalidate();
    }

    public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
        if (vastVideoConfig != null) {
            C6118f fVar = new C6118f();
            fVar.m21966a(new VastVideoConfig.VastVideoConfigTypeAdapterFactory());
            C6111e a = fVar.m21968a();
            VastVideoConfigTwo vastVideoConfigTwo = (VastVideoConfigTwo) a.m21979a(a.m21984a(vastVideoConfig), (Class<Object>) VastVideoConfigTwo.class);
            if (vastVideoConfigTwo != null) {
                this.f34308i = vastVideoConfigTwo;
                vastVideoConfigTwo.addVideoTrackers(this.f34310k);
                vastVideoConfigTwo.addExternalViewabilityTrackers(this.f34311l);
                vastVideoConfigTwo.setEnableClickExperiment(this.f34313n);
                CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener = this.f34309j;
                if (customEventInterstitialListener != null) {
                    customEventInterstitialListener.onInterstitialLoaded();
                }
                if (vastVideoConfigTwo != null) {
                    return;
                }
            }
        }
        CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener2 = this.f34309j;
        if (customEventInterstitialListener2 != null) {
            customEventInterstitialListener2.onInterstitialFailed(MoPubErrorCode.VIDEO_DOWNLOAD_ERROR);
            C9946p pVar = C9946p.f37137a;
        }
    }

    public final void setVastManager(VastManager vastManager) {
        this.f34307h = vastManager;
    }

    public final void setVastResponse(String str) {
        this.f34306g = str;
    }

    public final void setVastVideoConfig(VastVideoConfigTwo vastVideoConfigTwo) {
        this.f34308i = vastVideoConfigTwo;
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, f34305o);
        BaseVideoPlayerActivity.m4418b(this.f34198c, this.f34308i, this.f34200e, this.f34312m);
    }
}
