package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.location.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/t.class */
public final class C13345t implements Parcelable.Creator<zzbe> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbe createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 0;
        char c2 = 0;
        String str = null;
        char c3 = 0;
        int i = 0;
        float f = 0.0f;
        int i2 = 0;
        int i3 = -1;
        short s = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 2:
                    c3 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 3:
                    SafeParcelReader.m19144a(parcel, readInt, 4);
                    s = (short) parcel.readInt();
                    break;
                case 4:
                    c = SafeParcelReader.m19130k(parcel, readInt);
                    break;
                case 5:
                    c2 = SafeParcelReader.m19130k(parcel, readInt);
                    break;
                case 6:
                    f = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 7:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '\b':
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '\t':
                    i3 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzbe(str, i, s, c, c2, f, c3, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbe[] newArray(int i) {
        return new zzbe[i];
    }
}
