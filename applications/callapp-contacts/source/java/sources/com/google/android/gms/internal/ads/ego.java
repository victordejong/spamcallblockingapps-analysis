package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ego.class */
public final class ego {

    /* renamed from: a */
    private ekw f49001a;

    /* renamed from: b */
    private final Context f49002b;

    /* renamed from: c */
    private final String f49003c;

    /* renamed from: d */
    private final emr f49004d;

    /* renamed from: e */
    private final int f49005e;

    /* renamed from: f */
    private final AppOpenAd.AppOpenAdLoadCallback f49006f;

    /* renamed from: g */
    private final BinderC12743mj f49007g = new BinderC12743mj();

    /* renamed from: h */
    private final ejb f49008h = ejb.f49085a;

    public ego(Context context, String str, emr emrVar, int i, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.f49002b = context;
        this.f49003c = str;
        this.f49004d = emrVar;
        this.f49005e = i;
        this.f49006f = appOpenAdLoadCallback;
    }

    /* renamed from: a */
    public final void m15060a() {
        try {
            this.f49001a = ekb.m14834b().m14858a(this.f49002b, zzvt.zzqm(), this.f49003c, this.f49007g);
            this.f49001a.zza(new zzwc(this.f49005e));
            this.f49001a.zza(new efx(this.f49006f, this.f49003c));
            this.f49001a.zza(ejb.m14863a(this.f49002b, this.f49004d));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
