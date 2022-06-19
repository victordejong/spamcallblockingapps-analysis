package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatx.class */
public abstract class zzatx implements zzatq {
    public final String zze;

    public zzatx(String str) {
        Objects.requireNonNull(str);
        this.zze = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }
}
