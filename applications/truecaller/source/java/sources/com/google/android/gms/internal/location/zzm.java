package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.location.zzj;
import java.util.Collections;
import java.util.List;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzm.class */
public final class zzm extends AbstractSafeParcelable {
    @SafeParcelable.Field
    private String tag;
    @SafeParcelable.Field
    private zzj zzcf;
    @SafeParcelable.Field
    private List<ClientIdentity> zzm;
    @VisibleForTesting
    public static final List<ClientIdentity> zzcd = Collections.emptyList();
    public static final zzj zzce = new zzj();
    public static final Parcelable.Creator<zzm> CREATOR = new zzn();

    @SafeParcelable.Constructor
    public zzm(@SafeParcelable.Param(id = 1) zzj zzjVar, @SafeParcelable.Param(id = 2) List<ClientIdentity> list, @SafeParcelable.Param(id = 3) String str) {
        this.zzcf = zzjVar;
        this.zzm = list;
        this.tag = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzm)) {
            return false;
        }
        zzm zzmVar = (zzm) obj;
        return Objects.m38910a(this.zzcf, zzmVar.zzcf) && Objects.m38910a(this.zzm, zzmVar.zzm) && Objects.m38910a(this.tag, zzmVar.tag);
    }

    public final int hashCode() {
        return this.zzcf.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 1, this.zzcf, i, false);
        SafeParcelWriter.m38842u(parcel, 2, this.zzm, false);
        SafeParcelWriter.m38846q(parcel, 3, this.tag, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
