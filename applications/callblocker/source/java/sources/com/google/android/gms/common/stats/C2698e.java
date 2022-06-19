package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.common.stats.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/e.class */
public final class C2698e implements Parcelable.Creator<WakeLockEvent> {
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WakeLockEvent createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        char c = 0;
        int i2 = 0;
        String str = null;
        int i3 = 0;
        ArrayList<String> arrayList = null;
        String str2 = null;
        char c2 = 0;
        int i4 = 0;
        String str3 = null;
        String str4 = null;
        float f = 0.0f;
        char c3 = 0;
        String str5 = null;
        boolean z = false;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
                case 4:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 5:
                    i3 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 8:
                    c2 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 10:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 11:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 12:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 13:
                    str4 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 14:
                    i4 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 15:
                    f = SafeParcelReader.m13955h(parcel, m13969a);
                    break;
                case 16:
                    c3 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 17:
                    str5 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 18:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new WakeLockEvent(i, c, i2, str, i3, arrayList, str2, c2, i4, str3, str4, f, c3, str5, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
