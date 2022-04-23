package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7050z0;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zzr.class */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new C7050z0();

    /* renamed from: a */
    public final int f6614a;

    public zzr(int i) {
        this.f6614a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6614a);
        C7031b.m21229a(parcel, a);
    }
}
