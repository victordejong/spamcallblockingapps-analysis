package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzge.class */
public final class zzge extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzge> CREATOR = new C14297cl();
    private final int statusCode;
    private final long zzep;
    private final List<zzfs> zzer;

    public zzge(int i, long j, List<zzfs> list) {
        this.statusCode = i;
        this.zzep = j;
        this.zzer = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 2, this.statusCode);
        C12050a.m19111a(parcel, 3, this.zzep);
        C12050a.m19102a(parcel, 4, (List) this.zzer, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
