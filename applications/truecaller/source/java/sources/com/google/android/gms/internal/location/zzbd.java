package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbd.class */
public final class zzbd extends AbstractSafeParcelable {
    @SafeParcelable.Field
    private String moduleId;
    @SafeParcelable.Field
    private String tag;
    @SafeParcelable.Field
    private LocationRequest zzdg;
    @SafeParcelable.Field
    private boolean zzdh;
    @SafeParcelable.Field
    private boolean zzdi;
    @SafeParcelable.Field
    private boolean zzdj;
    private boolean zzdk = true;
    @SafeParcelable.Field
    private List<ClientIdentity> zzm;
    public static final List<ClientIdentity> zzcd = Collections.emptyList();
    public static final Parcelable.Creator<zzbd> CREATOR = new zzbe();

    @SafeParcelable.Constructor
    public zzbd(@SafeParcelable.Param(id = 1) LocationRequest locationRequest, @SafeParcelable.Param(id = 5) List<ClientIdentity> list, @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) boolean z, @SafeParcelable.Param(id = 8) boolean z2, @SafeParcelable.Param(id = 9) boolean z3, @SafeParcelable.Param(id = 10) String str2) {
        this.zzdg = locationRequest;
        this.zzm = list;
        this.tag = str;
        this.zzdh = z;
        this.zzdi = z2;
        this.zzdj = z3;
        this.moduleId = str2;
    }

    @Deprecated
    public static zzbd zza(LocationRequest locationRequest) {
        return new zzbd(locationRequest, zzcd, null, false, false, false, null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbd)) {
            return false;
        }
        zzbd zzbdVar = (zzbd) obj;
        return Objects.m38910a(this.zzdg, zzbdVar.zzdg) && Objects.m38910a(this.zzm, zzbdVar.zzm) && Objects.m38910a(this.tag, zzbdVar.tag) && this.zzdh == zzbdVar.zzdh && this.zzdi == zzbdVar.zzdi && this.zzdj == zzbdVar.zzdj && Objects.m38910a(this.moduleId, zzbdVar.moduleId);
    }

    public final int hashCode() {
        return this.zzdg.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.zzdg);
        if (this.tag != null) {
            sb.append(" tag=");
            sb.append(this.tag);
        }
        if (this.moduleId != null) {
            sb.append(" moduleId=");
            sb.append(this.moduleId);
        }
        sb.append(" hideAppOps=");
        sb.append(this.zzdh);
        sb.append(" clients=");
        sb.append(this.zzm);
        sb.append(" forceCoarseLocation=");
        sb.append(this.zzdi);
        if (this.zzdj) {
            sb.append(" exemptFromBackgroundThrottle");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 1, this.zzdg, i, false);
        SafeParcelWriter.m38842u(parcel, 5, this.zzm, false);
        SafeParcelWriter.m38846q(parcel, 6, this.tag, false);
        boolean z = this.zzdh;
        parcel.writeInt(262151);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.zzdi;
        parcel.writeInt(262152);
        parcel.writeInt(z2 ? 1 : 0);
        boolean z3 = this.zzdj;
        parcel.writeInt(262153);
        parcel.writeInt(z3 ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 10, this.moduleId, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
