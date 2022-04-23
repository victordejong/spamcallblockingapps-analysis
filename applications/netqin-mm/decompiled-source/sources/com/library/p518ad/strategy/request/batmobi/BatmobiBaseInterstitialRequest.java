package com.library.p518ad.strategy.request.batmobi;

import com.etap.AdError;
import com.etap.EtapAdType;
import com.etap.EtapBuild;
import com.etap.EtapInterstitial;
import com.etap.EtapLib;
import com.etap.IAdListener;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
/* renamed from: com.library.ad.strategy.request.batmobi.BatmobiBaseInterstitialRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/batmobi/BatmobiBaseInterstitialRequest.class */
public class BatmobiBaseInterstitialRequest extends AbstractC6508d<EtapInterstitial> implements IAdListener {

    /* renamed from: com.library.ad.strategy.request.batmobi.BatmobiBaseInterstitialRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/batmobi/BatmobiBaseInterstitialRequest$a.class */
    public static /* synthetic */ class C8521a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33174a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[AdError.values().length];
            f33174a = iArr;
            try {
                iArr[AdError.NO_NETWORK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33174a[AdError.SERVER_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33174a[AdError.NO_OFFERS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public BatmobiBaseInterstitialRequest(String str) {
        super("BM", str);
    }

    /* renamed from: a */
    public void m5277a(AdError adError) {
        int i = C8521a.f33174a[adError.ordinal()];
        C6549b.m20532a(new C6550c(getAdInfo(), 203, (i != 1 ? i != 2 ? i != 3 ? C6552e.f20335e : C6552e.f20334d : C6552e.f20333c : C6552e.f20332b).toString()));
    }

    public void onAdClicked() {
    }

    public void onAdClosed() {
    }

    public void onAdError(AdError adError) {
        m20620a("network_failure", adError.getMsg());
        m5277a(adError);
    }

    public void onAdLoadFinish(Object obj) {
        if (obj == null || !(obj instanceof EtapInterstitial)) {
            m20620a("network_failure", "no fill");
        } else {
            m20622a("network_success", (AbstractC6514f) m20618a((EtapInterstitial) obj));
        }
    }

    public void onAdShowed() {
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        EtapBuild build = new EtapBuild.Builder(C6489a.m20718b(), getUnitId(), EtapAdType.INTERSTITIAL_320X480.getType(), this).build();
        String str = "EtapBuild.Builder " + build;
        EtapLib.load(build);
        return true;
    }
}
