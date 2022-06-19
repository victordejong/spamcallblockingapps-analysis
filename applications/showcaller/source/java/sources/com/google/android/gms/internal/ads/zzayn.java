package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayn.class */
public final class zzayn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzayn> CREATOR = new C6334bm();

    /* renamed from: d */
    public final String f33606d;

    /* renamed from: e */
    public final long f33607e;

    /* renamed from: f */
    public final String f33608f;

    /* renamed from: g */
    public final String f33609g;

    /* renamed from: h */
    public final String f33610h;

    /* renamed from: i */
    public final Bundle f33611i;

    /* renamed from: j */
    public final boolean f33612j;

    /* renamed from: k */
    public long f33613k;

    /* renamed from: l */
    public String f33614l;

    /* renamed from: m */
    public int f33615m;

    public zzayn(String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z, long j2, String str5, int i) {
        this.f33606d = str;
        this.f33607e = j;
        this.f33608f = str2 == null ? "" : str2;
        this.f33609g = str3 == null ? "" : str3;
        this.f33610h = str4 == null ? "" : str4;
        this.f33611i = bundle == null ? new Bundle() : bundle;
        this.f33612j = z;
        this.f33613k = j2;
        this.f33614l = str5;
        this.f33615m = i;
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* renamed from: k0 */
    public static zzayn m8086k0(Uri uri) {
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
                ei0.m15464f(sb.toString());
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
            ei0.m15463g("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 2, this.f33606d, false);
        C6170a.m16934n(parcel, 3, this.f33607e);
        C6170a.m16930r(parcel, 4, this.f33608f, false);
        C6170a.m16930r(parcel, 5, this.f33609g, false);
        C6170a.m16930r(parcel, 6, this.f33610h, false);
        C6170a.m16943e(parcel, 7, this.f33611i, false);
        C6170a.m16945c(parcel, 8, this.f33612j);
        C6170a.m16934n(parcel, 9, this.f33613k);
        C6170a.m16930r(parcel, 10, this.f33614l, false);
        C6170a.m16937k(parcel, 11, this.f33615m);
        C6170a.m16946b(parcel, m16947a);
    }
}
