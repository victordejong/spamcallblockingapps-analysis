package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayn.class */
public final class zzayn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzayn> CREATOR = new zzayo();
    @SafeParcelable.Field
    public final String zza;
    @SafeParcelable.Field
    public final long zzb;
    @SafeParcelable.Field
    public final String zzc;
    @SafeParcelable.Field
    public final String zzd;
    @SafeParcelable.Field
    public final String zze;
    @SafeParcelable.Field
    public final Bundle zzf;
    @SafeParcelable.Field
    public final boolean zzg;
    @SafeParcelable.Field
    public long zzh;
    @SafeParcelable.Field
    public String zzi;
    @SafeParcelable.Field
    public int zzj;

    @SafeParcelable.Constructor
    public zzayn(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) String str3, @SafeParcelable.Param(id = 6) String str4, @SafeParcelable.Param(id = 7) Bundle bundle, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) long j2, @SafeParcelable.Param(id = 10) String str5, @SafeParcelable.Param(id = 11) int i) {
        this.zza = str;
        this.zzb = j;
        this.zzc = str2 == null ? "" : str2;
        this.zzd = str3 == null ? "" : str3;
        this.zze = str4 == null ? "" : str4;
        this.zzf = bundle == null ? new Bundle() : bundle;
        this.zzg = z;
        this.zzh = j2;
        this.zzi = str5;
        this.zzj = i;
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    public static zzayn zza(Uri uri) {
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                int size = pathSegments.size();
                StringBuilder sb = new StringBuilder(62);
                sb.append("Expected 2 path parts for namespace and id, found :");
                sb.append(size);
                zzcgt.zzi(sb.toString());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter("url");
            boolean equals = "1".equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            char parseLong = queryParameter2 == null ? (char) 0 : Long.parseLong(queryParameter2);
            Bundle bundle = new Bundle();
            for (String str3 : uri.getQueryParameterNames()) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzayn(queryParameter, parseLong, host, str, str2, bundle, equals, 0L, "", 0);
        } catch (NullPointerException | NumberFormatException e) {
            zzcgt.zzj("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 2, this.zza, false);
        long j = this.zzb;
        parcel.writeInt(524291);
        parcel.writeLong(j);
        SafeParcelWriter.m38846q(parcel, 4, this.zzc, false);
        SafeParcelWriter.m38846q(parcel, 5, this.zzd, false);
        SafeParcelWriter.m38846q(parcel, 6, this.zze, false);
        SafeParcelWriter.m38860c(parcel, 7, this.zzf, false);
        boolean z = this.zzg;
        parcel.writeInt(262152);
        parcel.writeInt(z ? 1 : 0);
        long j2 = this.zzh;
        parcel.writeInt(524297);
        parcel.writeLong(j2);
        SafeParcelWriter.m38846q(parcel, 10, this.zzi, false);
        int i2 = this.zzj;
        parcel.writeInt(262155);
        parcel.writeInt(i2);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
