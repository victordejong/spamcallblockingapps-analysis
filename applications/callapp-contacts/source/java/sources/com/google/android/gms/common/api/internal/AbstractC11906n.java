package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.C11808a.AbstractC11810b;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.common.api.internal.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/n.class */
public abstract class AbstractC11906n<A extends C11808a.AbstractC11810b, L> {

    /* renamed from: a */
    public final C11899i<L> f39384a;

    /* renamed from: b */
    final Feature[] f39385b;

    /* renamed from: c */
    final boolean f39386c;

    /* renamed from: d */
    final int f39387d;

    public AbstractC11906n(C11899i<L> c11899i) {
        this(c11899i, null, false, 0);
    }

    protected AbstractC11906n(C11899i<L> c11899i, Feature[] featureArr, boolean z) {
        this(c11899i, featureArr, z, 0);
    }

    public AbstractC11906n(C11899i<L> c11899i, Feature[] featureArr, boolean z, int i) {
        this.f39384a = c11899i;
        this.f39385b = featureArr;
        this.f39386c = z;
        this.f39387d = i;
    }

    /* renamed from: a */
    public abstract void mo11362a(A a, C14186i<Void> c14186i) throws RemoteException;
}
