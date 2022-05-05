package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "MutateRequestCreator")
@SafeParcelable.Reserved({4})
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzx.class */
public final class zzx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new zzy();
    @SafeParcelable.Field(m344id = 1)
    private final int type;
    @Nullable
    @SafeParcelable.Field(m344id = 2)
    private final Thing[] zzdc;
    @Nullable
    @SafeParcelable.Field(m344id = 3)
    private final String[] zzdd;
    @Nullable
    @SafeParcelable.Field(m344id = 5)
    private final String[] zzde;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzx(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) @Nullable Thing[] thingArr, @SafeParcelable.Param(m343id = 3) @Nullable String[] strArr, @SafeParcelable.Param(m343id = 5) @Nullable String[] strArr2) {
        int i2 = i;
        if (i != 6) {
            i2 = i;
            switch (i) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                    break;
                default:
                    i2 = 0;
                    break;
            }
        }
        this.type = i2;
        this.zzdc = thingArr;
        this.zzdd = strArr;
        this.zzde = strArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.type);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.zzdc, i, false);
        SafeParcelWriter.writeStringArray(parcel, 3, this.zzdd, false);
        SafeParcelWriter.writeStringArray(parcel, 5, this.zzde, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
