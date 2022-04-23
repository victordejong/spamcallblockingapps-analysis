package p081h.p160h.p161a.p166l;

import android.content.Context;
import android.widget.LinearLayout;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubView;
import kotlin.Metadata;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.C6205c;
import p081h.p160h.p161a.p169o.C6262a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��-\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\b\u0018��2\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014J\b\u0010\u000e\u001a\u00020\rH\u0016R\u0010\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000f"}, m815d2 = {"Lcom/gogolook/adsdk/fetcher/BannerAdFetcher;", "Lcom/gogolook/adsdk/fetcher/BaseAdFetcher;", "context", "Landroid/content/Context;", "adUnitName", "", "(Landroid/content/Context;Ljava/lang/String;)V", "mBannerAdListener", "com/gogolook/adsdk/fetcher/BannerAdFetcher$mBannerAdListener$1", "Lcom/gogolook/adsdk/fetcher/BannerAdFetcher$mBannerAdListener$1;", "mMopubView", "Lcom/mopub/mobileads/MoPubView;", "fetch", "", "stopFetch", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.l.b */
/* loaded from: classes2-dex2jar.jar:h/h/a/l/b.class */
public final class C6250b extends AbstractC6252c {

    /* renamed from: h */
    public MoPubView f15480h;

    /* renamed from: i */
    public final C6251a f15481i = new C6251a();

    /* renamed from: h.h.a.l.b$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/l/b$a.class */
    public static final class C6251a implements MoPubView.BannerAdListener {
        public C6251a() {
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerClicked(MoPubView moPubView) {
            C15149k.m377b(moPubView, "banner");
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerCollapsed(MoPubView moPubView) {
            C15149k.m377b(moPubView, "banner");
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerExpanded(MoPubView moPubView) {
            C15149k.m377b(moPubView, "banner");
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
            C15149k.m377b(moPubErrorCode, "errorCode");
            if (moPubView != null) {
                moPubView.setBannerAdListener(null);
                moPubView.destroy();
            }
            C6250b bVar = C6250b.this;
            String moPubErrorCode2 = moPubErrorCode.toString();
            C15149k.m383a((Object) moPubErrorCode2, "errorCode.toString()");
            bVar.m23489a(moPubErrorCode2);
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerLoaded(MoPubView moPubView) {
            if (moPubView != null) {
                C6250b.this.m23492a(new C6205c(moPubView, 59));
            } else {
                C6250b.this.m23489a(C6262a.EnumC6266d.ERROR_AD_OBJECT_INVALID.m23447a());
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6250b(Context context, String str) {
        super(context, str, EnumC6184a.BANNER);
        C15149k.m377b(str, "adUnitName");
    }

    @Override // p081h.p160h.p161a.p166l.AbstractC6252c
    /* renamed from: a */
    public void mo23478a(Context context) {
        C15149k.m377b(context, "context");
        MoPubView moPubView = new MoPubView(context);
        moPubView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        moPubView.setBannerAdListener(this.f15481i);
        moPubView.setAutorefreshEnabled(false);
        moPubView.setAdUnitId(m23486c().m23562a());
        moPubView.loadAd();
        this.f15480h = moPubView;
    }

    @Override // p081h.p160h.p161a.p166l.AbstractC6252c
    /* renamed from: j */
    public void mo23479j() {
        super.mo23479j();
        MoPubView moPubView = this.f15480h;
        if (moPubView != null) {
            moPubView.destroy();
        }
        this.f15480h = null;
    }
}
