package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.wearable.n;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzfo.class */
public final class zzfo extends AbstractSafeParcelable implements n {
    public static final Parcelable.Creator<zzfo> CREATOR = new cb();
    private final String zzbk;
    private final String zzdm;
    private final int zzen;
    private final boolean zzeo;

    public zzfo(String str, String str2, int i, boolean z) {
        this.zzdm = str;
        this.zzbk = str2;
        this.zzen = i;
        this.zzeo = z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzfo)) {
            return false;
        }
        return ((zzfo) obj).zzdm.equals(this.zzdm);
    }

    public final String getDisplayName() {
        return this.zzbk;
    }

    @Override // com.google.android.gms.wearable.n
    public final String getId() {
        return this.zzdm;
    }

    public final int hashCode() {
        return this.zzdm.hashCode();
    }

    public final boolean isNearby() {
        return this.zzeo;
    }

    public final String toString() {
        String str = this.zzbk;
        String str2 = this.zzdm;
        int i = this.zzen;
        boolean z = this.zzeo;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 45 + String.valueOf(str2).length());
        sb.append("Node{");
        sb.append(str);
        sb.append(", id=");
        sb.append(str2);
        sb.append(", hops=");
        sb.append(i);
        sb.append(", isNearby=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, getId(), false);
        a.a(parcel, 3, getDisplayName(), false);
        a.a(parcel, 4, this.zzen);
        a.a(parcel, 5, isNearby());
        a.b(parcel, a2);
    }
}
