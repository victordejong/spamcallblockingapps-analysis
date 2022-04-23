package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.instream.InstreamAd;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jo.class */
public final class jo {

    /* renamed from: a  reason: collision with root package name */
    private final Context f28085a;

    /* renamed from: b  reason: collision with root package name */
    private final ekp f28086b;

    private jo(Context context, ekp ekpVar) {
        this.f28085a = context;
        this.f28086b = ekpVar;
    }

    public jo(Context context, String str) {
        this((Context) o.a(context, "context cannot be null"), ekb.b().a(context, str, new mj()));
    }

    public final jl a() {
        try {
            return new jl(this.f28085a, this.f28086b.a());
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final jo a(InstreamAd.InstreamAdLoadCallback instreamAdLoadCallback) {
        try {
            this.f28086b.a(new jm(instreamAdLoadCallback));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
        return this;
    }

    public final jo a(jj jjVar) {
        try {
            this.f28086b.a(new zzajy(jjVar));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
        return this;
    }
}
