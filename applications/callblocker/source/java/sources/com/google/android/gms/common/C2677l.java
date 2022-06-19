package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/l.class */
public final class C2677l implements Parcelable.Creator<C2579b> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2579b createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        PendingIntent pendingIntent = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 3:
                    pendingIntent = (PendingIntent) SafeParcelReader.m13965a(parcel, m13969a, PendingIntent.CREATOR);
                    break;
                case 4:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2579b(i2, i, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2579b[] newArray(int i) {
        return new C2579b[i];
    }
}
