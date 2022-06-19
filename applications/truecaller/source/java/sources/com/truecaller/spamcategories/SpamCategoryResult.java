package com.truecaller.spamcategories;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.contactfeedback.model.Profile;
import io.agora.rtc.Constants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes12-dex2jar.jar:com/truecaller/spamcategories/SpamCategoryResult.class */
public final class SpamCategoryResult implements Parcelable {
    public static final Parcelable.Creator<SpamCategoryResult> CREATOR = new C4508a();

    /* renamed from: a */
    public final Long f14923a;

    /* renamed from: b */
    public final String f14924b;

    /* renamed from: c */
    public final boolean f14925c;

    /* renamed from: d */
    public final String f14926d;

    /* renamed from: e */
    public final boolean f14927e;

    /* renamed from: f */
    public final boolean f14928f;

    /* renamed from: g */
    public final Profile f14929g;

    /* renamed from: com.truecaller.spamcategories.SpamCategoryResult$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/spamcategories/SpamCategoryResult$a.class */
    public static final class C4508a implements Parcelable.Creator<SpamCategoryResult> {
        @Override // android.os.Parcelable.Creator
        public SpamCategoryResult createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new SpamCategoryResult(parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null, parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, (Profile) parcel.readParcelable(SpamCategoryResult.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public SpamCategoryResult[] newArray(int i) {
            return new SpamCategoryResult[i];
        }
    }

    public SpamCategoryResult() {
        this(null, null, false, null, false, false, null, Constants.ERR_WATERMARKR_INFO);
    }

    public SpamCategoryResult(Long l, String str, boolean z, String str2, boolean z2, boolean z3, Profile profile) {
        this.f14923a = l;
        this.f14924b = str;
        this.f14925c = z;
        this.f14926d = str2;
        this.f14927e = z2;
        this.f14928f = z3;
        this.f14929g = profile;
    }

    public /* synthetic */ SpamCategoryResult(Long l, String str, boolean z, String str2, boolean z2, boolean z3, Profile profile, int i) {
        this(null, null, (i & 4) != 0 ? false : z, null, (i & 16) != 0 ? false : z2, (i & 32) != 0 ? false : z3, null);
    }

    /* renamed from: a */
    public static SpamCategoryResult m34735a(SpamCategoryResult spamCategoryResult, Long l, String str, boolean z, String str2, boolean z2, boolean z3, Profile profile, int i) {
        Profile profile2 = null;
        Long l2 = (i & 1) != 0 ? spamCategoryResult.f14923a : null;
        if ((i & 2) != 0) {
            str = spamCategoryResult.f14924b;
        }
        if ((i & 4) != 0) {
            z = spamCategoryResult.f14925c;
        }
        String str3 = (i & 8) != 0 ? spamCategoryResult.f14926d : null;
        if ((i & 16) != 0) {
            z2 = spamCategoryResult.f14927e;
        }
        if ((i & 32) != 0) {
            z3 = spamCategoryResult.f14928f;
        }
        if ((i & 64) != 0) {
            profile2 = spamCategoryResult.f14929g;
        }
        return new SpamCategoryResult(l2, str, z, str3, z2, z3, profile2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SpamCategoryResult)) {
                return false;
            }
            SpamCategoryResult spamCategoryResult = (SpamCategoryResult) obj;
            return l.a(this.f14923a, spamCategoryResult.f14923a) && l.a(this.f14924b, spamCategoryResult.f14924b) && this.f14925c == spamCategoryResult.f14925c && l.a(this.f14926d, spamCategoryResult.f14926d) && this.f14927e == spamCategoryResult.f14927e && this.f14928f == spamCategoryResult.f14928f && l.a(this.f14929g, spamCategoryResult.f14929g);
        }
        return true;
    }

    public int hashCode() {
        Long l = this.f14923a;
        int i = 0;
        int hashCode = l != null ? l.hashCode() : 0;
        String str = this.f14924b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        boolean z = this.f14925c;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        String str2 = this.f14926d;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        boolean z2 = this.f14927e;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        boolean z3 = this.f14928f;
        if (!z3) {
            i2 = z3 ? 1 : 0;
        }
        Profile profile = this.f14929g;
        if (profile != null) {
            i = profile.hashCode();
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + i3) * 31) + hashCode3) * 31) + i4) * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SpamCategoryResult(categoryId=");
        m8728C.append(this.f14923a);
        m8728C.append(", name=");
        m8728C.append(this.f14924b);
        m8728C.append(", isBusiness=");
        m8728C.append(this.f14925c);
        m8728C.append(", comment=");
        m8728C.append(this.f14926d);
        m8728C.append(", hasComment=");
        m8728C.append(this.f14927e);
        m8728C.append(", hasSuggestedName=");
        m8728C.append(this.f14928f);
        m8728C.append(", currentProfile=");
        m8728C.append(this.f14929g);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        Long l = this.f14923a;
        if (l != null) {
            parcel.writeInt(1);
            parcel.writeLong(l.longValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.f14924b);
        parcel.writeInt(this.f14925c ? 1 : 0);
        parcel.writeString(this.f14926d);
        parcel.writeInt(this.f14927e ? 1 : 0);
        parcel.writeInt(this.f14928f ? 1 : 0);
        parcel.writeParcelable(this.f14929g, i);
    }
}
