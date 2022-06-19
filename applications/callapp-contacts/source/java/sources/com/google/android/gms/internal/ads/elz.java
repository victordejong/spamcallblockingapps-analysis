package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elz.class */
public final class elz implements MuteThisAdReason {

    /* renamed from: a */
    ely f49169a;

    /* renamed from: b */
    private final String f49170b;

    public elz(ely elyVar) {
        String str;
        this.f49169a = elyVar;
        try {
            str = elyVar.mo14714a();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            str = null;
        }
        this.f49170b = str;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.f49170b;
    }

    public final String toString() {
        return this.f49170b;
    }
}
