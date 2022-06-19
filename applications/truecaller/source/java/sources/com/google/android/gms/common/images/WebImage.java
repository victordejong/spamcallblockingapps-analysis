package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Locale;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/images/WebImage.class */
public final class WebImage extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<WebImage> CREATOR = new zah();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5933a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final Uri f5934b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f5935c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final int f5936d;

    @SafeParcelable.Constructor
    public WebImage(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Uri uri, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) int i3) {
        this.f5933a = i;
        this.f5934b = uri;
        this.f5935c = i2;
        this.f5936d = i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WebImage)) {
            return false;
        }
        WebImage webImage = (WebImage) obj;
        return Objects.m38910a(this.f5934b, webImage.f5934b) && this.f5935c == webImage.f5935c && this.f5936d == webImage.f5936d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5934b, Integer.valueOf(this.f5935c), Integer.valueOf(this.f5936d)});
    }

    @RecentlyNonNull
    public String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.f5935c), Integer.valueOf(this.f5936d), this.f5934b.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5933a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38847p(parcel, 2, this.f5934b, i, false);
        int i3 = this.f5935c;
        parcel.writeInt(262147);
        parcel.writeInt(i3);
        int i4 = this.f5936d;
        parcel.writeInt(262148);
        parcel.writeInt(i4);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
