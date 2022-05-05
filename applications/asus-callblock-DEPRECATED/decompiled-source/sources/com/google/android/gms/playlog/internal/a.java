package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/playlog/internal/a.class */
public final class a implements Parcelable.Creator<LogEvent> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(LogEvent logEvent, Parcel parcel) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, logEvent.f4246a);
        b.a(parcel, 2, logEvent.f4247b);
        b.a(parcel, 3, logEvent.d);
        b.a(parcel, 4, logEvent.e);
        b.a(parcel, 5, logEvent.f);
        b.a(parcel, 6, logEvent.c);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LogEvent createFromParcel(Parcel parcel) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int i = 0;
        Bundle bundle = null;
        byte[] bArr = null;
        long j = 0;
        long j2 = 0;
        String str = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.a.d(parcel, readInt);
                    break;
                case 2:
                    j2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, readInt);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 4:
                    bArr = com.google.android.gms.common.internal.safeparcel.a.n(parcel, readInt);
                    break;
                case 5:
                    bundle = com.google.android.gms.common.internal.safeparcel.a.m(parcel, readInt);
                    break;
                case 6:
                    j = com.google.android.gms.common.internal.safeparcel.a.f(parcel, readInt);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new LogEvent(i, j2, j, str, bArr, bundle);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LogEvent[] newArray(int i) {
        return new LogEvent[i];
    }
}
