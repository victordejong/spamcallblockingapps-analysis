package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/WebImage.class */
public final class WebImage extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<WebImage> CREATOR = new C6103d();

    /* renamed from: d */
    final int f19433d;

    /* renamed from: e */
    private final Uri f19434e;

    /* renamed from: f */
    private final int f19435f;

    /* renamed from: g */
    private final int f19436g;

    public WebImage(int i, Uri uri, int i2, int i3) {
        this.f19433d = i;
        this.f19434e = uri;
        this.f19435f = i2;
        this.f19436g = i3;
    }

    public WebImage(@RecentlyNonNull Uri uri, int i, int i2) {
        this(1, uri, i, i2);
        if (uri != null) {
            if (i >= 0 && i2 >= 0) {
                return;
            }
            throw new IllegalArgumentException("width and height must not be negative");
        }
        throw new IllegalArgumentException("url cannot be null");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WebImage(@androidx.annotation.RecentlyNonNull org.json.JSONObject r8) {
        /*
            r7 = this;
            android.net.Uri r0 = android.net.Uri.EMPTY
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r8
            java.lang.String r1 = "url"
            boolean r0 = r0.has(r1)
            if (r0 == 0) goto L19
            r0 = r8
            java.lang.String r1 = "url"
            java.lang.String r0 = r0.getString(r1)     // Catch: org.json.JSONException -> L2d
            android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch: org.json.JSONException -> L2d
            r10 = r0
        L19:
            r0 = r7
            r1 = r10
            r2 = r8
            java.lang.String r3 = "width"
            r4 = 0
            int r2 = r2.optInt(r3, r4)
            r3 = r8
            java.lang.String r4 = "height"
            r5 = 0
            int r3 = r3.optInt(r4, r5)
            r0.<init>(r1, r2, r3)
            return
        L2d:
            r10 = move-exception
            r0 = r9
            r10 = r0
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.images.WebImage.<init>(org.json.JSONObject):void");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WebImage)) {
            return false;
        }
        WebImage webImage = (WebImage) obj;
        return C6147m.m17044a(this.f19434e, webImage.f19434e) && this.f19435f == webImage.f19435f && this.f19436g == webImage.f19436g;
    }

    public int hashCode() {
        return C6147m.m17043b(this.f19434e, Integer.valueOf(this.f19435f), Integer.valueOf(this.f19436g));
    }

    /* renamed from: k0 */
    public int m17167k0() {
        return this.f19436g;
    }

    @RecentlyNonNull
    /* renamed from: l0 */
    public Uri m17166l0() {
        return this.f19434e;
    }

    /* renamed from: m0 */
    public int m17165m0() {
        return this.f19435f;
    }

    @RecentlyNonNull
    public String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.f19435f), Integer.valueOf(this.f19436g), this.f19434e.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19433d);
        C6170a.m16931q(parcel, 2, m17166l0(), i, false);
        C6170a.m16937k(parcel, 3, m17165m0());
        C6170a.m16937k(parcel, 4, m17167k0());
        C6170a.m16946b(parcel, m16947a);
    }
}
