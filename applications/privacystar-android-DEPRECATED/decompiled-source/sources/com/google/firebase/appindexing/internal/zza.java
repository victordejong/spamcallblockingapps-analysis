package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.appindexing.Action;
@SafeParcelable.Class(creator = "ActionImplCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zza.class */
public final class zza extends AbstractSafeParcelable implements Action {
    public static final Parcelable.Creator<zza> CREATOR = new zzc();
    @SafeParcelable.Field(getter = "getPropertyBundle", m344id = 7)
    private final Bundle zzaw;
    @SafeParcelable.Field(getter = "getActionType", m344id = 1)
    private final String zzbu;
    @SafeParcelable.Field(getter = "getObjectName", m344id = 2)
    private final String zzbv;
    @SafeParcelable.Field(getter = "getObjectUrl", m344id = 3)
    private final String zzbw;
    @SafeParcelable.Field(getter = "getObjectSameAs", m344id = 4)
    private final String zzbx;
    @SafeParcelable.Field(getter = "getMetadata", m344id = 5)
    private final zzb zzby;
    @SafeParcelable.Field(getter = "getActionStatus", m344id = 6)
    private final String zzbz;

    @SafeParcelable.Constructor
    public zza(@SafeParcelable.Param(m343id = 1) String str, @SafeParcelable.Param(m343id = 2) String str2, @SafeParcelable.Param(m343id = 3) String str3, @SafeParcelable.Param(m343id = 4) String str4, @SafeParcelable.Param(m343id = 5) zzb zzbVar, @SafeParcelable.Param(m343id = 6) String str5, @SafeParcelable.Param(m343id = 7) Bundle bundle) {
        this.zzbu = str;
        this.zzbv = str2;
        this.zzbw = str3;
        this.zzbx = str4;
        this.zzby = zzbVar;
        this.zzbz = str5;
        if (bundle != null) {
            this.zzaw = bundle;
        } else {
            this.zzaw = Bundle.EMPTY;
        }
        this.zzaw.setClassLoader(getClass().getClassLoader());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ActionImpl { ");
        sb.append("{ actionType: '");
        sb.append(this.zzbu);
        sb.append("' } ");
        sb.append("{ objectName: '");
        sb.append(this.zzbv);
        sb.append("' } ");
        sb.append("{ objectUrl: '");
        sb.append(this.zzbw);
        sb.append("' } ");
        if (this.zzbx != null) {
            sb.append("{ objectSameAs: '");
            sb.append(this.zzbx);
            sb.append("' } ");
        }
        if (this.zzby != null) {
            sb.append("{ metadata: '");
            sb.append(this.zzby.toString());
            sb.append("' } ");
        }
        if (this.zzbz != null) {
            sb.append("{ actionStatus: '");
            sb.append(this.zzbz);
            sb.append("' } ");
        }
        if (!this.zzaw.isEmpty()) {
            sb.append("{ ");
            sb.append(this.zzaw);
            sb.append(" } ");
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzbu, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzbv, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzbw, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzbx, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzby, i, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzbz, false);
        SafeParcelWriter.writeBundle(parcel, 7, this.zzaw, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzb zzj() {
        return this.zzby;
    }
}
