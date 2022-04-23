package p131c.p396i.p397a.p406i.p411f.p414j;

import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.library.p518ad.core.AdInfo;
import com.library.p518ad.core.BaseAdResult;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p406i.p411f.AbstractC6582c;
import p131c.p396i.p397a.p417j.C6617d;
/* renamed from: c.i.a.i.f.j.c */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/j/c.class */
public class C6605c extends AbstractC6582c<InterstitialAd> {

    /* renamed from: e */
    public InterstitialAd f20415e;

    /* renamed from: c.i.a.i.f.j.c$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/f/j/c$a.class */
    public class C6606a implements InterstitialAdListener {

        /* renamed from: a */
        public final InterstitialAdListener f20416a;

        /* renamed from: b */
        public int f20417b;

        public C6606a(InterstitialAdListener interstitialAdListener) {
            this.f20416a = interstitialAdListener;
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC7079Ad ad) {
            if (C6605c.this.f20385b == null || C6605c.this.f20386c == null) {
                InterstitialAdListener interstitialAdListener = this.f20416a;
                if (interstitialAdListener != null) {
                    interstitialAdListener.onAdClicked(ad);
                }
            } else {
                C6605c.this.f20386c.mo3232a(C6605c.this.f20385b, 0);
            }
            if (C6605c.this.f20385b != null) {
                AdInfo adInfo = C6605c.this.f20385b;
                int i = this.f20417b + 1;
                this.f20417b = i;
                C6549b.m20532a(new C6550c(adInfo, 302, String.valueOf(i)));
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC7079Ad ad) {
            InterstitialAdListener interstitialAdListener = this.f20416a;
            if (interstitialAdListener != null) {
                interstitialAdListener.onAdLoaded(ad);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC7079Ad ad, AdError adError) {
            InterstitialAdListener interstitialAdListener = this.f20416a;
            if (interstitialAdListener != null) {
                interstitialAdListener.onError(ad, adError);
            }
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDismissed(AbstractC7079Ad ad) {
            if (C6605c.this.f20385b == null || C6605c.this.f20386c == null) {
                InterstitialAdListener interstitialAdListener = this.f20416a;
                if (interstitialAdListener != null) {
                    interstitialAdListener.onInterstitialDismissed(ad);
                    return;
                }
                return;
            }
            C6605c.this.f20386c.mo3231b(C6605c.this.f20385b, 0);
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDisplayed(AbstractC7079Ad ad) {
            if (C6605c.this.f20385b == null || C6605c.this.f20386c == null) {
                InterstitialAdListener interstitialAdListener = this.f20416a;
                if (interstitialAdListener != null) {
                    interstitialAdListener.onInterstitialDisplayed(ad);
                }
            } else {
                C6605c.this.f20386c.mo3230d(C6605c.this.f20385b, 0);
            }
            C6605c.this.mo20446a();
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC7079Ad ad) {
            InterstitialAdListener interstitialAdListener = this.f20416a;
            if (interstitialAdListener != null) {
                interstitialAdListener.onLoggingImpression(ad);
            }
        }
    }

    public C6605c(BaseAdResult baseAdResult) {
        super(baseAdResult);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean mo20386a(InterstitialAd interstitialAd) {
        this.f20415e = interstitialAd;
        this.f20415e.setAdListener(new C6606a((InterstitialAdListener) C6617d.m20353a(interstitialAd, InterstitialAdListener.class)));
        this.f20415e.show();
        return true;
    }
}
