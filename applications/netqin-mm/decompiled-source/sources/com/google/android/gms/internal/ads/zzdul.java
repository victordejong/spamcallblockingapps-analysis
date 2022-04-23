package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzcf;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdul.class */
public final class zzdul extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdul> CREATOR = new zzduo();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f27843a;
    @SafeParcelable.Field

    /* renamed from: b */
    public zzcf.zza f27844b = null;

    /* renamed from: c */
    public byte[] f27845c;

    @SafeParcelable.Constructor
    public zzdul(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) byte[] bArr) {
        this.f27843a = i;
        this.f27845c = bArr;
        m13158i();
    }

    /* renamed from: f */
    public final zzcf.zza m13159f() {
        if (!(this.f27844b != null)) {
            try {
                this.f27844b = zzcf.zza.m14612a(this.f27845c, zzejm.m12417b());
                this.f27845c = null;
            } catch (zzekj e) {
                throw new IllegalStateException(e);
            }
        }
        m13158i();
        return this.f27844b;
    }

    /* renamed from: i */
    public final void m13158i() {
        if (this.f27844b == null && this.f27845c != null) {
            return;
        }
        if (this.f27844b != null && this.f27845c == null) {
            return;
        }
        if (this.f27844b != null && this.f27845c != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        } else if (this.f27844b == null && this.f27845c == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        } else {
            throw new IllegalStateException("Impossible");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f27843a);
        byte[] bArr = this.f27845c;
        if (bArr == null) {
            bArr = this.f27844b.mo12349c();
        }
        SafeParcelWriter.m17217a(parcel, 2, bArr, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
