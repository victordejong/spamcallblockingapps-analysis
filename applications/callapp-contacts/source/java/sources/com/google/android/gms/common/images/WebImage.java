package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/WebImage.class */
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new C11968f();
    final int zaa;
    private final Uri zab;
    private final int zac;
    private final int zad;

    public WebImage(int i, Uri uri, int i2, int i3) {
        this.zaa = i;
        this.zab = uri;
        this.zac = i2;
        this.zad = i3;
    }

    public WebImage(Uri uri) throws IllegalArgumentException {
        this(uri, 0, 0);
    }

    public WebImage(Uri uri, int i, int i2) throws IllegalArgumentException {
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
    public WebImage(org.json.JSONObject r8) throws java.lang.IllegalArgumentException {
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

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WebImage)) {
            return false;
        }
        WebImage webImage = (WebImage) obj;
        return C12041m.m19168a(this.zab, webImage.zab) && this.zac == webImage.zac && this.zad == webImage.zad;
    }

    public final int getHeight() {
        return this.zad;
    }

    public final Uri getUrl() {
        return this.zab;
    }

    public final int getWidth() {
        return this.zac;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zab, Integer.valueOf(this.zac), Integer.valueOf(this.zad)});
    }

    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", this.zab.toString());
            jSONObject.put("width", this.zac);
            jSONObject.put("height", this.zad);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public final String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.zac), Integer.valueOf(this.zad), this.zab.toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zaa);
        C12050a.m19107a(parcel, 2, getUrl(), i, false);
        C12050a.m19112a(parcel, 3, getWidth());
        C12050a.m19112a(parcel, 4, getHeight());
        C12050a.m19095b(parcel, m19116a);
    }
}
