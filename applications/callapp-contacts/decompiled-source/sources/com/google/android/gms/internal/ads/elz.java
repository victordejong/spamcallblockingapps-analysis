package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elz.class */
public final class elz implements MuteThisAdReason {

    /* renamed from: a  reason: collision with root package name */
    ely f27946a;

    /* renamed from: b  reason: collision with root package name */
    private final String f27947b;

    public elz(ely elyVar) {
        String str;
        this.f27946a = elyVar;
        try {
            str = elyVar.a();
        } catch (RemoteException e) {
            za.zzc("", e);
            str = null;
        }
        this.f27947b = str;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.f27947b;
    }

    public final String toString() {
        return this.f27947b;
    }
}
