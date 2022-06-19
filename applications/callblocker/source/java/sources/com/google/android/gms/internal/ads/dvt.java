package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.io.InputStream;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvt.class */
public final class dvt extends AbstractC2663a {
    public static final Parcelable.Creator<dvt> CREATOR = new dvs();
    @GuardedBy("this")

    /* renamed from: a */
    private ParcelFileDescriptor f15855a;

    public dvt() {
        this(null);
    }

    public dvt(ParcelFileDescriptor parcelFileDescriptor) {
        this.f15855a = parcelFileDescriptor;
    }

    /* renamed from: c */
    private final ParcelFileDescriptor m8487c() {
        ParcelFileDescriptor parcelFileDescriptor;
        synchronized (this) {
            parcelFileDescriptor = this.f15855a;
        }
        return parcelFileDescriptor;
    }

    /* renamed from: a */
    public final boolean m8489a() {
        boolean z;
        synchronized (this) {
            z = this.f15855a != null;
        }
        return z;
    }

    /* renamed from: b */
    public final InputStream m8488b() {
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = null;
        synchronized (this) {
            if (this.f15855a != null) {
                autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.f15855a);
                this.f15855a = null;
            }
        }
        return autoCloseInputStream;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13937a(parcel, 2, (Parcelable) m8487c(), i, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
