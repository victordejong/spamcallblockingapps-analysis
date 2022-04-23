package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.wearable.j;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/DataItemAssetParcelable.class */
public class DataItemAssetParcelable extends AbstractSafeParcelable implements ReflectedParcelable, j {
    public static final Parcelable.Creator<DataItemAssetParcelable> CREATOR = new am();
    private final String zzdm;
    private final String zzdn;

    public DataItemAssetParcelable(j jVar) {
        this.zzdm = (String) o.a(jVar.getId());
        this.zzdn = (String) o.a(jVar.getDataItemKey());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataItemAssetParcelable(String str, String str2) {
        this.zzdm = str;
        this.zzdn = str2;
    }

    public /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    @Override // com.google.android.gms.wearable.j
    public String getDataItemKey() {
        return this.zzdn;
    }

    @Override // com.google.android.gms.wearable.j
    public String getId() {
        return this.zzdm;
    }

    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DataItemAssetParcelable[");
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        if (this.zzdm == null) {
            sb.append(",noid");
        } else {
            sb.append(",");
            sb.append(this.zzdm);
        }
        sb.append(", key=");
        sb.append(this.zzdn);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, getId(), false);
        a.a(parcel, 3, getDataItemKey(), false);
        a.b(parcel, a2);
    }
}
