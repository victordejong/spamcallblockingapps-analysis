package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8820d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzj.class */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new C8820d0();

    /* renamed from: a */
    public boolean f6974a;

    /* renamed from: b */
    public long f6975b;

    /* renamed from: c */
    public float f6976c;

    /* renamed from: d */
    public long f6977d;

    /* renamed from: e */
    public int f6978e;

    public zzj() {
        this(true, 50L, 0.0f, Long.MAX_VALUE, Integer.MAX_VALUE);
    }

    public zzj(boolean z, long j, float f, long j2, int i) {
        this.f6974a = z;
        this.f6975b = j;
        this.f6976c = f;
        this.f6977d = j2;
        this.f6978e = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzj)) {
            return false;
        }
        zzj zzjVar = (zzj) obj;
        return this.f6974a == zzjVar.f6974a && this.f6975b == zzjVar.f6975b && Float.compare(this.f6976c, zzjVar.f6976c) == 0 && this.f6977d == zzjVar.f6977d && this.f6978e == zzjVar.f6978e;
    }

    public final int hashCode() {
        return C7018s.m21296a(Boolean.valueOf(this.f6974a), Long.valueOf(this.f6975b), Float.valueOf(this.f6976c), Long.valueOf(this.f6977d), Integer.valueOf(this.f6978e));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DeviceOrientationRequest[mShouldUseMag=");
        sb.append(this.f6974a);
        sb.append(" mMinimumSamplingPeriodMs=");
        sb.append(this.f6975b);
        sb.append(" mSmallestAngleChangeRadians=");
        sb.append(this.f6976c);
        long j = this.f6977d;
        if (j != Long.MAX_VALUE) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(j - elapsedRealtime);
            sb.append("ms");
        }
        if (this.f6978e != Integer.MAX_VALUE) {
            sb.append(" num=");
            sb.append(this.f6978e);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21212a(parcel, 1, this.f6974a);
        C7031b.m21224a(parcel, 2, this.f6975b);
        C7031b.m21226a(parcel, 3, this.f6976c);
        C7031b.m21224a(parcel, 4, this.f6977d);
        C7031b.m21225a(parcel, 5, this.f6978e);
        C7031b.m21229a(parcel, a);
    }
}
