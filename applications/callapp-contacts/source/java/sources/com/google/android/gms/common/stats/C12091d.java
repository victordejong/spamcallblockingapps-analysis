package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.common.stats.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/stats/d.class */
public final class C12091d implements Parcelable.Creator<WakeLockEvent> {
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WakeLockEvent createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
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
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 3:
                case 7:
                case '\t':
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
                case 4:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 5:
                    i3 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case '\b':
                    c2 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case '\n':
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 11:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '\f':
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\r':
                    str4 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 14:
                    i4 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 15:
                    f = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 16:
                    c3 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 17:
                    str5 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 18:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new WakeLockEvent(i, c, i2, str, i3, arrayList, str2, c2, i4, str3, str4, f, c3, str5, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
