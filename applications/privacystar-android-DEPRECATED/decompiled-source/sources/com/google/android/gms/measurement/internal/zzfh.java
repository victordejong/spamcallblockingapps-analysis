package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "UserAttributeParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfh.class */
public final class zzfh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfh> CREATOR = new zzfi();
    @SafeParcelable.Field(m344id = 2)
    public final String name;
    @SafeParcelable.Field(m344id = 7)
    public final String origin;
    @SafeParcelable.Field(m344id = 1)
    private final int versionCode;
    @SafeParcelable.Field(m344id = 6)
    private final String zzamp;
    @SafeParcelable.Field(m344id = 3)
    public final long zzaue;
    @SafeParcelable.Field(m344id = 4)
    private final Long zzauf;
    @SafeParcelable.Field(m344id = 5)
    private final Float zzaug;
    @SafeParcelable.Field(m344id = 8)
    private final Double zzauh;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzfh(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) String str, @SafeParcelable.Param(m343id = 3) long j, @SafeParcelable.Param(m343id = 4) Long l, @SafeParcelable.Param(m343id = 5) Float f, @SafeParcelable.Param(m343id = 6) String str2, @SafeParcelable.Param(m343id = 7) String str3, @SafeParcelable.Param(m343id = 8) Double d) {
        this.versionCode = i;
        this.name = str;
        this.zzaue = j;
        this.zzauf = l;
        Double d2 = null;
        this.zzaug = null;
        if (i == 1) {
            this.zzauh = f != null ? Double.valueOf(f.doubleValue()) : d2;
        } else {
            this.zzauh = d;
        }
        this.zzamp = str2;
        this.origin = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfh(zzfj zzfjVar) {
        this(zzfjVar.name, zzfjVar.zzaue, zzfjVar.value, zzfjVar.origin);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfh(String str, long j, Object obj, String str2) {
        Preconditions.checkNotEmpty(str);
        this.versionCode = 2;
        this.name = str;
        this.zzaue = j;
        this.origin = str2;
        if (obj == null) {
            this.zzauf = null;
            this.zzaug = null;
            this.zzauh = null;
            this.zzamp = null;
        } else if (obj instanceof Long) {
            this.zzauf = (Long) obj;
            this.zzaug = null;
            this.zzauh = null;
            this.zzamp = null;
        } else if (obj instanceof String) {
            this.zzauf = null;
            this.zzaug = null;
            this.zzauh = null;
            this.zzamp = (String) obj;
        } else if (obj instanceof Double) {
            this.zzauf = null;
            this.zzaug = null;
            this.zzauh = (Double) obj;
            this.zzamp = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }

    public final Object getValue() {
        if (this.zzauf != null) {
            return this.zzauf;
        }
        if (this.zzauh != null) {
            return this.zzauh;
        }
        if (this.zzamp != null) {
            return this.zzamp;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeString(parcel, 2, this.name, false);
        SafeParcelWriter.writeLong(parcel, 3, this.zzaue);
        SafeParcelWriter.writeLongObject(parcel, 4, this.zzauf, false);
        SafeParcelWriter.writeFloatObject(parcel, 5, null, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzamp, false);
        SafeParcelWriter.writeString(parcel, 7, this.origin, false);
        SafeParcelWriter.writeDoubleObject(parcel, 8, this.zzauh, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
