package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egw.class */
public final class egw implements Parcelable.Creator<zzti> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzti createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 0;
        char c2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Bundle bundle = null;
        String str5 = null;
        boolean z = false;
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 3:
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 4:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 5:
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 6:
                    str4 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 7:
                    bundle = SafeParcelReader.m19126o(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\t':
                    c2 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case '\n':
                    str5 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 11:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzti(str, c, str2, str3, str4, bundle, z, c2, str5, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzti[] newArray(int i) {
        return new zzti[i];
    }
}
