package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "AppMetadataCreator")
@SafeParcelable.Reserved({1, 20})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzh.class */
public final class zzh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzh> CREATOR = new zzi();
    @SafeParcelable.Field(m344id = 2)
    public final String packageName;
    @SafeParcelable.Field(m344id = 6)
    public final long zzadt;
    @SafeParcelable.Field(m344id = 3)
    public final String zzafx;
    @SafeParcelable.Field(m344id = 12)
    public final String zzafz;
    @SafeParcelable.Field(defaultValueUnchecked = "Integer.MIN_VALUE", m344id = 11)
    public final long zzagd;
    @SafeParcelable.Field(m344id = 5)
    public final String zzage;
    @SafeParcelable.Field(m344id = 7)
    public final long zzagf;
    @SafeParcelable.Field(defaultValue = "true", m344id = 9)
    public final boolean zzagg;
    @SafeParcelable.Field(m344id = 13)
    public final long zzagh;
    @SafeParcelable.Field(defaultValue = "true", m344id = 16)
    public final boolean zzagi;
    @SafeParcelable.Field(defaultValue = "true", m344id = 17)
    public final boolean zzagj;
    @SafeParcelable.Field(m344id = 19)
    public final String zzagk;
    @SafeParcelable.Field(m344id = 8)
    public final String zzagv;
    @SafeParcelable.Field(m344id = 10)
    public final boolean zzagw;
    @SafeParcelable.Field(m344id = 14)
    public final long zzagx;
    @SafeParcelable.Field(m344id = 15)
    public final int zzagy;
    @SafeParcelable.Field(m344id = 18)
    public final boolean zzagz;
    @SafeParcelable.Field(m344id = 4)
    public final String zzts;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, boolean z5, String str7) {
        Preconditions.checkNotEmpty(str);
        this.packageName = str;
        this.zzafx = TextUtils.isEmpty(str2) ? null : str2;
        this.zzts = str3;
        this.zzagd = j;
        this.zzage = str4;
        this.zzadt = j2;
        this.zzagf = j3;
        this.zzagv = str5;
        this.zzagg = z;
        this.zzagw = z2;
        this.zzafz = str6;
        this.zzagh = j4;
        this.zzagx = j5;
        this.zzagy = i;
        this.zzagi = z3;
        this.zzagj = z4;
        this.zzagz = z5;
        this.zzagk = str7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzh(@SafeParcelable.Param(m343id = 2) String str, @SafeParcelable.Param(m343id = 3) String str2, @SafeParcelable.Param(m343id = 4) String str3, @SafeParcelable.Param(m343id = 5) String str4, @SafeParcelable.Param(m343id = 6) long j, @SafeParcelable.Param(m343id = 7) long j2, @SafeParcelable.Param(m343id = 8) String str5, @SafeParcelable.Param(m343id = 9) boolean z, @SafeParcelable.Param(m343id = 10) boolean z2, @SafeParcelable.Param(m343id = 11) long j3, @SafeParcelable.Param(m343id = 12) String str6, @SafeParcelable.Param(m343id = 13) long j4, @SafeParcelable.Param(m343id = 14) long j5, @SafeParcelable.Param(m343id = 15) int i, @SafeParcelable.Param(m343id = 16) boolean z3, @SafeParcelable.Param(m343id = 17) boolean z4, @SafeParcelable.Param(m343id = 18) boolean z5, @SafeParcelable.Param(m343id = 19) String str7) {
        this.packageName = str;
        this.zzafx = str2;
        this.zzts = str3;
        this.zzagd = j3;
        this.zzage = str4;
        this.zzadt = j;
        this.zzagf = j2;
        this.zzagv = str5;
        this.zzagg = z;
        this.zzagw = z2;
        this.zzafz = str6;
        this.zzagh = j4;
        this.zzagx = j5;
        this.zzagy = i;
        this.zzagi = z3;
        this.zzagj = z4;
        this.zzagz = z5;
        this.zzagk = str7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.packageName, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzafx, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzts, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzage, false);
        SafeParcelWriter.writeLong(parcel, 6, this.zzadt);
        SafeParcelWriter.writeLong(parcel, 7, this.zzagf);
        SafeParcelWriter.writeString(parcel, 8, this.zzagv, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzagg);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzagw);
        SafeParcelWriter.writeLong(parcel, 11, this.zzagd);
        SafeParcelWriter.writeString(parcel, 12, this.zzafz, false);
        SafeParcelWriter.writeLong(parcel, 13, this.zzagh);
        SafeParcelWriter.writeLong(parcel, 14, this.zzagx);
        SafeParcelWriter.writeInt(parcel, 15, this.zzagy);
        SafeParcelWriter.writeBoolean(parcel, 16, this.zzagi);
        SafeParcelWriter.writeBoolean(parcel, 17, this.zzagj);
        SafeParcelWriter.writeBoolean(parcel, 18, this.zzagz);
        SafeParcelWriter.writeString(parcel, 19, this.zzagk, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
