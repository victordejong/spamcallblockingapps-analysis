package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.measurement.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/b.class */
public final class C13379b implements Parcelable.Creator<zzz> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 0;
        char c2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        Bundle bundle = null;
        String str4 = null;
        boolean z = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 2:
                    c2 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 3:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 4:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 5:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 6:
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 7:
                    bundle = SafeParcelReader.m19126o(parcel, readInt);
                    break;
                case '\b':
                    str4 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzz(c, c2, z, str, str2, str3, bundle, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzz[] newArray(int i) {
        return new zzz[i];
    }
}
