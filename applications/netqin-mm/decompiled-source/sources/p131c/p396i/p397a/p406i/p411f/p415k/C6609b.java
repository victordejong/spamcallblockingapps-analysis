package p131c.p396i.p397a.p406i.p411f.p415k;

import com.library.p518ad.core.BaseAdResult;
import com.mopub.mobileads.DefaultInterstitialAdListener;
import com.mopub.mobileads.MoPubInterstitial;
import p131c.p396i.p397a.p406i.p411f.AbstractC6582c;
/* renamed from: c.i.a.i.f.k.b */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/k/b.class */
public class C6609b extends AbstractC6582c<MoPubInterstitial> {

    /* renamed from: e */
    public MoPubInterstitial f20421e;

    /* renamed from: c.i.a.i.f.k.b$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/f/k/b$a.class */
    public class C6610a extends DefaultInterstitialAdListener {
        public C6610a() {
        }

        @Override // com.mopub.mobileads.DefaultInterstitialAdListener, com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
            if (C6609b.this.f20386c != null) {
                C6609b.this.f20386c.mo3232a(C6609b.this.f20385b, 0);
            }
        }

        @Override // com.mopub.mobileads.DefaultInterstitialAdListener, com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
            if (C6609b.this.f20386c != null) {
                C6609b.this.f20386c.mo3231b(C6609b.this.f20385b, 0);
            }
            if (C6609b.this.f20421e != null) {
                C6609b.this.f20421e.destroy();
            }
        }

        @Override // com.mopub.mobileads.DefaultInterstitialAdListener, com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
            if (C6609b.this.f20386c != null) {
                C6609b.this.f20386c.mo3230d(C6609b.this.f20385b, 0);
            }
            C6609b.this.mo20446a();
        }
    }

    public C6609b(BaseAdResult baseAdResult) {
        super(baseAdResult);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean mo20386a(MoPubInterstitial moPubInterstitial) {
        this.f20421e = moPubInterstitial;
        moPubInterstitial.setInterstitialAdListener(new C6610a());
        this.f20421e.show();
        return true;
    }
}
