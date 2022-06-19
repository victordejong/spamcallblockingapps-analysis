package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatf.class */
public final class zzatf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatf> CREATOR = new zzate();
    public final boolean zzdxb;
    public final List<String> zzdxc;

    public zzatf() {
        this(false, Collections.emptyList());
    }

    public zzatf(boolean z, List<String> list) {
        this.zzdxb = z;
        this.zzdxc = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzdxb);
        SafeParcelWriter.writeStringList(parcel, 3, this.zzdxc, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
