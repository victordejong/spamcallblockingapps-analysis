package com.google.android.gms.internal.auth_api_phone;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zzd.class */
public class zzd {
    private static final ClassLoader zza = com.google.android.gms.internal.auth-api-phone.zzd.class.getClassLoader();

    private zzd() {
    }

    public static <T extends Parcelable> T zza(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    public static void zza(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    public static boolean zza(Parcel parcel) {
        return parcel.readInt() != 0;
    }
}
