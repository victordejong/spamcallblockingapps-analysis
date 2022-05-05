package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Locale;
import p081h.p203i.p204a.p224e.p235d.p239m.C6962c;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/images/WebImage.class */
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new C6962c();

    /* renamed from: a */
    public final int f6573a;

    /* renamed from: b */
    public final Uri f6574b;

    /* renamed from: c */
    public final int f6575c;

    /* renamed from: d */
    public final int f6576d;

    public WebImage(int i, Uri uri, int i2, int i3) {
        this.f6573a = i;
        this.f6574b = uri;
        this.f6575c = i2;
        this.f6576d = i3;
    }

    /* renamed from: H */
    public final Uri m31950H() {
        return this.f6574b;
    }

    /* renamed from: I */
    public final int m31949I() {
        return this.f6575c;
    }

    /* renamed from: c */
    public final int m31948c() {
        return this.f6576d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WebImage)) {
            return false;
        }
        WebImage webImage = (WebImage) obj;
        return C7018s.m21297a(this.f6574b, webImage.f6574b) && this.f6575c == webImage.f6575c && this.f6576d == webImage.f6576d;
    }

    public final int hashCode() {
        return C7018s.m21296a(this.f6574b, Integer.valueOf(this.f6575c), Integer.valueOf(this.f6576d));
    }

    public final String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.f6575c), Integer.valueOf(this.f6576d), this.f6574b.toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6573a);
        C7031b.m21220a(parcel, 2, (Parcelable) m31950H(), i, false);
        C7031b.m21225a(parcel, 3, m31949I());
        C7031b.m21225a(parcel, 4, m31948c());
        C7031b.m21229a(parcel, a);
    }
}
