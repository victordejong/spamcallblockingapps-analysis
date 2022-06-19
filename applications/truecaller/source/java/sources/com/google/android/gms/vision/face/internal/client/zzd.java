package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/face/internal/client/zzd.class */
public final class zzd implements Parcelable.Creator<FaceParcel> {
    @Override // android.os.Parcelable.Creator
    public final FaceParcel createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        LandmarkParcel[] landmarkParcelArr = null;
        zza[] zzaVarArr = null;
        int i = 0;
        int i2 = 0;
        float f = Float.MAX_VALUE;
        float f2 = Float.MAX_VALUE;
        float f3 = Float.MAX_VALUE;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        float f8 = 0.0f;
        float f9 = 0.0f;
        float f10 = 0.0f;
        float f11 = -1.0f;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 2:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 3:
                    f4 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 4:
                    f5 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 5:
                    f6 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 6:
                    f7 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 7:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\b':
                    f2 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\t':
                    landmarkParcelArr = (LandmarkParcel[]) SafeParcelReader.m38876m(parcel, readInt, LandmarkParcel.CREATOR);
                    break;
                case '\n':
                    f8 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 11:
                    f9 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\f':
                    f10 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\r':
                    zzaVarArr = (zza[]) SafeParcelReader.m38876m(parcel, readInt, zza.CREATOR);
                    break;
                case 14:
                    f3 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 15:
                    f11 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new FaceParcel(i, i2, f4, f5, f6, f7, f, f2, f3, landmarkParcelArr, f8, f9, f10, zzaVarArr, f11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FaceParcel[] newArray(int i) {
        return new FaceParcel[i];
    }
}
