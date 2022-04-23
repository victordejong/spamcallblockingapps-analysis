package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/a.class */
public final class a implements Parcelable.Creator<ConverterWrapper> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ConverterWrapper converterWrapper, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, converterWrapper.f4058a);
        b.a(parcel, 2, converterWrapper.f4059b, i);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConverterWrapper createFromParcel(Parcel parcel) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int i = 0;
        StringToIntConverter stringToIntConverter = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.a.d(parcel, readInt);
                    break;
                case 2:
                    stringToIntConverter = (StringToIntConverter) com.google.android.gms.common.internal.safeparcel.a.a(parcel, readInt, StringToIntConverter.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new ConverterWrapper(i, stringToIntConverter);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConverterWrapper[] newArray(int i) {
        return new ConverterWrapper[i];
    }
}
