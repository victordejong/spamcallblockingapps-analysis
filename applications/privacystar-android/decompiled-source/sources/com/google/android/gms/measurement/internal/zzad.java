package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "EventParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzad.class */
public final class zzad extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzad> CREATOR = new zzae();
    @SafeParcelable.Field(m344id = 2)
    public final String name;
    @SafeParcelable.Field(m344id = 4)
    public final String origin;
    @SafeParcelable.Field(m344id = 3)
    public final zzaa zzaid;
    @SafeParcelable.Field(m344id = 5)
    public final long zzaip;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzad(zzad zzadVar, long j) {
        Preconditions.checkNotNull(zzadVar);
        this.name = zzadVar.name;
        this.zzaid = zzadVar.zzaid;
        this.origin = zzadVar.origin;
        this.zzaip = j;
    }

    @SafeParcelable.Constructor
    public zzad(@SafeParcelable.Param(m343id = 2) String str, @SafeParcelable.Param(m343id = 3) zzaa zzaaVar, @SafeParcelable.Param(m343id = 4) String str2, @SafeParcelable.Param(m343id = 5) long j) {
        this.name = str;
        this.zzaid = zzaaVar;
        this.origin = str2;
        this.zzaip = j;
    }

    public final String toString() {
        String str = this.origin;
        String str2 = this.name;
        String valueOf = String.valueOf(this.zzaid);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.name, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzaid, i, false);
        SafeParcelWriter.writeString(parcel, 4, this.origin, false);
        SafeParcelWriter.writeLong(parcel, 5, this.zzaip);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
