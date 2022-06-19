package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/stats/zza.class */
public final class zza implements Parcelable.Creator<WakeLockEvent> {
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final WakeLockEvent createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        boolean z = false;
        String str = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        float f = 0.0f;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 2:
                    c = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 3:
                case 7:
                case '\t':
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
                case 4:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case '\b':
                    c2 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case '\n':
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 11:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\f':
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\r':
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 14:
                    i4 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 15:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 16:
                    c3 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 17:
                    str5 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 18:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new WakeLockEvent(i, c, i2, str, i3, arrayList, str2, c2, i4, str3, str4, f, c3, str5, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
