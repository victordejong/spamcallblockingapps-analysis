package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/zzh.class */
public final class zzh implements Parcelable.Creator<ExperimentTokens> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ExperimentTokens createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        byte[] bArr = null;
        byte[][] bArr2 = null;
        byte[][] bArr3 = null;
        byte[][] bArr4 = null;
        byte[][] bArr5 = null;
        int[] iArr = null;
        byte[][] bArr6 = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 2:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 3:
                    bArr = SafeParcelReader.m17255g(parcel, a);
                    break;
                case 4:
                    bArr2 = SafeParcelReader.m17254h(parcel, a);
                    break;
                case 5:
                    bArr3 = SafeParcelReader.m17254h(parcel, a);
                    break;
                case 6:
                    bArr4 = SafeParcelReader.m17254h(parcel, a);
                    break;
                case 7:
                    bArr5 = SafeParcelReader.m17254h(parcel, a);
                    break;
                case 8:
                    iArr = SafeParcelReader.m17251k(parcel, a);
                    break;
                case 9:
                    bArr6 = SafeParcelReader.m17254h(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new ExperimentTokens(str, bArr, bArr2, bArr3, bArr4, bArr5, iArr, bArr6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ExperimentTokens[] newArray(int i) {
        return new ExperimentTokens[i];
    }
}
