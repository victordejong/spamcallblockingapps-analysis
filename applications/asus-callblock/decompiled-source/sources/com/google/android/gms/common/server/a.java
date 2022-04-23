package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/a.class */
public final class a implements Parcelable.Creator<FavaDiagnosticsEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(FavaDiagnosticsEntity favaDiagnosticsEntity, Parcel parcel) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, favaDiagnosticsEntity.f4056a);
        b.a(parcel, 2, favaDiagnosticsEntity.f4057b);
        b.b(parcel, 3, favaDiagnosticsEntity.c);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FavaDiagnosticsEntity createFromParcel(Parcel parcel) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, readInt);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.a.d(parcel, readInt);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new FavaDiagnosticsEntity(i2, str, i);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FavaDiagnosticsEntity[] newArray(int i) {
        return new FavaDiagnosticsEntity[i];
    }
}
