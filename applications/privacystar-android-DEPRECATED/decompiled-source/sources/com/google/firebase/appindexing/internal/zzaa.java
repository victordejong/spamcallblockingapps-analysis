package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.appindexing.internal.Thing;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzaa.class */
public final class zzaa implements Parcelable.Creator<Thing> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Thing createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        Bundle bundle = null;
        Thing.zza zzaVar = null;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 1000) {
                switch (fieldId) {
                    case 1:
                        bundle = SafeParcelReader.createBundle(parcel, readHeader);
                        continue;
                    case 2:
                        zzaVar = (Thing.zza) SafeParcelReader.createParcelable(parcel, readHeader, Thing.zza.CREATOR);
                        continue;
                    case 3:
                        str = SafeParcelReader.createString(parcel, readHeader);
                        continue;
                    case 4:
                        str2 = SafeParcelReader.createString(parcel, readHeader);
                        continue;
                    default:
                        SafeParcelReader.skipUnknownField(parcel, readHeader);
                        continue;
                }
            } else {
                i = SafeParcelReader.readInt(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new Thing(i, bundle, zzaVar, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Thing[] newArray(int i) {
        return new Thing[i];
    }
}
