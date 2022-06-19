package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.measurement.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/b.class */
public final class C2089b implements Parcelable.Creator<zzz> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzz createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        char c = 0;
        char c2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        Bundle bundle = null;
        String str4 = null;
        boolean z = false;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(m8312q)) {
                case 1:
                    c = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 2:
                    c2 = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 3:
                    z = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 4:
                    str = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 5:
                    str2 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 6:
                    str3 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 7:
                    bundle = SafeParcelReader.m8328a(parcel, m8312q);
                    break;
                case 8:
                    str4 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, m8312q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzz(c, c2, z, str, str2, str3, bundle, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzz[] newArray(int i) {
        return new zzz[i];
    }
}
