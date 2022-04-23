package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzmh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzmo.class */
public abstract class zzmo implements zzmh.zza {
    public final String id;

    public zzmo(String str) {
        this.id = (String) ecr.a(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
