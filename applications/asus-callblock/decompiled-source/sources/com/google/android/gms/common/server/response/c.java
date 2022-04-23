package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.server.response.FieldMappingDictionary;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/c.class */
public final class c implements Parcelable.Creator<FieldMappingDictionary> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(FieldMappingDictionary fieldMappingDictionary, Parcel parcel) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, fieldMappingDictionary.f4066a);
        ArrayList arrayList = new ArrayList();
        for (String str : fieldMappingDictionary.f4067b.keySet()) {
            arrayList.add(new FieldMappingDictionary.Entry(str, fieldMappingDictionary.f4067b.get(str)));
        }
        b.a(parcel, 2, arrayList);
        b.a(parcel, 3, fieldMappingDictionary.c);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FieldMappingDictionary createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        int i = 0;
        String str = null;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    arrayList = a.c(parcel, readInt, FieldMappingDictionary.Entry.CREATOR);
                    break;
                case 3:
                    str = a.k(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new FieldMappingDictionary(i, arrayList, str);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FieldMappingDictionary[] newArray(int i) {
        return new FieldMappingDictionary[i];
    }
}
