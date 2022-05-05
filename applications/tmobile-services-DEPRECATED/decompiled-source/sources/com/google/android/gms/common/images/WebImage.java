package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/WebImage.class */
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new zae();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7428f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final Uri f7429g;
    @SafeParcelable.Field

    /* renamed from: h */
    private final int f7430h;
    @SafeParcelable.Field

    /* renamed from: i */
    private final int f7431i;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public WebImage(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Uri uri, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) int i3) {
        this.f7428f = i;
        this.f7429g = uri;
        this.f7430h = i2;
        this.f7431i = i3;
    }

    /* renamed from: B */
    public final int m14606B() {
        return this.f7431i;
    }

    /* renamed from: I */
    public final Uri m14605I() {
        return this.f7429g;
    }

    /* renamed from: W */
    public final int m14604W() {
        return this.f7430h;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WebImage)) {
            return false;
        }
        WebImage webImage = (WebImage) obj;
        return Objects.m14537a(this.f7429g, webImage.f7429g) && this.f7430h == webImage.f7430h && this.f7431i == webImage.f7431i;
    }

    public final int hashCode() {
        return Objects.m14536b(this.f7429g, Integer.valueOf(this.f7430h), Integer.valueOf(this.f7431i));
    }

    public final String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.f7430h), Integer.valueOf(this.f7431i), this.f7429g.toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7428f);
        SafeParcelWriter.m14448p(parcel, 2, m14605I(), i, false);
        SafeParcelWriter.m14453k(parcel, 3, m14604W());
        SafeParcelWriter.m14453k(parcel, 4, m14606B());
        SafeParcelWriter.m14462b(parcel, a);
    }
}
