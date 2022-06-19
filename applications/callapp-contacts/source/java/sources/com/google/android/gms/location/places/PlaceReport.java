package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/places/PlaceReport.class */
public class PlaceReport extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new C13767a();
    private final String tag;
    private final int versionCode;
    private final String zza;
    private final String zzb;

    public PlaceReport(int i, String str, String str2, String str3) {
        this.versionCode = i;
        this.zza = str;
        this.tag = str2;
        this.zzb = str3;
    }

    public static PlaceReport create(String str, String str2) {
        C12045o.m19162a(str);
        C12045o.m19160a(str2);
        C12045o.m19160a("unknown");
        C12045o.m19153b(true, "Invalid source");
        return new PlaceReport(1, str, str2, "unknown");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return C12041m.m19168a(this.zza, placeReport.zza) && C12041m.m19168a(this.tag, placeReport.tag) && C12041m.m19168a(this.zzb, placeReport.zzb);
    }

    public String getPlaceId() {
        return this.zza;
    }

    public String getTag() {
        return this.tag;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, this.tag, this.zzb});
    }

    public String toString() {
        C12041m.C12042a m19169a = C12041m.m19169a(this);
        m19169a.m19166a("placeId", this.zza);
        m19169a.m19166a("tag", this.tag);
        if (!"unknown".equals(this.zzb)) {
            m19169a.m19166a(Payload.SOURCE, this.zzb);
        }
        return m19169a.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.versionCode);
        C12050a.m19104a(parcel, 2, getPlaceId(), false);
        C12050a.m19104a(parcel, 3, getTag(), false);
        C12050a.m19104a(parcel, 4, this.zzb, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
