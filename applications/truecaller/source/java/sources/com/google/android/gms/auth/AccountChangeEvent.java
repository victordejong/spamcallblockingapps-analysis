package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/AccountChangeEvent.class */
public class AccountChangeEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new zza();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5323a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final long f5324b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f5325c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final int f5326d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final int f5327e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final String f5328f;

    @SafeParcelable.Constructor
    public AccountChangeEvent(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 6) String str2) {
        this.f5323a = i;
        this.f5324b = j;
        Objects.requireNonNull(str, "null reference");
        this.f5325c = str;
        this.f5326d = i2;
        this.f5327e = i3;
        this.f5328f = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AccountChangeEvent)) {
            return false;
        }
        AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
        return this.f5323a == accountChangeEvent.f5323a && this.f5324b == accountChangeEvent.f5324b && com.google.android.gms.common.internal.Objects.m38910a(this.f5325c, accountChangeEvent.f5325c) && this.f5326d == accountChangeEvent.f5326d && this.f5327e == accountChangeEvent.f5327e && com.google.android.gms.common.internal.Objects.m38910a(this.f5328f, accountChangeEvent.f5328f);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f5323a), Long.valueOf(this.f5324b), this.f5325c, Integer.valueOf(this.f5326d), Integer.valueOf(this.f5327e), this.f5328f});
    }

    public String toString() {
        int i = this.f5326d;
        String str = i != 1 ? i != 2 ? i != 3 ? i != 4 ? "UNKNOWN" : "RENAMED_TO" : "RENAMED_FROM" : "REMOVED" : "ADDED";
        String str2 = this.f5325c;
        String str3 = this.f5328f;
        int i2 = this.f5327e;
        StringBuilder m8736A = C22128a.m8736A(C22128a.m8623f2(str3, str.length() + C22128a.m8623f2(str2, 91)), "AccountChangeEvent {accountName = ", str2, ", changeType = ", str);
        m8736A.append(", changeData = ");
        m8736A.append(str3);
        m8736A.append(", eventIndex = ");
        m8736A.append(i2);
        m8736A.append("}");
        return m8736A.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5323a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        long j = this.f5324b;
        parcel.writeInt(524290);
        parcel.writeLong(j);
        SafeParcelWriter.m38846q(parcel, 3, this.f5325c, false);
        int i3 = this.f5326d;
        parcel.writeInt(262148);
        parcel.writeInt(i3);
        int i4 = this.f5327e;
        parcel.writeInt(262149);
        parcel.writeInt(i4);
        SafeParcelWriter.m38846q(parcel, 6, this.f5328f, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
