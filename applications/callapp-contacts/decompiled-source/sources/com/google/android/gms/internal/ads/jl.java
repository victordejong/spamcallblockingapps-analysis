package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jl.class */
public final class jl {

    /* renamed from: a  reason: collision with root package name */
    private final ejb f28077a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f28078b;

    /* renamed from: c  reason: collision with root package name */
    private final eko f28079c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jl(Context context, eko ekoVar) {
        this(context, ekoVar, ejb.f27877a);
    }

    private jl(Context context, eko ekoVar, ejb ejbVar) {
        this.f28078b = context;
        this.f28079c = ekoVar;
        this.f28077a = ejbVar;
    }

    public final void a(emr emrVar) {
        try {
            this.f28079c.a(ejb.a(this.f28078b, emrVar));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }
}
