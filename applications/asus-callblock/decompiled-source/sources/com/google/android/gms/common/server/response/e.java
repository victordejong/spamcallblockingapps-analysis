package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/e.class */
public final class e implements Parcelable.Creator<SafeParcelResponse> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(SafeParcelResponse safeParcelResponse, Parcel parcel, int i) {
        FieldMappingDictionary fieldMappingDictionary;
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, safeParcelResponse.f4072a);
        Parcel c = safeParcelResponse.c();
        if (c != null) {
            int a3 = b.a(parcel, 2);
            parcel.appendFrom(c, 0, c.dataSize());
            b.b(parcel, a3);
        }
        switch (safeParcelResponse.f4073b) {
            case 0:
                fieldMappingDictionary = null;
                break;
            case 1:
                fieldMappingDictionary = safeParcelResponse.c;
                break;
            case 2:
                fieldMappingDictionary = safeParcelResponse.c;
                break;
            default:
                throw new IllegalStateException(new StringBuilder(34).append("Invalid creation type: ").append(safeParcelResponse.f4073b).toString());
        }
        b.a(parcel, 3, fieldMappingDictionary, i);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SafeParcelResponse createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        int i = 0;
        FieldMappingDictionary fieldMappingDictionary = null;
        Parcel parcel2 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    parcel2 = a.r(parcel, readInt);
                    break;
                case 3:
                    fieldMappingDictionary = (FieldMappingDictionary) a.a(parcel, readInt, FieldMappingDictionary.CREATOR);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new SafeParcelResponse(i, parcel2, fieldMappingDictionary);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SafeParcelResponse[] newArray(int i) {
        return new SafeParcelResponse[i];
    }
}
