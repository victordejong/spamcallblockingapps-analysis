package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.server.converter.StringToIntConverter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/c.class */
public final class c implements Parcelable.Creator<StringToIntConverter.Entry> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(StringToIntConverter.Entry entry, Parcel parcel) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, entry.f4062a);
        b.a(parcel, 2, entry.f4063b);
        b.b(parcel, 3, entry.c);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StringToIntConverter.Entry createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i2 = a.d(parcel, readInt);
                    break;
                case 2:
                    str = a.k(parcel, readInt);
                    break;
                case 3:
                    i = a.d(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new StringToIntConverter.Entry(i2, str, i);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StringToIntConverter.Entry[] newArray(int i) {
        return new StringToIntConverter.Entry[i];
    }
}
