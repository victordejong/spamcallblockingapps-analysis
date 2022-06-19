package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpi.class */
public final class dpi implements Parcelable {
    public static final Parcelable.Creator<dpi> CREATOR = new dph();

    /* renamed from: a */
    private final AbstractC3010a[] f15286a;

    /* renamed from: com.google.android.gms.internal.ads.dpi$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpi$a.class */
    public interface AbstractC3010a extends Parcelable {
    }

    public dpi(Parcel parcel) {
        this.f15286a = new AbstractC3010a[parcel.readInt()];
        for (int i = 0; i < this.f15286a.length; i++) {
            this.f15286a[i] = (AbstractC3010a) parcel.readParcelable(AbstractC3010a.class.getClassLoader());
        }
    }

    public dpi(List<? extends AbstractC3010a> list) {
        this.f15286a = new AbstractC3010a[list.size()];
        list.toArray(this.f15286a);
    }

    /* renamed from: a */
    public final int m8933a() {
        return this.f15286a.length;
    }

    /* renamed from: a */
    public final AbstractC3010a m8932a(int i) {
        return this.f15286a[i];
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return this == obj ? true : (obj == null || getClass() != obj.getClass()) ? false : Arrays.equals(this.f15286a, ((dpi) obj).f15286a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f15286a);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f15286a.length);
        for (AbstractC3010a abstractC3010a : this.f15286a) {
            parcel.writeParcelable(abstractC3010a, 0);
        }
    }
}
