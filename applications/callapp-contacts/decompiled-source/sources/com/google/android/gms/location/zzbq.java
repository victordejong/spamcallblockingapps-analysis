package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.internal.location.ae;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzbq.class */
public final class zzbq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbq> CREATOR = new ag();
    private final List<String> zza;
    private final PendingIntent zzb;
    private final String zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbq(List<String> list, PendingIntent pendingIntent, String str) {
        this.zza = list == null ? ae.g() : ae.a(list);
        this.zzb = pendingIntent;
        this.zzc = str;
    }

    public static zzbq zza(List<String> list) {
        o.a(list, "geofence can't be null.");
        o.b(!list.isEmpty(), "Geofences must contains at least one id.");
        return new zzbq(list, null, "");
    }

    public static zzbq zzb(PendingIntent pendingIntent) {
        o.a(pendingIntent, "PendingIntent can not be null.");
        return new zzbq(null, pendingIntent, "");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zza);
        a.a(parcel, 2, this.zzb, i, false);
        a.a(parcel, 3, this.zzc, false);
        a.b(parcel, a2);
    }
}
