package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/phenotype/zzh.class */
public final class zzh implements Parcelable.Creator<ExperimentTokens> {
    @Override // android.os.Parcelable.Creator
    public final ExperimentTokens createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        byte[] bArr = null;
        byte[][] bArr2 = null;
        byte[][] bArr3 = null;
        byte[][] bArr4 = null;
        byte[][] bArr5 = null;
        int[] iArr = null;
        byte[][] bArr6 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    bArr = SafeParcelReader.m38885d(parcel, readInt);
                    break;
                case 4:
                    bArr2 = SafeParcelReader.m38884e(parcel, readInt);
                    break;
                case 5:
                    bArr3 = SafeParcelReader.m38884e(parcel, readInt);
                    break;
                case 6:
                    bArr4 = SafeParcelReader.m38884e(parcel, readInt);
                    break;
                case 7:
                    bArr5 = SafeParcelReader.m38884e(parcel, readInt);
                    break;
                case '\b':
                    iArr = SafeParcelReader.m38883f(parcel, readInt);
                    break;
                case '\t':
                    bArr6 = SafeParcelReader.m38884e(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new ExperimentTokens(str, bArr, bArr2, bArr3, bArr4, bArr5, iArr, bArr6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ExperimentTokens[] newArray(int i) {
        return new ExperimentTokens[i];
    }
}
