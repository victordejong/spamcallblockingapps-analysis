package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
@SafeParcelable.Class(creator = "WebImageCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/WebImage.class */
public final class WebImage extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<WebImage> CREATOR = new zah();
    @SafeParcelable.VersionField(m4803id = 1)
    public final int zaa;
    @SafeParcelable.Field(getter = "getUrl", m4805id = 2)
    private final Uri zab;
    @SafeParcelable.Field(getter = "getWidth", m4805id = 3)
    private final int zac;
    @SafeParcelable.Field(getter = "getHeight", m4805id = 4)
    private final int zad;

    @SafeParcelable.Constructor
    public WebImage(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) Uri uri, @SafeParcelable.Param(m4804id = 3) int i2, @SafeParcelable.Param(m4804id = 4) int i3) {
        this.zaa = i;
        this.zab = uri;
        this.zac = i2;
        this.zad = i3;
    }

    public WebImage(@RecentlyNonNull Uri uri) throws IllegalArgumentException {
        this(uri, 0, 0);
    }

    public WebImage(@RecentlyNonNull Uri uri, int i, int i2) throws IllegalArgumentException {
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
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WebImage(@androidx.annotation.RecentlyNonNull org.json.JSONObject r8) throws java.lang.IllegalArgumentException {
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
        return Objects.equal(this.zab, webImage.zab) && this.zac == webImage.zac && this.zad == webImage.zad;
    }

    public int getHeight() {
        return this.zad;
    }

    @RecentlyNonNull
    public Uri getUrl() {
        return this.zab;
    }

    public int getWidth() {
        return this.zac;
    }

    public int hashCode() {
        return Objects.hashCode(this.zab, Integer.valueOf(this.zac), Integer.valueOf(this.zad));
    }

    @RecentlyNonNull
    @KeepForSdk
    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ImagesContract.URL, this.zab.toString());
            jSONObject.put("width", this.zac);
            jSONObject.put("height", this.zad);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    @RecentlyNonNull
    public String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.zac), Integer.valueOf(this.zad), this.zab.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeParcelable(parcel, 2, getUrl(), i, false);
        SafeParcelWriter.writeInt(parcel, 3, getWidth());
        SafeParcelWriter.writeInt(parcel, 4, getHeight());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
