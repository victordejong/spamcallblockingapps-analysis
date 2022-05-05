package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/b.class */
public final class b implements Parcelable.Creator<StringToIntConverter> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(StringToIntConverter stringToIntConverter, Parcel parcel) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 1, stringToIntConverter.f4060a);
        ArrayList arrayList = new ArrayList();
        for (String str : stringToIntConverter.f4061b.keySet()) {
            arrayList.add(new StringToIntConverter.Entry(str, stringToIntConverter.f4061b.get(str).intValue()));
        }
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, arrayList);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StringToIntConverter createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    arrayList = a.c(parcel, readInt, StringToIntConverter.Entry.CREATOR);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new StringToIntConverter(i, arrayList);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StringToIntConverter[] newArray(int i) {
        return new StringToIntConverter[i];
    }
}
