package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzti.class */
public final class zzti extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzti> CREATOR = new egw();
    public final String url;
    private final long zzbvx;
    private final String zzbvy;
    private final String zzbvz;
    private final String zzbwa;
    private final Bundle zzbwb;
    public final boolean zzbwc;
    public long zzbwd;
    public String zzbwe;
    public int zzbwf;

    public zzti(String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z, long j2, String str5, int i) {
        this.url = str;
        this.zzbvx = j;
        this.zzbvy = str2 == null ? "" : str2;
        this.zzbvz = str3 == null ? "" : str3;
        this.zzbwa = str4 == null ? "" : str4;
        this.zzbwb = bundle == null ? new Bundle() : bundle;
        this.zzbwc = z;
        this.zzbwd = j2;
        this.zzbwe = str5;
        this.zzbwf = i;
    }

    public static zzti zzbs(String str) {
        return zzd(Uri.parse(str));
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    public static zzti zzd(Uri uri) {
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
                zzd.zzez(sb.toString());
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
            return new zzti(queryParameter, parseLong, host, str, str2, bundle, equals, 0L, "", 0);
        } catch (NullPointerException | NumberFormatException e) {
            zzd.zzd("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 2, this.url, false);
        C12050a.m19111a(parcel, 3, this.zzbvx);
        C12050a.m19104a(parcel, 4, this.zzbvy, false);
        C12050a.m19104a(parcel, 5, this.zzbvz, false);
        C12050a.m19104a(parcel, 6, this.zzbwa, false);
        C12050a.m19110a(parcel, 7, this.zzbwb, false);
        C12050a.m19101a(parcel, 8, this.zzbwc);
        C12050a.m19111a(parcel, 9, this.zzbwd);
        C12050a.m19104a(parcel, 10, this.zzbwe, false);
        C12050a.m19112a(parcel, 11, this.zzbwf);
        C12050a.m19095b(parcel, m19116a);
    }
}
