package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.instream.InstreamAd;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.ads.jo */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jo.class */
public final class C12667jo {

    /* renamed from: a */
    private final Context f49397a;

    /* renamed from: b */
    private final ekp f49398b;

    private C12667jo(Context context, ekp ekpVar) {
        this.f49397a = context;
        this.f49398b = ekpVar;
    }

    public C12667jo(Context context, String str) {
        this((Context) C12045o.m19161a(context, "context cannot be null"), ekb.m14834b().m14856a(context, str, new BinderC12743mj()));
    }

    /* renamed from: a */
    public final C12664jl m14576a() {
        try {
            return new C12664jl(this.f49397a, this.f49398b.mo14695a());
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    /* renamed from: a */
    public final C12667jo m14575a(InstreamAd.InstreamAdLoadCallback instreamAdLoadCallback) {
        try {
            this.f49398b.mo14685a(new BinderC12665jm(instreamAdLoadCallback));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
        return this;
    }

    /* renamed from: a */
    public final C12667jo m14574a(C12662jj c12662jj) {
        try {
            this.f49398b.mo14683a(new zzajy(c12662jj));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
        return this;
    }
}
