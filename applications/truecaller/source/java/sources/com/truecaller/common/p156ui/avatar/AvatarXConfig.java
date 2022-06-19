package com.truecaller.common.p156ui.avatar;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: com.truecaller.common.ui.avatar.AvatarXConfig */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/avatar/AvatarXConfig.class */
public final class AvatarXConfig implements Parcelable {
    public static final Parcelable.Creator<AvatarXConfig> CREATOR = new C3705a();

    /* renamed from: a */
    public final Uri f11100a;

    /* renamed from: b */
    public final String f11101b;

    /* renamed from: c */
    public final String f11102c;

    /* renamed from: d */
    public final String f11103d;

    /* renamed from: e */
    public final boolean f11104e;

    /* renamed from: f */
    public final boolean f11105f;

    /* renamed from: g */
    public final boolean f11106g;

    /* renamed from: h */
    public final boolean f11107h;

    /* renamed from: i */
    public final boolean f11108i;

    /* renamed from: j */
    public final boolean f11109j;

    /* renamed from: k */
    public final boolean f11110k;

    /* renamed from: l */
    public final boolean f11111l;

    /* renamed from: m */
    public final boolean f11112m;

    /* renamed from: n */
    public final boolean f11113n;

    /* renamed from: o */
    public final Integer f11114o;

    /* renamed from: p */
    public final boolean f11115p;

    /* renamed from: com.truecaller.common.ui.avatar.AvatarXConfig$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/avatar/AvatarXConfig$a.class */
    public static final class C3705a implements Parcelable.Creator<AvatarXConfig> {
        @Override // android.os.Parcelable.Creator
        public AvatarXConfig createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new AvatarXConfig((Uri) parcel.readParcelable(AvatarXConfig.class.getClassLoader()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public AvatarXConfig[] newArray(int i) {
            return new AvatarXConfig[i];
        }
    }

    public AvatarXConfig() {
        this(null, null, null, null, false, false, false, false, false, false, false, false, false, false, null, false, 65535);
    }

    public AvatarXConfig(Uri uri, String str, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, Integer num, boolean z11) {
        this.f11100a = uri;
        this.f11101b = str;
        this.f11102c = str2;
        this.f11103d = str3;
        this.f11104e = z;
        this.f11105f = z2;
        this.f11106g = z3;
        this.f11107h = z4;
        this.f11108i = z5;
        this.f11109j = z6;
        this.f11110k = z7;
        this.f11111l = z8;
        this.f11112m = z9;
        this.f11113n = z10;
        this.f11114o = num;
        this.f11115p = z11;
    }

    public /* synthetic */ AvatarXConfig(Uri uri, String str, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, Integer num, boolean z11, int i) {
        this((i & 1) != 0 ? null : uri, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? false : z, (i & 32) != 0 ? false : z2, (i & 64) != 0 ? false : z3, (i & 128) != 0 ? false : z4, (i & 256) != 0 ? false : z5, (i & 512) != 0 ? false : z6, (i & 1024) != 0 ? false : z7, (i & 2048) != 0 ? false : z8, (i & 4096) != 0 ? false : z9, (i & 8192) != 0 ? false : z10, null, (i & 32768) != 0 ? false : z11);
    }

    public AvatarXConfig(Uri uri, boolean z) {
        this(uri, null, null, null, false, z, false, false, false, false, false, false, false, false, null, false, 65498);
    }

    /* renamed from: a */
    public static AvatarXConfig m35701a(AvatarXConfig avatarXConfig, Uri uri, String str, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, Integer num, boolean z11, int i) {
        String str4 = null;
        Uri uri2 = (i & 1) != 0 ? avatarXConfig.f11100a : null;
        if ((i & 2) != 0) {
            str = avatarXConfig.f11101b;
        }
        String str5 = (i & 4) != 0 ? avatarXConfig.f11102c : null;
        if ((i & 8) != 0) {
            str4 = avatarXConfig.f11103d;
        }
        if ((i & 16) != 0) {
            z = avatarXConfig.f11104e;
        }
        if ((i & 32) != 0) {
            z2 = avatarXConfig.f11105f;
        }
        if ((i & 64) != 0) {
            z3 = avatarXConfig.f11106g;
        }
        if ((i & 128) != 0) {
            z4 = avatarXConfig.f11107h;
        }
        if ((i & 256) != 0) {
            z5 = avatarXConfig.f11108i;
        }
        if ((i & 512) != 0) {
            z6 = avatarXConfig.f11109j;
        }
        if ((i & 1024) != 0) {
            z7 = avatarXConfig.f11110k;
        }
        if ((i & 2048) != 0) {
            z8 = avatarXConfig.f11111l;
        }
        if ((i & 4096) != 0) {
            z9 = avatarXConfig.f11112m;
        }
        if ((i & 8192) != 0) {
            z10 = avatarXConfig.f11113n;
        }
        if ((i & 16384) != 0) {
            num = avatarXConfig.f11114o;
        }
        if ((i & 32768) != 0) {
            z11 = avatarXConfig.f11115p;
        }
        Objects.requireNonNull(avatarXConfig);
        return new AvatarXConfig(uri2, str, str5, str4, z, z2, z3, z4, z5, z6, z7, z8, z9, z10, num, z11);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AvatarXConfig)) {
                return false;
            }
            AvatarXConfig avatarXConfig = (AvatarXConfig) obj;
            return l.a(this.f11100a, avatarXConfig.f11100a) && l.a(this.f11101b, avatarXConfig.f11101b) && l.a(this.f11102c, avatarXConfig.f11102c) && l.a(this.f11103d, avatarXConfig.f11103d) && this.f11104e == avatarXConfig.f11104e && this.f11105f == avatarXConfig.f11105f && this.f11106g == avatarXConfig.f11106g && this.f11107h == avatarXConfig.f11107h && this.f11108i == avatarXConfig.f11108i && this.f11109j == avatarXConfig.f11109j && this.f11110k == avatarXConfig.f11110k && this.f11111l == avatarXConfig.f11111l && this.f11112m == avatarXConfig.f11112m && this.f11113n == avatarXConfig.f11113n && l.a(this.f11114o, avatarXConfig.f11114o) && this.f11115p == avatarXConfig.f11115p;
        }
        return true;
    }

    public int hashCode() {
        Uri uri = this.f11100a;
        int i = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        String str = this.f11101b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f11102c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f11103d;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        boolean z = this.f11104e;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.f11105f;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        boolean z3 = this.f11106g;
        int i5 = z3 ? 1 : 0;
        if (z3) {
            i5 = 1;
        }
        boolean z4 = this.f11107h;
        int i6 = z4 ? 1 : 0;
        if (z4) {
            i6 = 1;
        }
        boolean z5 = this.f11108i;
        int i7 = z5 ? 1 : 0;
        if (z5) {
            i7 = 1;
        }
        boolean z6 = this.f11109j;
        int i8 = z6 ? 1 : 0;
        if (z6) {
            i8 = 1;
        }
        boolean z7 = this.f11110k;
        int i9 = z7 ? 1 : 0;
        if (z7) {
            i9 = 1;
        }
        boolean z8 = this.f11111l;
        int i10 = z8 ? 1 : 0;
        if (z8) {
            i10 = 1;
        }
        boolean z9 = this.f11112m;
        int i11 = z9 ? 1 : 0;
        if (z9) {
            i11 = 1;
        }
        boolean z10 = this.f11113n;
        int i12 = z10 ? 1 : 0;
        if (z10) {
            i12 = 1;
        }
        Integer num = this.f11114o;
        if (num != null) {
            i = num.hashCode();
        }
        boolean z11 = this.f11115p;
        if (!z11) {
            i2 = z11 ? 1 : 0;
        }
        return (((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AvatarXConfig(photoUri=");
        m8728C.append(this.f11100a);
        m8728C.append(", normalizedAddress=");
        m8728C.append(this.f11101b);
        m8728C.append(", groupId=");
        m8728C.append(this.f11102c);
        m8728C.append(", letter=");
        m8728C.append(this.f11103d);
        m8728C.append(", isSpam=");
        m8728C.append(this.f11104e);
        m8728C.append(", isGroup=");
        m8728C.append(this.f11105f);
        m8728C.append(", isAlphanumeric=");
        m8728C.append(this.f11106g);
        m8728C.append(", showTruecallerBadge=");
        m8728C.append(this.f11107h);
        m8728C.append(", isPremium=");
        m8728C.append(this.f11108i);
        m8728C.append(", isGold=");
        m8728C.append(this.f11109j);
        m8728C.append(", isVerifiedBusiness=");
        m8728C.append(this.f11110k);
        m8728C.append(", isCredPrivilege=");
        m8728C.append(this.f11111l);
        m8728C.append(", isPriority=");
        m8728C.append(this.f11112m);
        m8728C.append(", displayAvatarEvenIfSpammerOrBlocked=");
        m8728C.append(this.f11113n);
        m8728C.append(", avatarBorderColor=");
        m8728C.append(this.f11114o);
        m8728C.append(", isBlocked=");
        return C22128a.m8590o(m8728C, this.f11115p, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        l.e(parcel, "parcel");
        parcel.writeParcelable(this.f11100a, i);
        parcel.writeString(this.f11101b);
        parcel.writeString(this.f11102c);
        parcel.writeString(this.f11103d);
        parcel.writeInt(this.f11104e ? 1 : 0);
        parcel.writeInt(this.f11105f ? 1 : 0);
        parcel.writeInt(this.f11106g ? 1 : 0);
        parcel.writeInt(this.f11107h ? 1 : 0);
        parcel.writeInt(this.f11108i ? 1 : 0);
        parcel.writeInt(this.f11109j ? 1 : 0);
        parcel.writeInt(this.f11110k ? 1 : 0);
        parcel.writeInt(this.f11111l ? 1 : 0);
        parcel.writeInt(this.f11112m ? 1 : 0);
        parcel.writeInt(this.f11113n ? 1 : 0);
        Integer num = this.f11114o;
        if (num != null) {
            parcel.writeInt(1);
            i2 = num.intValue();
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeInt(this.f11115p ? 1 : 0);
    }
}
