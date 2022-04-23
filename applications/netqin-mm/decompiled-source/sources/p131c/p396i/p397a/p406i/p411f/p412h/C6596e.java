package p131c.p396i.p397a.p406i.p411f.p412h;

import android.os.SystemClock;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
import com.library.p518ad.core.BaseAdResult;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p406i.p411f.AbstractC6589g;
import p131c.p396i.p397a.p417j.C6618e;
/* renamed from: c.i.a.i.f.h.e */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/h/e.class */
public class C6596e extends AbstractC6589g<RewardedAd> {

    /* renamed from: e */
    public RewardedAdCallback f20403e = new C6597a();

    /* renamed from: c.i.a.i.f.h.e$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/f/h/e$a.class */
    public class C6597a extends RewardedAdCallback {
        public C6597a() {
        }

        @Override // com.google.android.gms.ads.rewarded.RewardedAdCallback
        /* renamed from: a */
        public void mo17901a() {
            if (C6596e.this.f20386c != null) {
                C6596e.this.f20386c.mo3231b(C6596e.this.f20385b, 0);
            }
        }

        @Override // com.google.android.gms.ads.rewarded.RewardedAdCallback
        /* renamed from: a */
        public void mo17900a(int i) {
            if (C6596e.this.f20386c != null) {
                C6596e.this.f20386c.mo3294c(C6596e.this.f20385b, 0);
            }
        }

        @Override // com.google.android.gms.ads.rewarded.RewardedAdCallback
        /* renamed from: a */
        public void mo17898a(RewardItem rewardItem) {
            if (C6596e.this.f20386c != null) {
                C6596e.this.f20386c.mo20455e(C6596e.this.f20385b, 0);
            }
        }

        @Override // com.google.android.gms.ads.rewarded.RewardedAdCallback
        /* renamed from: b */
        public void mo17897b() {
            if (C6596e.this.f20385b != null) {
                C6618e a = C6618e.m20334a();
                a.m20331a("key_place_frequency_" + C6596e.this.f20385b.getPlaceId(), SystemClock.elapsedRealtime());
                if (C6596e.this.f20386c != null) {
                    C6596e.this.f20386c.mo3230d(C6596e.this.f20385b, 0);
                }
                C6596e.this.mo20446a();
            }
        }
    }

    public C6596e(BaseAdResult baseAdResult) {
        super(baseAdResult);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean mo20426a(RewardedAd rewardedAd) {
        rewardedAd.m17903a(C6489a.m20721a(), this.f20403e);
        return true;
    }
}
