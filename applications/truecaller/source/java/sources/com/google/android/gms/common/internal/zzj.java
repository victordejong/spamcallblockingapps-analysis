package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zzj.class */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();
    @SafeParcelable.Field

    /* renamed from: a */
    public Bundle f6055a;
    @SafeParcelable.Field

    /* renamed from: b */
    public Feature[] f6056b;
    @SafeParcelable.Field

    /* renamed from: c */
    public int f6057c;
    @SafeParcelable.Field

    /* renamed from: d */
    public ConnectionTelemetryConfiguration f6058d;

    public zzj() {
    }

    @SafeParcelable.Constructor
    public zzj(@SafeParcelable.Param(id = 1) Bundle bundle, @SafeParcelable.Param(id = 2) Feature[] featureArr, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) ConnectionTelemetryConfiguration connectionTelemetryConfiguration) {
        this.f6055a = bundle;
        this.f6056b = featureArr;
        this.f6057c = i;
        this.f6058d = connectionTelemetryConfiguration;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38860c(parcel, 1, this.f6055a, false);
        SafeParcelWriter.m38843t(parcel, 2, this.f6056b, i, false);
        int i2 = this.f6057c;
        parcel.writeInt(262147);
        parcel.writeInt(i2);
        SafeParcelWriter.m38847p(parcel, 4, this.f6058d, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
