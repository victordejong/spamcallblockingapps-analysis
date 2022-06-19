package com.truecaller.voip;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/VoipUserBadge.class */
public final class VoipUserBadge implements Parcelable {
    public static final Parcelable.Creator<VoipUserBadge> CREATOR = new C4791a();

    /* renamed from: a */
    public final boolean f16293a;

    /* renamed from: b */
    public final boolean f16294b;

    /* renamed from: c */
    public final boolean f16295c;

    /* renamed from: d */
    public final boolean f16296d;

    /* renamed from: e */
    public final boolean f16297e;

    /* renamed from: f */
    public final boolean f16298f;

    /* renamed from: com.truecaller.voip.VoipUserBadge$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/VoipUserBadge$a.class */
    public static final class C4791a implements Parcelable.Creator<VoipUserBadge> {
        @Override // android.os.Parcelable.Creator
        public VoipUserBadge createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new VoipUserBadge(parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public VoipUserBadge[] newArray(int i) {
            return new VoipUserBadge[i];
        }
    }

    public VoipUserBadge() {
        this(false, false, false, false, false, false, 63);
    }

    public VoipUserBadge(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f16293a = z;
        this.f16294b = z2;
        this.f16295c = z3;
        this.f16296d = z4;
        this.f16297e = z5;
        this.f16298f = z6;
    }

    public /* synthetic */ VoipUserBadge(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? false : z4, (i & 16) != 0 ? false : z5, (i & 32) != 0 ? false : z6);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipUserBadge)) {
                return false;
            }
            VoipUserBadge voipUserBadge = (VoipUserBadge) obj;
            return this.f16293a == voipUserBadge.f16293a && this.f16294b == voipUserBadge.f16294b && this.f16295c == voipUserBadge.f16295c && this.f16296d == voipUserBadge.f16296d && this.f16297e == voipUserBadge.f16297e && this.f16298f == voipUserBadge.f16298f;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f16293a;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.f16294b;
        boolean z4 = z3;
        if (z3) {
            z4 = true;
        }
        boolean z5 = this.f16295c;
        boolean z6 = z5;
        if (z5) {
            z6 = true;
        }
        boolean z7 = this.f16296d;
        boolean z8 = z7;
        if (z7) {
            z8 = true;
        }
        boolean z9 = this.f16297e;
        boolean z10 = z9;
        if (z9) {
            z10 = true;
        }
        boolean z11 = this.f16298f;
        if (!z11) {
            i = z11;
        }
        return ((((((((((z2 ? 1 : 0) * 31) + (z4 ? 1 : 0)) * 31) + (z6 ? 1 : 0)) * 31) + (z8 ? 1 : 0)) * 31) + (z10 ? 1 : 0)) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipUserBadge(isSpam=");
        m8728C.append(this.f16293a);
        m8728C.append(", isPremium=");
        m8728C.append(this.f16294b);
        m8728C.append(", isGold=");
        m8728C.append(this.f16295c);
        m8728C.append(", isPriority=");
        m8728C.append(this.f16296d);
        m8728C.append(", isCredPrivilege=");
        m8728C.append(this.f16297e);
        m8728C.append(", isVerifiedBusiness=");
        return C22128a.m8590o(m8728C, this.f16298f, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeInt(this.f16293a ? 1 : 0);
        parcel.writeInt(this.f16294b ? 1 : 0);
        parcel.writeInt(this.f16295c ? 1 : 0);
        parcel.writeInt(this.f16296d ? 1 : 0);
        parcel.writeInt(this.f16297e ? 1 : 0);
        parcel.writeInt(this.f16298f ? 1 : 0);
    }
}
