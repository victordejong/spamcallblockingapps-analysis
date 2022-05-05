package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.appindexing.internal.Thing;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzae.class */
public final class zzae implements Parcelable.Creator<Thing> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Thing createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        Bundle bundle = null;
        Thing.zza zzaVar = null;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                bundle = SafeParcelReader.m14484f(parcel, B);
            } else if (u == 2) {
                zzaVar = (Thing.zza) SafeParcelReader.m14476n(parcel, B, Thing.zza.CREATOR);
            } else if (u == 3) {
                str = SafeParcelReader.m14475o(parcel, B);
            } else if (u == 4) {
                str2 = SafeParcelReader.m14475o(parcel, B);
            } else if (u != 1000) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                i = SafeParcelReader.m14498D(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new Thing(i, bundle, zzaVar, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Thing[] newArray(int i) {
        return new Thing[i];
    }
}
