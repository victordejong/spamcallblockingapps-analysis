package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.internal.location.zzbe;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/GeofencingRequest.class */
public class GeofencingRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new C13764n();
    public static final int INITIAL_TRIGGER_DWELL = 4;
    public static final int INITIAL_TRIGGER_ENTER = 1;
    public static final int INITIAL_TRIGGER_EXIT = 2;
    private final List<zzbe> zza;
    private final int zzb;
    private final String zzc;
    private final String zzd;

    public GeofencingRequest(List<zzbe> list, int i, String str, String str2) {
        this.zza = list;
        this.zzb = i;
        this.zzc = str;
        this.zzd = str2;
    }

    public List<Object> getGeofences() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.zza);
        return arrayList;
    }

    public int getInitialTrigger() {
        return this.zzb;
    }

    public String toString() {
        return "GeofencingRequest[geofences=" + this.zza + ", initialTrigger=" + this.zzb + ", tag=" + this.zzc + ", attributionTag=" + this.zzd + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19102a(parcel, 1, (List) this.zza, false);
        C12050a.m19112a(parcel, 2, getInitialTrigger());
        C12050a.m19104a(parcel, 3, this.zzc, false);
        C12050a.m19104a(parcel, 4, this.zzd, false);
        C12050a.m19095b(parcel, m19116a);
    }

    public final GeofencingRequest zza(String str) {
        return new GeofencingRequest(this.zza, this.zzb, this.zzc, str);
    }
}
