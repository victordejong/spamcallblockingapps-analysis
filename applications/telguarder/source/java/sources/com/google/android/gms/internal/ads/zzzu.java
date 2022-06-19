package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzu.class */
public final class zzzu extends zzyq {
    private final String description;
    private final String zzclg;

    public zzzu(String str, String str2) {
        this.description = str;
        this.zzclg = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzyn
    public final String getDescription() throws RemoteException {
        return this.description;
    }

    @Override // com.google.android.gms.internal.ads.zzyn
    public final String zzre() throws RemoteException {
        return this.zzclg;
    }
}
