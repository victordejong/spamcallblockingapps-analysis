package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.common.stats.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/d.class */
public final class C1602d implements Parcelable.Creator<WakeLockEvent> {
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ WakeLockEvent createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
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
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(m8312q)) {
                case 1:
                    i = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 2:
                    c = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    SafeParcelReader.m8306w(parcel, m8312q);
                    break;
                case 4:
                    str = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 5:
                    i3 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m8321h(parcel, m8312q);
                    break;
                case 8:
                    c2 = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 10:
                    str3 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 11:
                    i2 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 12:
                    str2 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 13:
                    str4 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 14:
                    i4 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 15:
                    f = SafeParcelReader.m8314o(parcel, m8312q);
                    break;
                case 16:
                    c3 = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 17:
                    str5 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 18:
                    z = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new WakeLockEvent(i, c, i2, str, i3, arrayList, str2, c2, i4, str3, str4, f, c3, str5, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
