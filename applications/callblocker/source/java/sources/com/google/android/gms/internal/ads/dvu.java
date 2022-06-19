package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvu.class */
public final class dvu extends AbstractC2663a {
    public static final Parcelable.Creator<dvu> CREATOR = new dvx();

    /* renamed from: a */
    public final String f15856a;

    /* renamed from: b */
    public final boolean f15857b;

    /* renamed from: c */
    public long f15858c;

    /* renamed from: d */
    private final long f15859d;

    /* renamed from: e */
    private final String f15860e;

    /* renamed from: f */
    private final String f15861f;

    /* renamed from: g */
    private final String f15862g;

    /* renamed from: h */
    private final Bundle f15863h;

    public dvu(String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z, long j2) {
        this.f15856a = str;
        this.f15859d = j;
        this.f15860e = str2 == null ? "" : str2;
        this.f15861f = str3 == null ? "" : str3;
        this.f15862g = str4 == null ? "" : str4;
        this.f15863h = bundle == null ? new Bundle() : bundle;
        this.f15857b = z;
        this.f15858c = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Throwable, java.lang.NumberFormatException] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* renamed from: a */
    public static dvu m8486a(Uri uri) {
        dvu dvuVar;
        ?? r14 = false;
        try {
            if (!"gcache".equals(uri.getScheme())) {
                dvuVar = null;
            } else {
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments.size() != 2) {
                    C3556uu.m6745e(new StringBuilder(62).append("Expected 2 path parts for namespace and id, found :").append(pathSegments.size()).toString());
                    dvuVar = null;
                } else {
                    String str = pathSegments.get(0);
                    String str2 = pathSegments.get(1);
                    String host = uri.getHost();
                    String queryParameter = uri.getQueryParameter("url");
                    boolean equals = "1".equals(uri.getQueryParameter("read_only"));
                    String queryParameter2 = uri.getQueryParameter("expiration");
                    if (queryParameter2 != null) {
                        r14 = Long.parseLong(queryParameter2);
                    }
                    Bundle bundle = new Bundle();
                    C2341q.m14742e();
                    for (String str3 : uri.getQueryParameterNames()) {
                        if (str3.startsWith("tag.")) {
                            bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                        }
                    }
                    dvuVar = new dvu(queryParameter, r14 == true ? 1L : 0L, host, str, str2, bundle, equals, 0L);
                }
            }
        } catch (NullPointerException | NumberFormatException e) {
            C3556uu.m6746d("Unable to parse Uri into cache offering.", e);
            dvuVar = null;
        }
        return dvuVar;
    }

    /* renamed from: a */
    public static dvu m8485a(String str) {
        return m8486a(Uri.parse(str));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 2, this.f15856a, false);
        C2664b.m13940a(parcel, 3, this.f15859d);
        C2664b.m13932a(parcel, 4, this.f15860e, false);
        C2664b.m13932a(parcel, 5, this.f15861f, false);
        C2664b.m13932a(parcel, 6, this.f15862g, false);
        C2664b.m13939a(parcel, 7, this.f15863h, false);
        C2664b.m13930a(parcel, 8, this.f15857b);
        C2664b.m13940a(parcel, 9, this.f15858c);
        C2664b.m13943a(parcel, m13944a);
    }
}
