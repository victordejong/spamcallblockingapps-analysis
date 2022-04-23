package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/places/PlaceReport.class */
public class PlaceReport extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new a();
    private final String tag;
    private final int versionCode;
    private final String zza;
    private final String zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlaceReport(int i, String str, String str2, String str3) {
        this.versionCode = i;
        this.zza = str;
        this.tag = str2;
        this.zzb = str3;
    }

    public static PlaceReport create(String str, String str2) {
        o.a(str);
        o.a(str2);
        o.a("unknown");
        o.b(true, "Invalid source");
        return new PlaceReport(1, str, str2, "unknown");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return m.a(this.zza, placeReport.zza) && m.a(this.tag, placeReport.tag) && m.a(this.zzb, placeReport.zzb);
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
        m.a a2 = m.a(this);
        a2.a("placeId", this.zza);
        a2.a("tag", this.tag);
        if (!"unknown".equals(this.zzb)) {
            a2.a(Payload.SOURCE, this.zzb);
        }
        return a2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.versionCode);
        a.a(parcel, 2, getPlaceId(), false);
        a.a(parcel, 3, getTag(), false);
        a.a(parcel, 4, this.zzb, false);
        a.b(parcel, a2);
    }
}
