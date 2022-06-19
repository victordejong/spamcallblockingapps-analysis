package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.location.zzs;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzj.class */
public final class zzj extends AbstractSafeParcelable {
    final zzs zzc;
    final List<ClientIdentity> zzd;
    final String zze;
    static final List<ClientIdentity> zza = Collections.emptyList();
    static final zzs zzb = new zzs();
    public static final Parcelable.Creator<zzj> CREATOR = new C13324al();

    public zzj(zzs zzsVar, List<ClientIdentity> list, String str) {
        this.zzc = zzsVar;
        this.zzd = list;
        this.zze = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzj)) {
            return false;
        }
        zzj zzjVar = (zzj) obj;
        return C12041m.m19168a(this.zzc, zzjVar.zzc) && C12041m.m19168a(this.zzd, zzjVar.zzd) && C12041m.m19168a(this.zze, zzjVar.zze);
    }

    public final int hashCode() {
        return this.zzc.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzc);
        String valueOf2 = String.valueOf(this.zzd);
        String str = this.zze;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 77 + String.valueOf(valueOf2).length() + String.valueOf(str).length());
        sb.append("DeviceOrientationRequestInternal{deviceOrientationRequest=");
        sb.append(valueOf);
        sb.append(", clients=");
        sb.append(valueOf2);
        sb.append(", tag='");
        sb.append(str);
        sb.append("'}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 1, this.zzc, i, false);
        C12050a.m19102a(parcel, 2, (List) this.zzd, false);
        C12050a.m19104a(parcel, 3, this.zze, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
