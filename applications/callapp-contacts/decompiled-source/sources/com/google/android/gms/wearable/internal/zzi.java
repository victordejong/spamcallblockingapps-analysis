package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzi.class */
public final class zzi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzi> CREATOR = new dl();
    private final String value;
    private byte zzbd;
    private final byte zzbe;

    public zzi(byte b2, byte b3, String str) {
        this.zzbd = b2;
        this.zzbe = b3;
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
        byte b2 = this.zzbd;
        byte b3 = this.zzbe;
        String str = this.value;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 73);
        sb.append("AmsEntityUpdateParcelable{, mEntityId=");
        sb.append((int) b2);
        sb.append(", mAttributeId=");
        sb.append((int) b3);
        sb.append(", mValue='");
        sb.append(str);
        sb.append('\'');
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzbd);
        a.a(parcel, 3, this.zzbe);
        a.a(parcel, 4, this.value, false);
        a.b(parcel, a2);
    }
}
