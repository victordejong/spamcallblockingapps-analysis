package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.internal.ads.AbstractBinderC7230zs;
import com.google.android.gms.internal.ads.AbstractC6304at;
import com.google.android.gms.internal.ads.v00;
import com.google.android.gms.internal.ads.w00;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions.class */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new C5618i();

    /* renamed from: d */
    private final boolean f18250d;

    /* renamed from: e */
    private final AbstractC6304at f18251e;

    /* renamed from: f */
    private final IBinder f18252f;

    public PublisherAdViewOptions(boolean z, IBinder iBinder, IBinder iBinder2) {
        this.f18250d = z;
        this.f18251e = iBinder != null ? AbstractBinderC7230zs.m8197E6(iBinder) : null;
        this.f18252f = iBinder2;
    }

    /* renamed from: k0 */
    public final AbstractC6304at m18259k0() {
        return this.f18251e;
    }

    /* renamed from: l0 */
    public final w00 m18258l0() {
        IBinder iBinder = this.f18252f;
        if (iBinder == null) {
            return null;
        }
        return v00.m10148E6(iBinder);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16945c(parcel, 1, this.f18250d);
        AbstractC6304at abstractC6304at = this.f18251e;
        C6170a.m16938j(parcel, 2, abstractC6304at == null ? null : abstractC6304at.asBinder(), false);
        C6170a.m16938j(parcel, 3, this.f18252f, false);
        C6170a.m16946b(parcel, m16947a);
    }

    public final boolean zza() {
        return this.f18250d;
    }
}
