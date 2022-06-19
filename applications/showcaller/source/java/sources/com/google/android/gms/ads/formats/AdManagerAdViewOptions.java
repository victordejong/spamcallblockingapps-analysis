package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.internal.ads.v00;
import com.google.android.gms.internal.ads.w00;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/AdManagerAdViewOptions.class */
public final class AdManagerAdViewOptions extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<AdManagerAdViewOptions> CREATOR = new C5615f();

    /* renamed from: d */
    private final boolean f18246d;

    /* renamed from: e */
    private final IBinder f18247e;

    public AdManagerAdViewOptions(boolean z, IBinder iBinder) {
        this.f18246d = z;
        this.f18247e = iBinder;
    }

    /* renamed from: k0 */
    public boolean m18261k0() {
        return this.f18246d;
    }

    /* renamed from: l0 */
    public final w00 m18260l0() {
        IBinder iBinder = this.f18247e;
        if (iBinder == null) {
            return null;
        }
        return v00.m10148E6(iBinder);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16945c(parcel, 1, m18261k0());
        C6170a.m16938j(parcel, 2, this.f18247e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
