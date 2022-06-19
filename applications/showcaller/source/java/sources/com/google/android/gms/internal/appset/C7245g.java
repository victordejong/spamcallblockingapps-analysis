package com.google.android.gms.internal.appset;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.appset.zza;
/* renamed from: com.google.android.gms.internal.appset.g */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/g.class */
public final class C7245g extends C7239a implements IInterface {
    public C7245g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.appset.internal.IAppSetService");
    }

    /* renamed from: J0 */
    public final void m7842J0(zza zzaVar, AbstractC7244f abstractC7244f) {
        Parcel m7850c0 = m7850c0();
        C7241c.m7848b(m7850c0, zzaVar);
        C7241c.m7847c(m7850c0, abstractC7244f);
        m7851D0(1, m7850c0);
    }
}
