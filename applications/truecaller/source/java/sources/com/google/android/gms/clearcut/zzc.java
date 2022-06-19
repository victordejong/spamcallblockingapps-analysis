package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/clearcut/zzc.class */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new zzd();
    @SafeParcelable.Field

    /* renamed from: a */
    public final boolean f5601a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final long f5602b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final long f5603c;

    @SafeParcelable.Constructor
    public zzc(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 2) long j2) {
        this.f5601a = z;
        this.f5602b = j;
        this.f5603c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return this.f5601a == zzcVar.f5601a && this.f5602b == zzcVar.f5602b && this.f5603c == zzcVar.f5603c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f5601a), Long.valueOf(this.f5602b), Long.valueOf(this.f5603c)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CollectForDebugParcelable[skipPersistentStorage: ");
        sb.append(this.f5601a);
        sb.append(",collectForDebugStartTimeMillis: ");
        sb.append(this.f5602b);
        sb.append(",collectForDebugExpiryTimeMillis: ");
        return C22128a.m8693K2(sb, this.f5603c, "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        boolean z = this.f5601a;
        parcel.writeInt(262145);
        parcel.writeInt(z ? 1 : 0);
        long j = this.f5603c;
        parcel.writeInt(524290);
        parcel.writeLong(j);
        long j2 = this.f5602b;
        parcel.writeInt(524291);
        parcel.writeLong(j2);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
