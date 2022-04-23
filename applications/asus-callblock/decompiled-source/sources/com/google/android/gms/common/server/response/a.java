package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/a.class */
public final class a implements Parcelable.Creator<FastJsonResponse.Field> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(FastJsonResponse.Field field, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, field.f4064a);
        b.b(parcel, 2, field.a());
        b.a(parcel, 3, field.b());
        b.b(parcel, 4, field.c());
        b.a(parcel, 5, field.d());
        b.a(parcel, 6, field.e());
        b.b(parcel, 7, field.f());
        b.a(parcel, 8, field.g());
        b.a(parcel, 9, field.k == null ? null : ConverterWrapper.a(field.k), i);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field createFromParcel(Parcel parcel) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        ConverterWrapper converterWrapper = null;
        String str = null;
        int i = 0;
        String str2 = null;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i4 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, readInt);
                    break;
                case 2:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, readInt);
                    break;
                case 3:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, readInt);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.d(parcel, readInt);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.a.c(parcel, readInt);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 7:
                    i = com.google.android.gms.common.internal.safeparcel.a.d(parcel, readInt);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 9:
                    converterWrapper = (ConverterWrapper) com.google.android.gms.common.internal.safeparcel.a.a(parcel, readInt, ConverterWrapper.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new FastJsonResponse.Field(i4, i3, z2, i2, z, str2, i, str, converterWrapper);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field[] newArray(int i) {
        return new FastJsonResponse.Field[i];
    }
}
