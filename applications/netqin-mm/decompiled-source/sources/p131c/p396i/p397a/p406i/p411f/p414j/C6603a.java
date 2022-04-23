package p131c.p396i.p397a.p406i.p411f.p414j;

import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.library.p518ad.core.AdInfo;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p406i.p411f.AbstractC6580b;
/* renamed from: c.i.a.i.f.j.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/j/a.class */
public class C6603a implements AdListener {

    /* renamed from: a */
    public final AbstractC6580b f20409a;

    /* renamed from: b */
    public AbstractC6515g f20410b;

    /* renamed from: c */
    public AdInfo f20411c;

    /* renamed from: d */
    public final AdListener f20412d;

    /* renamed from: e */
    public int f20413e;

    public C6603a(AbstractC6580b bVar, AdListener adListener, AdInfo adInfo, AbstractC6515g gVar) {
        this.f20409a = bVar;
        this.f20412d = adListener;
        this.f20411c = adInfo;
        this.f20410b = gVar;
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC7079Ad ad) {
        AbstractC6515g gVar = this.f20410b;
        if (gVar != null) {
            gVar.mo3232a(this.f20411c, 0);
        } else {
            AdListener adListener = this.f20412d;
            if (adListener != null) {
                adListener.onAdClicked(ad);
            }
        }
        if (this.f20411c != null) {
            AdInfo adInfo = this.f20411c;
            int i = this.f20413e + 1;
            this.f20413e = i;
            C6549b.m20532a(new C6550c(adInfo, 302, String.valueOf(i)));
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC7079Ad ad) {
        AdListener adListener = this.f20412d;
        if (adListener != null) {
            adListener.onAdLoaded(ad);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC7079Ad ad, AdError adError) {
        AdListener adListener = this.f20412d;
        if (adListener != null) {
            adListener.onError(ad, adError);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC7079Ad ad) {
        AbstractC6515g gVar = this.f20410b;
        if (gVar != null) {
            gVar.mo3230d(this.f20411c, 0);
        } else {
            AdListener adListener = this.f20412d;
            if (adListener != null) {
                adListener.onLoggingImpression(ad);
            }
        }
        this.f20409a.mo20446a();
    }
}
