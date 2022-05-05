package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p234c.C6784d;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/clearcut/zzc.class */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new C6784d();

    /* renamed from: a */
    public final boolean f6481a;

    /* renamed from: b */
    public final long f6482b;

    /* renamed from: c */
    public final long f6483c;

    public zzc(boolean z, long j, long j2) {
        this.f6481a = z;
        this.f6482b = j;
        this.f6483c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return this.f6481a == zzcVar.f6481a && this.f6482b == zzcVar.f6482b && this.f6483c == zzcVar.f6483c;
    }

    public final int hashCode() {
        return C7018s.m21296a(Boolean.valueOf(this.f6481a), Long.valueOf(this.f6482b), Long.valueOf(this.f6483c));
    }

    public final String toString() {
        return "CollectForDebugParcelable[skipPersistentStorage: " + this.f6481a + ",collectForDebugStartTimeMillis: " + this.f6482b + ",collectForDebugExpiryTimeMillis: " + this.f6483c + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21212a(parcel, 1, this.f6481a);
        C7031b.m21224a(parcel, 2, this.f6483c);
        C7031b.m21224a(parcel, 3, this.f6482b);
        C7031b.m21229a(parcel, a);
    }
}
