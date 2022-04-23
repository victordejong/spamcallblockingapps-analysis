package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzye.class */
public final class zzye implements MuteThisAdReason {

    /* renamed from: a */
    public final String f29090a;

    public zzye(zzyd zzydVar) {
        String str;
        try {
            str = zzydVar.mo10988G1();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            str = null;
        }
        this.f29090a = str;
    }

    public final String toString() {
        return this.f29090a;
    }
}
