package p081h.p160h.p161a.p162h;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.BaseNativeAdRenderer;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\u000b\u001a\u00020\bH\u0016J\n\u0010\f\u001a\u0004\u0018\u00010\u0003H\u0002J\u001e\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016¨\u0006\u0017"}, m815d2 = {"Lcom/gogolook/adsdk/adobject/BannerAdObject;", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "moPubView", "Lcom/mopub/mobileads/MoPubView;", IapProductRealmObject.EXPIRED_TIME, "", "(Lcom/mopub/mobileads/MoPubView;I)V", "clearAd", "", "adContainer", "Landroid/view/ViewGroup;", "destroy", "getBannerAd", "renderAd", "Landroid/view/View;", "context", "Landroid/content/Context;", "setAdCustomActionListener", "customActionListener", "Lcom/mopub/nativeads/BaseNativeAdRenderer$AdCustomActionListener;", "setAdEventListener", "listener", "Lcom/gogolook/adsdk/adobject/BaseAdObject$AdEventListener;", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.h.c */
/* loaded from: classes2-dex2jar.jar:h/h/a/h/c.class */
public final class C6205c extends AbstractC6207d {

    /* renamed from: h.h.a.h.c$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/h/c$a.class */
    public static final class C6206a implements MoPubView.BannerAdListener {
        public C6206a() {
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerClicked(MoPubView moPubView) {
            AbstractC6207d.AbstractC6208a d = C6205c.this.m23576d();
            if (d != null) {
                d.mo5002a();
            }
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerCollapsed(MoPubView moPubView) {
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerExpanded(MoPubView moPubView) {
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerLoaded(MoPubView moPubView) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6205c(MoPubView moPubView, int i) {
        super(moPubView, i);
        C15149k.m377b(moPubView, "moPubView");
    }

    @Override // p081h.p160h.p161a.p162h.AbstractC6207d
    /* renamed from: a */
    public View mo23572a(Context context, ViewGroup viewGroup) {
        MoPubView g = m23582g();
        if (g == null) {
            return null;
        }
        MoPubView moPubView = context != null && viewGroup != null ? g : null;
        if (moPubView == null) {
            return null;
        }
        mo23571a(viewGroup);
        if (viewGroup != null) {
            viewGroup.addView(moPubView);
        }
        AbstractC6207d.AbstractC6208a d = m23576d();
        if (d == null) {
            return null;
        }
        d.onAdImpression();
        return null;
    }

    @Override // p081h.p160h.p161a.p162h.AbstractC6207d
    /* renamed from: a */
    public void mo23571a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            if (!(viewGroup.getChildCount() > 0)) {
                viewGroup = null;
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
        }
    }

    @Override // p081h.p160h.p161a.p162h.AbstractC6207d
    /* renamed from: a */
    public void mo23570a(BaseNativeAdRenderer.AdCustomActionListener adCustomActionListener) {
        C15149k.m377b(adCustomActionListener, "customActionListener");
    }

    @Override // p081h.p160h.p161a.p162h.AbstractC6207d
    /* renamed from: a */
    public void mo23569a(AbstractC6207d.AbstractC6208a aVar) {
        m23578b(aVar);
        MoPubView g = m23582g();
        if (g != null) {
            g.setBannerAdListener(new C6206a());
        }
    }

    @Override // p081h.p160h.p161a.p162h.AbstractC6207d
    /* renamed from: b */
    public void mo23568b() {
        MoPubView g = m23582g();
        if (g != null) {
            g.setBannerAdListener(null);
            g.destroy();
        }
        m23579a((Object) null);
    }

    /* renamed from: g */
    public final MoPubView m23582g() {
        Object c = m23577c();
        MoPubView moPubView = null;
        if (c != null) {
            if (!(m23577c() instanceof MoPubView)) {
                c = null;
            }
            moPubView = null;
            if (c != null) {
                if (c != null) {
                    moPubView = (MoPubView) c;
                } else {
                    throw new C14986p("null cannot be cast to non-null type com.mopub.mobileads.MoPubView");
                }
            }
        }
        return moPubView;
    }
}
