package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.tasks.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/n.class */
public abstract class n<A extends a.b, L> {

    /* renamed from: a  reason: collision with root package name */
    public final i<L> f22750a;

    /* renamed from: b  reason: collision with root package name */
    final Feature[] f22751b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f22752c;

    /* renamed from: d  reason: collision with root package name */
    final int f22753d;

    public n(i<L> iVar) {
        this(iVar, null, false, 0);
    }

    protected n(i<L> iVar, Feature[] featureArr, boolean z) {
        this(iVar, featureArr, z, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public n(i<L> iVar, Feature[] featureArr, boolean z, int i) {
        this.f22750a = iVar;
        this.f22751b = featureArr;
        this.f22752c = z;
        this.f22753d = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(A a2, i<Void> iVar) throws RemoteException;
}
