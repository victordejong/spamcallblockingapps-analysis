package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavn.class */
public final class zzavn {

    /* renamed from: a */
    public final zzauy f24535a;

    /* renamed from: b */
    public final Context f24536b;

    public zzavn(Context context, String str) {
        this.f24536b = context.getApplicationContext();
        this.f24535a = zzwm.m11169b().m11178b(context, str, new zzanc());
    }

    /* renamed from: a */
    public final void m16296a(Activity activity, RewardedAdCallback rewardedAdCallback) {
        try {
            this.f24535a.mo10907a(new zzavp(rewardedAdCallback));
            this.f24535a.mo10898m(ObjectWrapper.m17020a(activity));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m16295a(zzyw zzywVar, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            this.f24535a.mo10903a(zzvl.m11201a(this.f24536b, zzywVar), new zzavq(rewardedAdLoadCallback));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final boolean m16297a() {
        try {
            return this.f24535a.isLoaded();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            return false;
        }
    }
}
