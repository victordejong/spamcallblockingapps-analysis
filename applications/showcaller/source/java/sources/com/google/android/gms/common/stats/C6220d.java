package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.common.stats.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/d.class */
public final class C6220d implements Parcelable.Creator<WakeLockEvent> {
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ WakeLockEvent createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        String str = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        boolean z = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    c = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
                case 4:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 5:
                    i3 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 8:
                    c2 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 10:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 11:
                    i2 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 12:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 13:
                    str4 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 14:
                    i4 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 15:
                    f = SafeParcelReader.m16985A(parcel, m16983C);
                    break;
                case 16:
                    c3 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 17:
                    str5 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 18:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new WakeLockEvent(i, c, i2, str, i3, arrayList, str2, c2, i4, str3, str4, f, c3, str5, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
