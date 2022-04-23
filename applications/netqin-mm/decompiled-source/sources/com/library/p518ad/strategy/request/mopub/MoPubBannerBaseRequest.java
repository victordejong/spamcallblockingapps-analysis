package com.library.p518ad.strategy.request.mopub;

import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubView;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
/* renamed from: com.library.ad.strategy.request.mopub.MoPubBannerBaseRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/mopub/MoPubBannerBaseRequest.class */
public class MoPubBannerBaseRequest extends AbstractC6508d<MoPubView> implements MoPubView.BannerAdListener {

    /* renamed from: t */
    public final MoPubView f33186t;

    /* renamed from: u */
    public boolean f33187u = true;

    /* renamed from: v */
    public boolean f33188v = false;

    /* renamed from: com.library.ad.strategy.request.mopub.MoPubBannerBaseRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/mopub/MoPubBannerBaseRequest$a.class */
    public static /* synthetic */ class C8525a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33189a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubErrorCode.values().length];
            f33189a = iArr;
            try {
                iArr[MoPubErrorCode.NETWORK_TIMEOUT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33189a[MoPubErrorCode.INTERNAL_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33189a[MoPubErrorCode.NO_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public MoPubBannerBaseRequest(String str) {
        super("MP", str);
        MoPubView moPubView = new MoPubView(C6489a.m20718b());
        this.f33186t = moPubView;
        moPubView.setAdUnitId(str);
        this.f33186t.setAutorefreshEnabled(this.f33187u);
        this.f33186t.setBannerAdListener(this);
    }

    /* renamed from: a */
    public void m5263a(MoPubErrorCode moPubErrorCode) {
        if (!this.f20267r) {
            int i = C8525a.f33189a[moPubErrorCode.ordinal()];
            C6549b.m20532a(new C6550c(getAdInfo(), 203, (i != 1 ? i != 2 ? i != 3 ? C6552e.f20335e : C6552e.f20334d : C6552e.f20333c : C6552e.f20332b).toString()));
        }
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerClicked(MoPubView moPubView) {
        getInnerAdEventListener().mo3232a(getAdInfo(), 0);
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerCollapsed(MoPubView moPubView) {
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerExpanded(MoPubView moPubView) {
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
        m20620a("network_failure", moPubErrorCode.toString());
        m5263a(moPubErrorCode);
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerLoaded(MoPubView moPubView) {
        String str = "onBannerLoaded isLoad :" + this.f33188v + " Width:" + moPubView.getWidth() + " Height:" + moPubView.getHeight();
        if (!this.f33188v) {
            this.f33188v = true;
            m20622a("network_success", (AbstractC6514f) m20618a(moPubView));
        }
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public void onDestroy() {
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        this.f33186t.loadAd();
        return true;
    }

    public void setAutoRefresh(boolean z) {
        this.f33187u = z;
    }
}
