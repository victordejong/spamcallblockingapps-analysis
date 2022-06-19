package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzth.class */
public final class zzth extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzth> CREATOR = new zztg();
    public final String url;
    private final long zzbvl;
    private final String zzbvm;
    private final String zzbvn;
    private final String zzbvo;
    private final Bundle zzbvp;
    public final boolean zzbvq;
    public long zzbvr;
    public String zzbvs;
    public int zzbvt;

    public zzth(String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z, long j2, String str5, int i) {
        this.url = str;
        this.zzbvl = j;
        this.zzbvm = str2 == null ? "" : str2;
        this.zzbvn = str3 == null ? "" : str3;
        this.zzbvo = str4 == null ? "" : str4;
        this.zzbvp = bundle == null ? new Bundle() : bundle;
        this.zzbvq = z;
        this.zzbvr = j2;
        this.zzbvs = str5;
        this.zzbvt = i;
    }

    public static zzth zzbs(String str) {
        return zzd(Uri.parse(str));
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    public static zzth zzd(Uri uri) {
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
                zzd.zzex(sb.toString());
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
            return new zzth(queryParameter, parseLong, host, str, str2, bundle, equals, 0L, "", 0);
        } catch (NullPointerException | NumberFormatException e) {
            zzd.zzd("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.url, false);
        SafeParcelWriter.writeLong(parcel, 3, this.zzbvl);
        SafeParcelWriter.writeString(parcel, 4, this.zzbvm, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzbvn, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzbvo, false);
        SafeParcelWriter.writeBundle(parcel, 7, this.zzbvp, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzbvq);
        SafeParcelWriter.writeLong(parcel, 9, this.zzbvr);
        SafeParcelWriter.writeString(parcel, 10, this.zzbvs, false);
        SafeParcelWriter.writeInt(parcel, 11, this.zzbvt);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
