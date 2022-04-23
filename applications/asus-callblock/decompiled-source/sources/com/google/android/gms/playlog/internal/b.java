package com.google.android.gms.playlog.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/playlog/internal/b.class */
public final class b implements Parcelable.Creator<PlayLoggerContext> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(PlayLoggerContext playLoggerContext, Parcel parcel) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 1, playLoggerContext.f4248a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, playLoggerContext.f4249b);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 3, playLoggerContext.c);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 4, playLoggerContext.d);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, playLoggerContext.e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, playLoggerContext.f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, playLoggerContext.g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, playLoggerContext.h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, playLoggerContext.i);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 10, playLoggerContext.j);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlayLoggerContext createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        boolean z = true;
        int i = 0;
        boolean z2 = false;
        String str = null;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        int i3 = 0;
        String str4 = null;
        int i4 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i4 = a.d(parcel, readInt);
                    break;
                case 2:
                    str4 = a.k(parcel, readInt);
                    break;
                case 3:
                    i3 = a.d(parcel, readInt);
                    break;
                case 4:
                    i2 = a.d(parcel, readInt);
                    break;
                case 5:
                    str3 = a.k(parcel, readInt);
                    break;
                case 6:
                    str2 = a.k(parcel, readInt);
                    break;
                case 7:
                    z = a.c(parcel, readInt);
                    break;
                case 8:
                    str = a.k(parcel, readInt);
                    break;
                case 9:
                    z2 = a.c(parcel, readInt);
                    break;
                case 10:
                    i = a.d(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new PlayLoggerContext(i4, str4, i3, i2, str3, str2, z, str, z2, i);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlayLoggerContext[] newArray(int i) {
        return new PlayLoggerContext[i];
    }
}
