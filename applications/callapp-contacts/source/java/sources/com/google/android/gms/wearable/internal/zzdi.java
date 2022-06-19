package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzdi.class */
public final class zzdi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdi> CREATOR = new C14249ar();
    public final int statusCode;
    public final List<zzah> zzdp;

    public zzdi(int i, List<zzah> list) {
        this.statusCode = i;
        this.zzdp = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 2, this.statusCode);
        C12050a.m19102a(parcel, 3, (List) this.zzdp, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
