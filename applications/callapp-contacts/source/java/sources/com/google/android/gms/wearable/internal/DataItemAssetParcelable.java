package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.wearable.AbstractC14354j;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/DataItemAssetParcelable.class */
public class DataItemAssetParcelable extends AbstractSafeParcelable implements ReflectedParcelable, AbstractC14354j {
    public static final Parcelable.Creator<DataItemAssetParcelable> CREATOR = new C14244am();
    private final String zzdm;
    private final String zzdn;

    public DataItemAssetParcelable(AbstractC14354j abstractC14354j) {
        this.zzdm = (String) C12045o.m19162a(abstractC14354j.getId());
        this.zzdn = (String) C12045o.m19162a(abstractC14354j.getDataItemKey());
    }

    public DataItemAssetParcelable(String str, String str2) {
        this.zzdm = str;
        this.zzdn = str2;
    }

    public /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    @Override // com.google.android.gms.wearable.AbstractC14354j
    public String getDataItemKey() {
        return this.zzdn;
    }

    @Override // com.google.android.gms.wearable.AbstractC14354j
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 2, getId(), false);
        C12050a.m19104a(parcel, 3, getDataItemKey(), false);
        C12050a.m19095b(parcel, m19116a);
    }
}
