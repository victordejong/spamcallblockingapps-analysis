package com.google.android.gms.internal.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.clearcut.zzge;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzr.class */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f29332a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f29333b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f29334c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f29335d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final String f29336e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final boolean f29337f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final String f29338g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final boolean f29339h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final int f29340i;

    public zzr(String str, int i, int i2, String str2, String str3, String str4, boolean z, zzge.zzv.zzb zzbVar) {
        Preconditions.m17288a(str);
        this.f29332a = str;
        this.f29333b = i;
        this.f29334c = i2;
        this.f29338g = str2;
        this.f29335d = str3;
        this.f29336e = str4;
        this.f29337f = !z;
        this.f29339h = z;
        this.f29340i = zzbVar.zzc();
    }

    @SafeParcelable.Constructor
    public zzr(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) String str2, @SafeParcelable.Param(id = 6) String str3, @SafeParcelable.Param(id = 7) boolean z, @SafeParcelable.Param(id = 8) String str4, @SafeParcelable.Param(id = 9) boolean z2, @SafeParcelable.Param(id = 10) int i3) {
        this.f29332a = str;
        this.f29333b = i;
        this.f29334c = i2;
        this.f29335d = str2;
        this.f29336e = str3;
        this.f29337f = z;
        this.f29338g = str4;
        this.f29339h = z2;
        this.f29340i = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzr)) {
            return false;
        }
        zzr zzrVar = (zzr) obj;
        return Objects.m17295a(this.f29332a, zzrVar.f29332a) && this.f29333b == zzrVar.f29333b && this.f29334c == zzrVar.f29334c && Objects.m17295a(this.f29338g, zzrVar.f29338g) && Objects.m17295a(this.f29335d, zzrVar.f29335d) && Objects.m17295a(this.f29336e, zzrVar.f29336e) && this.f29337f == zzrVar.f29337f && this.f29339h == zzrVar.f29339h && this.f29340i == zzrVar.f29340i;
    }

    public final int hashCode() {
        return Objects.m17294a(this.f29332a, Integer.valueOf(this.f29333b), Integer.valueOf(this.f29334c), this.f29338g, this.f29335d, this.f29336e, Boolean.valueOf(this.f29337f), Boolean.valueOf(this.f29339h), Integer.valueOf(this.f29340i));
    }

    public final String toString() {
        return "PlayLoggerContext[package=" + this.f29332a + ",packageVersionCode=" + this.f29333b + ",logSource=" + this.f29334c + ",logSourceName=" + this.f29338g + ",uploadAccount=" + this.f29335d + ",loggingId=" + this.f29336e + ",logAndroidId=" + this.f29337f + ",isAnonymous=" + this.f29339h + ",qosTier=" + this.f29340i + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f29332a, false);
        SafeParcelWriter.m17231a(parcel, 3, this.f29333b);
        SafeParcelWriter.m17231a(parcel, 4, this.f29334c);
        SafeParcelWriter.m17221a(parcel, 5, this.f29335d, false);
        SafeParcelWriter.m17221a(parcel, 6, this.f29336e, false);
        SafeParcelWriter.m17218a(parcel, 7, this.f29337f);
        SafeParcelWriter.m17221a(parcel, 8, this.f29338g, false);
        SafeParcelWriter.m17218a(parcel, 9, this.f29339h);
        SafeParcelWriter.m17231a(parcel, 10, this.f29340i);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
