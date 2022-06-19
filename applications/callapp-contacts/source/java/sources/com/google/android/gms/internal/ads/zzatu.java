package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzatu.class */
public final class zzatu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatu> CREATOR = new C12907sk();
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19101a(parcel, 2, this.zzdyl);
        C12050a.m19103a(parcel, 3, this.zzdym);
        C12050a.m19095b(parcel, m19116a);
    }
}
