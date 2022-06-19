package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayk.class */
public final class zzayk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzayk> CREATOR = new C7223zl();

    /* renamed from: d */
    private ParcelFileDescriptor f33601d;

    /* renamed from: e */
    private final boolean f33602e;

    /* renamed from: f */
    private final boolean f33603f;

    /* renamed from: g */
    private final long f33604g;

    /* renamed from: h */
    private final boolean f33605h;

    public zzayk() {
        this(null, false, false, 0L, false);
    }

    public zzayk(ParcelFileDescriptor parcelFileDescriptor, boolean z, boolean z2, long j, boolean z3) {
        this.f33601d = parcelFileDescriptor;
        this.f33602e = z;
        this.f33603f = z2;
        this.f33604g = j;
        this.f33605h = z3;
    }

    /* renamed from: k0 */
    public final InputStream m8092k0() {
        synchronized (this) {
            ParcelFileDescriptor parcelFileDescriptor = this.f33601d;
            if (parcelFileDescriptor == null) {
                return null;
            }
            ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
            this.f33601d = null;
            return autoCloseInputStream;
        }
    }

    /* renamed from: l0 */
    final ParcelFileDescriptor m8091l0() {
        ParcelFileDescriptor parcelFileDescriptor;
        synchronized (this) {
            parcelFileDescriptor = this.f33601d;
        }
        return parcelFileDescriptor;
    }

    /* renamed from: m0 */
    public final boolean m8090m0() {
        boolean z;
        synchronized (this) {
            z = this.f33602e;
        }
        return z;
    }

    /* renamed from: n0 */
    public final boolean m8089n0() {
        boolean z;
        synchronized (this) {
            z = this.f33603f;
        }
        return z;
    }

    /* renamed from: o0 */
    public final long m8088o0() {
        long j;
        synchronized (this) {
            j = this.f33604g;
        }
        return j;
    }

    /* renamed from: p0 */
    public final boolean m8087p0() {
        boolean z;
        synchronized (this) {
            z = this.f33605h;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16931q(parcel, 2, m8091l0(), i, false);
        C6170a.m16945c(parcel, 3, m8090m0());
        C6170a.m16945c(parcel, 4, m8089n0());
        C6170a.m16934n(parcel, 5, m8088o0());
        C6170a.m16945c(parcel, 6, m8087p0());
        C6170a.m16946b(parcel, m16947a);
    }

    public final boolean zza() {
        boolean z;
        synchronized (this) {
            z = this.f33601d != null;
        }
        return z;
    }
}
