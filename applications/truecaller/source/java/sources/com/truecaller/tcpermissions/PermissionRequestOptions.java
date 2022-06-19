package com.truecaller.tcpermissions;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes14-dex2jar.jar:com/truecaller/tcpermissions/PermissionRequestOptions.class */
public final class PermissionRequestOptions implements Parcelable {
    public static final Parcelable.Creator<PermissionRequestOptions> CREATOR = new C4615a();

    /* renamed from: a */
    public final boolean f15310a;

    /* renamed from: b */
    public final boolean f15311b;

    /* renamed from: c */
    public final Integer f15312c;

    /* renamed from: com.truecaller.tcpermissions.PermissionRequestOptions$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/tcpermissions/PermissionRequestOptions$a.class */
    public static final class C4615a implements Parcelable.Creator<PermissionRequestOptions> {
        @Override // android.os.Parcelable.Creator
        public PermissionRequestOptions createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            boolean z = true;
            boolean z2 = parcel.readInt() != 0;
            if (parcel.readInt() == 0) {
                z = false;
            }
            return new PermissionRequestOptions(z2, z, parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public PermissionRequestOptions[] newArray(int i) {
            return new PermissionRequestOptions[i];
        }
    }

    public PermissionRequestOptions() {
        this(false, false, null, 7);
    }

    public PermissionRequestOptions(boolean z, boolean z2, Integer num) {
        this.f15310a = z;
        this.f15311b = z2;
        this.f15312c = num;
    }

    public PermissionRequestOptions(boolean z, boolean z2, Integer num, int i) {
        z = (i & 1) != 0 ? true : z;
        z2 = (i & 2) != 0 ? true : z2;
        num = (i & 4) != 0 ? null : num;
        this.f15310a = z;
        this.f15311b = z2;
        this.f15312c = num;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PermissionRequestOptions)) {
                return false;
            }
            PermissionRequestOptions permissionRequestOptions = (PermissionRequestOptions) obj;
            return this.f15310a == permissionRequestOptions.f15310a && this.f15311b == permissionRequestOptions.f15311b && l.a(this.f15312c, permissionRequestOptions.f15312c);
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f15310a;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.f15311b;
        if (!z3) {
            i = z3;
        }
        Integer num = this.f15312c;
        return ((((z2 ? 1 : 0) * 31) + i) * 31) + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PermissionRequestOptions(showPermissionSettings=");
        m8728C.append(this.f15310a);
        m8728C.append(", showAccessContacts=");
        m8728C.append(this.f15311b);
        m8728C.append(", permissionsDeniedExplanation=");
        return C22128a.m8689L2(m8728C, this.f15312c, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        l.e(parcel, "parcel");
        parcel.writeInt(this.f15310a ? 1 : 0);
        parcel.writeInt(this.f15311b ? 1 : 0);
        Integer num = this.f15312c;
        if (num != null) {
            parcel.writeInt(1);
            i2 = num.intValue();
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
    }
}
