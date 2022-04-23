package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.clearcut.zzr;
import com.google.android.gms.phenotype.ExperimentTokens;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/clearcut/zzf.class */
public final class zzf implements Parcelable.Creator<zze> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zze createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        zzr zzrVar = null;
        byte[] bArr = null;
        int[] iArr = null;
        String[] strArr = null;
        int[] iArr2 = null;
        byte[][] bArr2 = null;
        ExperimentTokens[] experimentTokensArr = null;
        boolean z = true;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 2:
                    zzrVar = (zzr) SafeParcelReader.m17264a(parcel, a, zzr.CREATOR);
                    break;
                case 3:
                    bArr = SafeParcelReader.m17255g(parcel, a);
                    break;
                case 4:
                    iArr = SafeParcelReader.m17251k(parcel, a);
                    break;
                case 5:
                    strArr = SafeParcelReader.m17245q(parcel, a);
                    break;
                case 6:
                    iArr2 = SafeParcelReader.m17251k(parcel, a);
                    break;
                case 7:
                    bArr2 = SafeParcelReader.m17254h(parcel, a);
                    break;
                case 8:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 9:
                    experimentTokensArr = (ExperimentTokens[]) SafeParcelReader.m17261b(parcel, a, ExperimentTokens.CREATOR);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zze(zzrVar, bArr, iArr, strArr, iArr2, bArr2, z, experimentTokensArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zze[] newArray(int i) {
        return new zze[i];
    }
}
