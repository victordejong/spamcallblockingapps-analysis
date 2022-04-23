package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzth.class */
public final class zzth extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzth> CREATOR = new egt();
    private ParcelFileDescriptor zzbvs;
    private final boolean zzbvt;
    private final boolean zzbvu;
    private final long zzbvv;
    private final boolean zzbvw;

    public zzth() {
        this(null, false, false, 0L, false);
    }

    public zzth(ParcelFileDescriptor parcelFileDescriptor, boolean z, boolean z2, long j, boolean z3) {
        this.zzbvs = parcelFileDescriptor;
        this.zzbvt = z;
        this.zzbvu = z2;
        this.zzbvv = j;
        this.zzbvw = z3;
    }

    private final ParcelFileDescriptor zzne() {
        ParcelFileDescriptor parcelFileDescriptor;
        synchronized (this) {
            parcelFileDescriptor = this.zzbvs;
        }
        return parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, zzne(), i, false);
        a.a(parcel, 3, zznf());
        a.a(parcel, 4, zzng());
        a.a(parcel, 5, zznh());
        a.a(parcel, 6, zzni());
        a.b(parcel, a2);
    }

    public final boolean zznc() {
        boolean z;
        synchronized (this) {
            z = this.zzbvs != null;
        }
        return z;
    }

    public final InputStream zznd() {
        synchronized (this) {
            if (this.zzbvs == null) {
                return null;
            }
            ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.zzbvs);
            this.zzbvs = null;
            return autoCloseInputStream;
        }
    }

    public final boolean zznf() {
        boolean z;
        synchronized (this) {
            z = this.zzbvt;
        }
        return z;
    }

    public final boolean zzng() {
        boolean z;
        synchronized (this) {
            z = this.zzbvu;
        }
        return z;
    }

    public final long zznh() {
        long j;
        synchronized (this) {
            j = this.zzbvv;
        }
        return j;
    }

    public final boolean zzni() {
        boolean z;
        synchronized (this) {
            z = this.zzbvw;
        }
        return z;
    }
}
