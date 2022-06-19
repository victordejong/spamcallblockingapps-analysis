package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import p078c.p084c.p085a.p086a.p088b.p091c.BinderC1848b;
import p078c.p084c.p085a.p086a.p088b.p091c.C1849c;
/* renamed from: com.google.android.gms.common.internal.r0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/r0.class */
public abstract class AbstractBinderC6165r0 extends BinderC1848b implements AbstractC6141k {
    public AbstractBinderC6165r0() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p091c.BinderC1848b
    /* renamed from: c0 */
    protected final boolean mo16914c0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo17050t3(parcel.readInt(), parcel.readStrongBinder(), (Bundle) C1849c.m28792c(parcel, Bundle.CREATOR));
        } else if (i == 2) {
            mo17051i2(parcel.readInt(), (Bundle) C1849c.m28792c(parcel, Bundle.CREATOR));
        } else if (i != 3) {
            return false;
        } else {
            mo17049w4(parcel.readInt(), parcel.readStrongBinder(), (zzi) C1849c.m28792c(parcel, zzi.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
