package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzfs.class */
public final class zzfs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfs> CREATOR = new cd();
    private final String label;
    private final String packageName;
    private final long zzep;

    public zzfs(String str, String str2, long j) {
        this.packageName = str;
        this.label = str2;
        this.zzep = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.packageName, false);
        a.a(parcel, 3, this.label, false);
        a.a(parcel, 4, this.zzep);
        a.b(parcel, a2);
    }
}
