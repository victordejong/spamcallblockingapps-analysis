package com.google.android.gms.internal.ads_identifier;

import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads_identifier/zzc.class */
public final class zzc {
    private static final ClassLoader zza = zzc.class.getClassLoader();

    private zzc() {
    }

    public static void zza(Parcel parcel, boolean z) {
        parcel.writeInt(1);
    }

    public static boolean zzb(Parcel parcel) {
        return parcel.readInt() != 0;
    }
}
