package p131c.p396i.p397a.p406i.p411f.p412h;

import android.os.SystemClock;
import com.google.android.gms.ads.AdListener;
import com.library.p518ad.core.AdInfo;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p406i.p411f.AbstractC6580b;
import p131c.p396i.p397a.p417j.C6618e;
/* renamed from: c.i.a.i.f.h.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/h/a.class */
public class C6591a extends AdListener {

    /* renamed from: a */
    public final AdListener f20395a;

    /* renamed from: b */
    public final AbstractC6580b f20396b;

    /* renamed from: c */
    public int f20397c;

    /* renamed from: d */
    public AbstractC6515g f20398d;

    /* renamed from: e */
    public AdInfo f20399e;

    public C6591a(AbstractC6580b bVar, AdListener adListener, AdInfo adInfo, AbstractC6515g gVar) {
        this.f20396b = bVar;
        this.f20395a = adListener;
        this.f20399e = adInfo;
        this.f20398d = gVar;
    }

    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: a */
    public void mo5294a() {
        if (this.f20398d == null) {
            AdListener adListener = this.f20395a;
            if (adListener != null) {
                adListener.mo5294a();
            }
        } else if (this.f20399e.getAdType() == 3) {
            this.f20398d.mo3231b(this.f20399e, 0);
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: a */
    public void mo3662a(int i) {
        AdListener adListener = this.f20395a;
        if (adListener != null) {
            adListener.mo3662a(i);
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: c */
    public void mo5293c() {
        if (this.f20398d == null) {
            AdListener adListener = this.f20395a;
            if (adListener != null) {
                adListener.mo5293c();
            }
        } else if (this.f20399e.getAdType() == 3) {
            this.f20398d.mo3232a(this.f20399e, 0);
            AdInfo adInfo = this.f20399e;
            int i = this.f20397c + 1;
            this.f20397c = i;
            C6549b.m20532a(new C6550c(adInfo, 302, String.valueOf(i)));
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: d */
    public void mo5292d() {
        AdListener adListener = this.f20395a;
        if (adListener != null) {
            adListener.mo5292d();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: e */
    public void mo3661e() {
        AbstractC6515g gVar;
        AdInfo adInfo = this.f20399e;
        if (adInfo != null) {
            if (adInfo.getAdType() == 3) {
                C6618e a = C6618e.m20334a();
                a.m20331a("key_place_frequency_" + this.f20399e.getPlaceId(), SystemClock.elapsedRealtime());
                AbstractC6515g gVar2 = this.f20398d;
                if (gVar2 != null) {
                    gVar2.mo3230d(this.f20399e, 0);
                }
                this.f20396b.mo20446a();
            } else if (this.f20399e.getAdType() == 2 && (gVar = this.f20398d) != null) {
                gVar.mo3232a(this.f20399e, 0);
                AdInfo adInfo2 = this.f20399e;
                int i = this.f20397c + 1;
                this.f20397c = i;
                C6549b.m20532a(new C6550c(adInfo2, 302, String.valueOf(i)));
            }
        }
        AdListener adListener = this.f20395a;
        if (adListener != null) {
            adListener.mo3661e();
        }
    }
}
