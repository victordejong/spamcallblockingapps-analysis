package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.server.response.FieldMappingDictionary;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/b.class */
public final class b implements Parcelable.Creator<FieldMappingDictionary.FieldMapPair> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(FieldMappingDictionary.FieldMapPair fieldMapPair, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 1, fieldMapPair.f4070a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, fieldMapPair.f4071b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, fieldMapPair.c, i);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FieldMappingDictionary.FieldMapPair createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        int i = 0;
        FastJsonResponse.Field field = null;
        String str = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    str = a.k(parcel, readInt);
                    break;
                case 3:
                    field = (FastJsonResponse.Field) a.a(parcel, readInt, FastJsonResponse.Field.CREATOR);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new FieldMappingDictionary.FieldMapPair(i, str, field);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FieldMappingDictionary.FieldMapPair[] newArray(int i) {
        return new FieldMappingDictionary.FieldMapPair[i];
    }
}
