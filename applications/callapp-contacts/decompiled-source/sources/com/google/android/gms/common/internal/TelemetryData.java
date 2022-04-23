package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/TelemetryData.class */
public class TelemetryData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TelemetryData> CREATOR = new v();
    private final int zaa;
    private List<MethodInvocation> zab;

    public TelemetryData(int i, List<MethodInvocation> list) {
        this.zaa = i;
        this.zab = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zaa);
        a.a(parcel, 2, (List) this.zab, false);
        a.b(parcel, a2);
    }

    public final int zaa() {
        return this.zaa;
    }

    public final List<MethodInvocation> zab() {
        return this.zab;
    }

    public final void zac(MethodInvocation methodInvocation) {
        if (this.zab == null) {
            this.zab = new ArrayList();
        }
        this.zab.add(methodInvocation);
    }
}
