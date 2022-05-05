package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/a.class */
public final class a implements Parcelable.Creator<ConnectionEvent> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ConnectionEvent connectionEvent, Parcel parcel) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, connectionEvent.f4074a);
        b.a(parcel, 2, connectionEvent.f4075b);
        b.a(parcel, 4, connectionEvent.d);
        b.a(parcel, 5, connectionEvent.e);
        b.a(parcel, 6, connectionEvent.f);
        b.a(parcel, 7, connectionEvent.g);
        b.a(parcel, 8, connectionEvent.h);
        b.a(parcel, 10, connectionEvent.j);
        b.a(parcel, 11, connectionEvent.k);
        b.b(parcel, 12, connectionEvent.c);
        b.a(parcel, 13, connectionEvent.i);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionEvent createFromParcel(Parcel parcel) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int i = 0;
        long j = 0;
        int i2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        long j2 = 0;
        long j3 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.a.d(parcel, readInt);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.a.f(parcel, readInt);
                    break;
                case 3:
                case 9:
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, readInt);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 5:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 7:
                    str4 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 8:
                    str5 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 10:
                    j2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, readInt);
                    break;
                case 11:
                    j3 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, readInt);
                    break;
                case 12:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, readInt);
                    break;
                case 13:
                    str6 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new ConnectionEvent(i, j, i2, str, str2, str3, str4, str5, str6, j2, j3);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionEvent[] newArray(int i) {
        return new ConnectionEvent[i];
    }
}
