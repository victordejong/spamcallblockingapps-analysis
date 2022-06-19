package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.jl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jl.class */
public final class C12664jl {

    /* renamed from: a */
    private final ejb f49386a;

    /* renamed from: b */
    private final Context f49387b;

    /* renamed from: c */
    private final eko f49388c;

    public C12664jl(Context context, eko ekoVar) {
        this(context, ekoVar, ejb.f49085a);
    }

    private C12664jl(Context context, eko ekoVar, ejb ejbVar) {
        this.f49387b = context;
        this.f49388c = ekoVar;
        this.f49386a = ejbVar;
    }

    /* renamed from: a */
    public final void m14581a(emr emrVar) {
        try {
            this.f49388c.mo14627a(ejb.m14863a(this.f49387b, emrVar));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
