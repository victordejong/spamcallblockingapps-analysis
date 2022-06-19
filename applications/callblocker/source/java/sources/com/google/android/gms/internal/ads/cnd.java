package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cnd.class */
public final class cnd extends AbstractC2663a {
    public static final Parcelable.Creator<cnd> CREATOR = new cnc();

    /* renamed from: a */
    private final int f13385a;

    /* renamed from: b */
    private atw.C2798a f13386b = null;

    /* renamed from: c */
    private byte[] f13387c;

    public cnd(int i, byte[] bArr) {
        this.f13385a = i;
        this.f13387c = bArr;
        m11000b();
    }

    /* renamed from: b */
    private final void m11000b() {
        if (this.f13386b != null || this.f13387c == null) {
            if (this.f13386b != null && this.f13387c == null) {
                return;
            }
            if (this.f13386b != null && this.f13387c != null) {
                throw new IllegalStateException("Invalid internal representation - full");
            }
            if (this.f13386b != null || this.f13387c != null) {
                throw new IllegalStateException("Impossible");
            }
            throw new IllegalStateException("Invalid internal representation - empty");
        }
    }

    /* renamed from: a */
    public final atw.C2798a m11001a() {
        if (!(this.f13386b != null)) {
            try {
                this.f13386b = atw.C2798a.m12688a(this.f13387c, dci.m10136b());
                this.f13387c = null;
            } catch (zzeco e) {
                throw new IllegalStateException(e);
            }
        }
        m11000b();
        return this.f13386b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f13385a);
        C2664b.m13929a(parcel, 2, this.f13387c != null ? this.f13387c : this.f13386b.mo9984l(), false);
        C2664b.m13943a(parcel, m13944a);
    }
}
