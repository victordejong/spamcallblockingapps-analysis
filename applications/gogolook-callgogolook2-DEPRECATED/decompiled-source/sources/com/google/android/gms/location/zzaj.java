package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8847t;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzaj.class */
public final class zzaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaj> CREATOR = new C8847t();

    /* renamed from: a */
    public final int f6967a;

    /* renamed from: b */
    public final int f6968b;

    /* renamed from: c */
    public final long f6969c;

    /* renamed from: d */
    public final long f6970d;

    public zzaj(int i, int i2, long j, long j2) {
        this.f6967a = i;
        this.f6968b = i2;
        this.f6969c = j;
        this.f6970d = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzaj.class != obj.getClass()) {
            return false;
        }
        zzaj zzajVar = (zzaj) obj;
        return this.f6967a == zzajVar.f6967a && this.f6968b == zzajVar.f6968b && this.f6969c == zzajVar.f6969c && this.f6970d == zzajVar.f6970d;
    }

    public final int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f6968b), Integer.valueOf(this.f6967a), Long.valueOf(this.f6970d), Long.valueOf(this.f6969c));
    }

    public final String toString() {
        return "NetworkLocationStatus: Wifi status: " + this.f6967a + " Cell status: " + this.f6968b + " elapsed time NS: " + this.f6970d + " system time ms: " + this.f6969c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6967a);
        C7031b.m21225a(parcel, 2, this.f6968b);
        C7031b.m21224a(parcel, 3, this.f6969c);
        C7031b.m21224a(parcel, 4, this.f6970d);
        C7031b.m21229a(parcel, a);
    }
}
