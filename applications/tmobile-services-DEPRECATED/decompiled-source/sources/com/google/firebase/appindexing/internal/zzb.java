package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzb.class */
public final class zzb implements Parcelable.Creator<zza> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zza createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        zzc zzcVar = null;
        String str5 = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            switch (SafeParcelReader.m14469u(B)) {
                case 1:
                    str = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 2:
                    str2 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 3:
                    str3 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 4:
                    str4 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 5:
                    zzcVar = (zzc) SafeParcelReader.m14476n(parcel, B, zzc.CREATOR);
                    break;
                case 6:
                    str5 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 7:
                    bundle = SafeParcelReader.m14484f(parcel, B);
                    break;
                default:
                    SafeParcelReader.m14493I(parcel, B);
                    break;
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zza(str, str2, str3, str4, zzcVar, str5, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zza[] newArray(int i) {
        return new zza[i];
    }
}
