package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsr.class */
public final class zzsr {

    /* renamed from: a */
    public zzxc f28955a;

    /* renamed from: b */
    public final Context f28956b;

    /* renamed from: c */
    public final String f28957c;

    /* renamed from: d */
    public final zzyw f28958d;
    @AppOpenAd.AppOpenAdOrientation

    /* renamed from: e */
    public final int f28959e;

    /* renamed from: f */
    public final AppOpenAd.AppOpenAdLoadCallback f28960f;

    /* renamed from: g */
    public final zzanc f28961g = new zzanc();

    public zzsr(Context context, String str, zzyw zzywVar, @AppOpenAd.AppOpenAdOrientation int i, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.f28956b = context;
        this.f28957c = str;
        this.f28958d = zzywVar;
        this.f28959e = i;
        this.f28960f = appOpenAdLoadCallback;
        zzvl zzvlVar = zzvl.f29034a;
    }

    /* renamed from: a */
    public final void m11465a() {
        try {
            this.f28955a = zzwm.m11169b().m11183a(this.f28956b, zzvn.m11193v(), this.f28957c, this.f28961g);
            this.f28955a.mo10957a(new zzvs(this.f28959e));
            this.f28955a.mo10959a(new zzsb(this.f28960f));
            this.f28955a.mo10947b(zzvl.m11201a(this.f28956b, this.f28958d));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }
}
