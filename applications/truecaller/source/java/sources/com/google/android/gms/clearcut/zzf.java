package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.clearcut.zzr;
import com.google.android.gms.phenotype.ExperimentTokens;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/clearcut/zzf.class */
public final class zzf implements Parcelable.Creator<zze> {
    @Override // android.os.Parcelable.Creator
    public final zze createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        zzr zzrVar = null;
        byte[] bArr = null;
        int[] iArr = null;
        String[] strArr = null;
        int[] iArr2 = null;
        byte[][] bArr2 = null;
        ExperimentTokens[] experimentTokensArr = null;
        boolean z = true;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    zzrVar = (zzr) SafeParcelReader.m38880i(parcel, readInt, zzr.CREATOR);
                    break;
                case 3:
                    bArr = SafeParcelReader.m38885d(parcel, readInt);
                    break;
                case 4:
                    iArr = SafeParcelReader.m38883f(parcel, readInt);
                    break;
                case 5:
                    strArr = SafeParcelReader.m38878k(parcel, readInt);
                    break;
                case 6:
                    iArr2 = SafeParcelReader.m38883f(parcel, readInt);
                    break;
                case 7:
                    bArr2 = SafeParcelReader.m38884e(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\t':
                    experimentTokensArr = (ExperimentTokens[]) SafeParcelReader.m38876m(parcel, readInt, ExperimentTokens.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zze(zzrVar, bArr, iArr, strArr, iArr2, bArr2, z, experimentTokensArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zze[] newArray(int i) {
        return new zze[i];
    }
}
