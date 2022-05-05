package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.server.response.FieldMappingDictionary;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/d.class */
public final class d implements Parcelable.Creator<FieldMappingDictionary.Entry> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(FieldMappingDictionary.Entry entry, Parcel parcel) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, entry.f4068a);
        b.a(parcel, 2, entry.f4069b);
        b.a(parcel, 3, entry.c);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FieldMappingDictionary.Entry createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        int i = 0;
        ArrayList arrayList = null;
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
                    arrayList = a.c(parcel, readInt, FieldMappingDictionary.FieldMapPair.CREATOR);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new FieldMappingDictionary.Entry(i, str, arrayList);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FieldMappingDictionary.Entry[] newArray(int i) {
        return new FieldMappingDictionary.Entry[i];
    }
}
