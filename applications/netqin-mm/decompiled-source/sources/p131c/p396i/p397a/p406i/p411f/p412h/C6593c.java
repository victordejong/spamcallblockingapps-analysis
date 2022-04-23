package p131c.p396i.p397a.p406i.p411f.p412h;

import com.google.android.gms.ads.InterstitialAd;
import com.library.p518ad.core.BaseAdResult;
import p131c.p396i.p397a.p406i.p411f.AbstractC6582c;
/* renamed from: c.i.a.i.f.h.c */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/h/c.class */
public class C6593c extends AbstractC6582c<InterstitialAd> {

    /* renamed from: e */
    public InterstitialAd f20400e;

    public C6593c(BaseAdResult baseAdResult) {
        super(baseAdResult);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean mo20386a(InterstitialAd interstitialAd) {
        this.f20400e = interstitialAd;
        interstitialAd.m18116a(new C6591a(this, interstitialAd.m18117a(), this.f20385b, this.f20386c));
        this.f20400e.m18107d();
        return true;
    }
}
