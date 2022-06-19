package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.internal.location.AbstractC13317ae;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzbq.class */
public final class zzbq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbq> CREATOR = new C13735ag();
    private final List<String> zza;
    private final PendingIntent zzb;
    private final String zzc;

    public zzbq(List<String> list, PendingIntent pendingIntent, String str) {
        this.zza = list == null ? AbstractC13317ae.m13343g() : AbstractC13317ae.m13346a(list);
        this.zzb = pendingIntent;
        this.zzc = str;
    }

    public static zzbq zza(List<String> list) {
        C12045o.m19161a(list, "geofence can't be null.");
        C12045o.m19153b(!list.isEmpty(), "Geofences must contains at least one id.");
        return new zzbq(list, null, "");
    }

    public static zzbq zzb(PendingIntent pendingIntent) {
        C12045o.m19161a(pendingIntent, "PendingIntent can not be null.");
        return new zzbq(null, pendingIntent, "");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19103a(parcel, 1, this.zza);
        C12050a.m19107a(parcel, 2, this.zzb, i, false);
        C12050a.m19104a(parcel, 3, this.zzc, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
