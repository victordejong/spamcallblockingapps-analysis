package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzatu.class */
public final class zzatu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatu> CREATOR = new sk();
    public final boolean zzdyl;
    public final List<String> zzdym;

    public zzatu() {
        this(false, Collections.emptyList());
    }

    public zzatu(boolean z, List<String> list) {
        this.zzdyl = z;
        this.zzdym = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzdyl);
        a.a(parcel, 3, this.zzdym);
        a.b(parcel, a2);
    }
}
