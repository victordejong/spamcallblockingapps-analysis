package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzte.class */
public final class zzte extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzte> CREATOR = new zztd();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f28969a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final long f28970b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f28971c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f28972d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final String f28973e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final Bundle f28974f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final boolean f28975g;
    @SafeParcelable.Field

    /* renamed from: h */
    public long f28976h;

    @SafeParcelable.Constructor
    public zzte(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) String str3, @SafeParcelable.Param(id = 6) String str4, @SafeParcelable.Param(id = 7) Bundle bundle, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) long j2) {
        this.f28969a = str;
        this.f28970b = j;
        this.f28971c = str2 == null ? "" : str2;
        this.f28972d = str3 == null ? "" : str3;
        this.f28973e = str4 == null ? "" : str4;
        this.f28974f = bundle == null ? new Bundle() : bundle;
        this.f28975g = z;
        this.f28976h = j2;
    }

    /* renamed from: a */
    public static zzte m11439a(Uri uri) {
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
                zzbbq.m15852d(sb.toString());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter("url");
            boolean equals = "1".equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            long parseLong = queryParameter2 == null ? 0L : Long.parseLong(queryParameter2);
            Bundle bundle = new Bundle();
            zzp.m17967e();
            for (String str3 : uri.getQueryParameterNames()) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzte(queryParameter, parseLong, host, str, str2, bundle, equals, 0L);
        } catch (NullPointerException | NumberFormatException e) {
            zzbbq.m15853c("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    /* renamed from: a */
    public static zzte m11438a(String str) {
        return m11439a(Uri.parse(str));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f28969a, false);
        SafeParcelWriter.m17230a(parcel, 3, this.f28970b);
        SafeParcelWriter.m17221a(parcel, 4, this.f28971c, false);
        SafeParcelWriter.m17221a(parcel, 5, this.f28972d, false);
        SafeParcelWriter.m17221a(parcel, 6, this.f28973e, false);
        SafeParcelWriter.m17229a(parcel, 7, this.f28974f, false);
        SafeParcelWriter.m17218a(parcel, 8, this.f28975g);
        SafeParcelWriter.m17230a(parcel, 9, this.f28976h);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
