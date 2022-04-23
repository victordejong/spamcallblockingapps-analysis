package com.library.p518ad.strategy.request.batmobi;

import com.etap.AdError;
import com.etap.EtapAdType;
import com.etap.EtapBanner;
import com.etap.EtapBuild;
import com.etap.EtapLib;
import com.etap.IAdListener;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
/* renamed from: com.library.ad.strategy.request.batmobi.BatmobiBaseBannerRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/batmobi/BatmobiBaseBannerRequest.class */
public class BatmobiBaseBannerRequest extends AbstractC6508d<EtapBanner> implements IAdListener {

    /* renamed from: t */
    public EtapAdType.Banner f33172t = EtapAdType.Banner.BANNER_320X50;

    /* renamed from: com.library.ad.strategy.request.batmobi.BatmobiBaseBannerRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/batmobi/BatmobiBaseBannerRequest$a.class */
    public static /* synthetic */ class C8520a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33173a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[AdError.values().length];
            f33173a = iArr;
            try {
                iArr[AdError.NO_NETWORK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33173a[AdError.SERVER_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33173a[AdError.NO_OFFERS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public BatmobiBaseBannerRequest(String str) {
        super("BM", str);
    }

    /* renamed from: a */
    public void m5278a(AdError adError) {
        int i = C8520a.f33173a[adError.ordinal()];
        C6549b.m20532a(new C6550c(getAdInfo(), 203, (i != 1 ? i != 2 ? i != 3 ? C6552e.f20335e : C6552e.f20334d : C6552e.f20333c : C6552e.f20332b).toString()));
    }

    public EtapAdType.Banner getBannerSize() {
        return this.f33172t;
    }

    public void onAdClicked() {
    }

    public void onAdClosed() {
    }

    public void onAdError(AdError adError) {
        m20620a("network_failure", adError.getMsg());
        m5278a(adError);
    }

    public void onAdLoadFinish(Object obj) {
        if (obj == null || !(obj instanceof EtapBanner)) {
            m20620a("network_failure", "no fill");
        } else {
            m20622a("network_success", (AbstractC6514f) m20618a((EtapBanner) obj));
        }
    }

    public void onAdShowed() {
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        EtapLib.load(new EtapBuild.Builder(C6489a.m20718b(), getUnitId(), this.f33172t.getType(), this).build());
        return false;
    }

    public void setBannerSize(EtapAdType.Banner banner) {
        this.f33172t = banner;
    }
}
