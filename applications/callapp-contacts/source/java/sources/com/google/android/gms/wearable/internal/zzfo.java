package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.wearable.AbstractC14361n;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzfo.class */
public final class zzfo extends AbstractSafeParcelable implements AbstractC14361n {
    public static final Parcelable.Creator<zzfo> CREATOR = new C14287cb();
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

    @Override // com.google.android.gms.wearable.AbstractC14361n
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 2, getId(), false);
        C12050a.m19104a(parcel, 3, getDisplayName(), false);
        C12050a.m19112a(parcel, 4, this.zzen);
        C12050a.m19101a(parcel, 5, isNearby());
        C12050a.m19095b(parcel, m19116a);
    }
}
