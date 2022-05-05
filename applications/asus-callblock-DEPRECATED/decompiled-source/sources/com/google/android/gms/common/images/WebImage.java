package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/WebImage.class */
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    final int f3976a;

    /* renamed from: b  reason: collision with root package name */
    final Uri f3977b;
    final int c;
    final int d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebImage(int i, Uri uri, int i2, int i3) {
        this.f3976a = i;
        this.f3977b = uri;
        this.c = i2;
        this.d = i3;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || !(obj instanceof WebImage)) {
                z = false;
            } else {
                WebImage webImage = (WebImage) obj;
                if (!(ae.a(this.f3977b, webImage.f3977b) && this.c == webImage.c && this.d == webImage.d)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3977b, Integer.valueOf(this.c), Integer.valueOf(this.d)});
    }

    public final String toString() {
        return String.format("Image %dx%d %s", Integer.valueOf(this.c), Integer.valueOf(this.d), this.f3977b.toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}
