package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzi.class */
public final class zzi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzi> CREATOR = new C14324dl();
    private final String value;
    private byte zzbd;
    private final byte zzbe;

    public zzi(byte b, byte b2, String str) {
        this.zzbd = b;
        this.zzbe = b2;
        this.value = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzi zziVar = (zzi) obj;
        return this.zzbd == zziVar.zzbd && this.zzbe == zziVar.zzbe && this.value.equals(zziVar.value);
    }

    public final int hashCode() {
        return ((((this.zzbd + 31) * 31) + this.zzbe) * 31) + this.value.hashCode();
    }

    public final String toString() {
        byte b = this.zzbd;
        byte b2 = this.zzbe;
        String str = this.value;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 73);
        sb.append("AmsEntityUpdateParcelable{, mEntityId=");
        sb.append((int) b);
        sb.append(", mAttributeId=");
        sb.append((int) b2);
        sb.append(", mValue='");
        sb.append(str);
        sb.append('\'');
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19115a(parcel, 2, this.zzbd);
        C12050a.m19115a(parcel, 3, this.zzbe);
        C12050a.m19104a(parcel, 4, this.value, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
