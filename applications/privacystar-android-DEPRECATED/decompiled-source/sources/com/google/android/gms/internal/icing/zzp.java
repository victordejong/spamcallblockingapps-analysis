package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
@SafeParcelable.Class(creator = "GetRecentContextCall_ResponseCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzp.class */
public final class zzp extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zzp> CREATOR = new zzq();
    @SafeParcelable.Field(m344id = 1)
    private Status zzv;
    @SafeParcelable.Field(m344id = 2)
    private List<zzx> zzw;
    @Deprecated
    @SafeParcelable.Field(m344id = 3)
    private String[] zzx;

    public zzp() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzp(@SafeParcelable.Param(m343id = 1) Status status, @SafeParcelable.Param(m343id = 2) List<zzx> list, @SafeParcelable.Param(m343id = 3) String[] strArr) {
        this.zzv = status;
        this.zzw = list;
        this.zzx = strArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zzv;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.zzv, i, false);
        SafeParcelWriter.writeTypedList(parcel, 2, this.zzw, false);
        SafeParcelWriter.writeStringArray(parcel, 3, this.zzx, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
