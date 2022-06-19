package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/TelemetryData.class */
public class TelemetryData extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<TelemetryData> CREATOR = new C6185w();

    /* renamed from: d */
    private final int f19483d;

    /* renamed from: e */
    private List<MethodInvocation> f19484e;

    public TelemetryData(int i, List<MethodInvocation> list) {
        this.f19483d = i;
        this.f19484e = list;
    }

    /* renamed from: k0 */
    public final int m17149k0() {
        return this.f19483d;
    }

    @RecentlyNullable
    /* renamed from: l0 */
    public final List<MethodInvocation> m17148l0() {
        return this.f19484e;
    }

    /* renamed from: m0 */
    public final void m17147m0(@RecentlyNonNull MethodInvocation methodInvocation) {
        if (this.f19484e == null) {
            this.f19484e = new ArrayList();
        }
        this.f19484e.add(methodInvocation);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19483d);
        C6170a.m16926v(parcel, 2, this.f19484e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
