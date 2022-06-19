package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.CheckForNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxh.class */
public final class zzcxh {
    private final zzcin zzgmw;
    private final ConcurrentHashMap<String, zzapk> zzgxh = new ConcurrentHashMap<>();

    public zzcxh(zzcin zzcinVar) {
        this.zzgmw = zzcinVar;
    }

    public final void zzgn(String str) {
        try {
            this.zzgxh.put(str, this.zzgmw.zzdf(str));
        } catch (RemoteException e) {
            zzazk.zzc("Couldn't create RTB adapter : ", e);
        }
    }

    @CheckForNull
    public final zzapk zzgo(String str) {
        if (this.zzgxh.containsKey(str)) {
            return this.zzgxh.get(str);
        }
        return null;
    }
}
