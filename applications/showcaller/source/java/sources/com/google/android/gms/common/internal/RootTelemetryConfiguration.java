package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/RootTelemetryConfiguration.class */
public class RootTelemetryConfiguration extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<RootTelemetryConfiguration> CREATOR = new C6190y0();

    /* renamed from: d */
    private final int f19478d;

    /* renamed from: e */
    private final boolean f19479e;

    /* renamed from: f */
    private final boolean f19480f;

    /* renamed from: g */
    private final int f19481g;

    /* renamed from: h */
    private final int f19482h;

    public RootTelemetryConfiguration(int i, boolean z, boolean z2, int i2, int i3) {
        this.f19478d = i;
        this.f19479e = z;
        this.f19480f = z2;
        this.f19481g = i2;
        this.f19482h = i3;
    }

    /* renamed from: k0 */
    public int m17154k0() {
        return this.f19481g;
    }

    /* renamed from: l0 */
    public int m17153l0() {
        return this.f19482h;
    }

    /* renamed from: m0 */
    public boolean m17152m0() {
        return this.f19479e;
    }

    /* renamed from: n0 */
    public boolean m17151n0() {
        return this.f19480f;
    }

    /* renamed from: o0 */
    public int m17150o0() {
        return this.f19478d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, m17150o0());
        C6170a.m16945c(parcel, 2, m17152m0());
        C6170a.m16945c(parcel, 3, m17151n0());
        C6170a.m16937k(parcel, 4, m17154k0());
        C6170a.m16937k(parcel, 5, m17153l0());
        C6170a.m16946b(parcel, m16947a);
    }
}
