package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ConnectionTelemetryConfiguration.class */
public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new C6137i1();

    /* renamed from: d */
    private final RootTelemetryConfiguration f19448d;

    /* renamed from: e */
    private final boolean f19449e;

    /* renamed from: f */
    private final boolean f19450f;

    /* renamed from: g */
    private final int[] f19451g;

    /* renamed from: h */
    private final int f19452h;

    /* renamed from: i */
    private final int[] f19453i;

    public ConnectionTelemetryConfiguration(@RecentlyNonNull RootTelemetryConfiguration rootTelemetryConfiguration, boolean z, boolean z2, int[] iArr, int i, int[] iArr2) {
        this.f19448d = rootTelemetryConfiguration;
        this.f19449e = z;
        this.f19450f = z2;
        this.f19451g = iArr;
        this.f19452h = i;
        this.f19453i = iArr2;
    }

    /* renamed from: k0 */
    public int m17161k0() {
        return this.f19452h;
    }

    @RecentlyNullable
    /* renamed from: l0 */
    public int[] m17160l0() {
        return this.f19451g;
    }

    @RecentlyNullable
    /* renamed from: m0 */
    public int[] m17159m0() {
        return this.f19453i;
    }

    /* renamed from: n0 */
    public boolean m17158n0() {
        return this.f19449e;
    }

    /* renamed from: o0 */
    public boolean m17157o0() {
        return this.f19450f;
    }

    @RecentlyNonNull
    /* renamed from: p0 */
    public RootTelemetryConfiguration m17156p0() {
        return this.f19448d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16931q(parcel, 1, m17156p0(), i, false);
        C6170a.m16945c(parcel, 2, m17158n0());
        C6170a.m16945c(parcel, 3, m17157o0());
        C6170a.m16936l(parcel, 4, m17160l0(), false);
        C6170a.m16937k(parcel, 5, m17161k0());
        C6170a.m16936l(parcel, 6, m17159m0(), false);
        C6170a.m16946b(parcel, m16947a);
    }
}
