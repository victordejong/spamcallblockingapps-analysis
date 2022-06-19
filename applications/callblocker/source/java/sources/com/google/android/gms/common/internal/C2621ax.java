package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
@Deprecated
/* renamed from: com.google.android.gms.common.internal.ax */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ax.class */
public final class C2621ax extends AbstractC2663a {
    public static final Parcelable.Creator<C2621ax> CREATOR = new C2620aw();

    /* renamed from: a */
    private final int f7316a;

    public C2621ax(int i) {
        this.f7316a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f7316a);
        C2664b.m13943a(parcel, m13944a);
    }
}
