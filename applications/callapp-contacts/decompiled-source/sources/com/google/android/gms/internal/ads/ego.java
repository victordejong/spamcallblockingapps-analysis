package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ego.class */
public final class ego {

    /* renamed from: a  reason: collision with root package name */
    private ekw f27815a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f27816b;

    /* renamed from: c  reason: collision with root package name */
    private final String f27817c;

    /* renamed from: d  reason: collision with root package name */
    private final emr f27818d;
    private final int e;
    private final AppOpenAd.AppOpenAdLoadCallback f;
    private final mj g = new mj();
    private final ejb h = ejb.f27877a;

    public ego(Context context, String str, emr emrVar, int i, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.f27816b = context;
        this.f27817c = str;
        this.f27818d = emrVar;
        this.e = i;
        this.f = appOpenAdLoadCallback;
    }

    public final void a() {
        try {
            this.f27815a = ekb.b().a(this.f27816b, zzvt.zzqm(), this.f27817c, this.g);
            this.f27815a.zza(new zzwc(this.e));
            this.f27815a.zza(new efx(this.f, this.f27817c));
            this.f27815a.zza(ejb.a(this.f27816b, this.f27818d));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }
}
