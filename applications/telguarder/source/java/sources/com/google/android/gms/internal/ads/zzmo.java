package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzmh;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmo.class */
public abstract class zzmo implements zzmh.zza {

    /* renamed from: id */
    public final String f130id;

    public zzmo(String str) {
        this.f130id = (String) zzpg.checkNotNull(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
