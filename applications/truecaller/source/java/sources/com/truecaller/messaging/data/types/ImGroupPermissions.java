package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ImGroupPermissions.class */
public final class ImGroupPermissions implements Parcelable {
    public static final Parcelable.Creator<ImGroupPermissions> CREATOR = new C4200a();

    /* renamed from: a */
    public final int f13336a;

    /* renamed from: b */
    public final int f13337b;

    /* renamed from: c */
    public final int f13338c;

    /* renamed from: d */
    public final int f13339d;

    /* renamed from: com.truecaller.messaging.data.types.ImGroupPermissions$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ImGroupPermissions$a.class */
    public static final class C4200a implements Parcelable.Creator<ImGroupPermissions> {
        @Override // android.os.Parcelable.Creator
        public ImGroupPermissions createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new ImGroupPermissions(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public ImGroupPermissions[] newArray(int i) {
            return new ImGroupPermissions[i];
        }
    }

    public ImGroupPermissions(int i, int i2, int i3, int i4) {
        this.f13336a = i;
        this.f13337b = i2;
        this.f13338c = i3;
        this.f13339d = i4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ImGroupPermissions)) {
                return false;
            }
            ImGroupPermissions imGroupPermissions = (ImGroupPermissions) obj;
            return this.f13336a == imGroupPermissions.f13336a && this.f13337b == imGroupPermissions.f13337b && this.f13338c == imGroupPermissions.f13338c && this.f13339d == imGroupPermissions.f13339d;
        }
        return true;
    }

    public int hashCode() {
        return (((((this.f13336a * 31) + this.f13337b) * 31) + this.f13338c) * 31) + this.f13339d;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ImGroupPermissions(actions=");
        m8728C.append(this.f13336a);
        m8728C.append(", roleUpdateRestrictionMask=");
        m8728C.append(this.f13337b);
        m8728C.append(", roleUpdateMask=");
        m8728C.append(this.f13338c);
        m8728C.append(", selfRoleUpdateMask=");
        return C22128a.m8697J2(m8728C, this.f13339d, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeInt(this.f13336a);
        parcel.writeInt(this.f13337b);
        parcel.writeInt(this.f13338c);
        parcel.writeInt(this.f13339d);
    }
}
