package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.internal.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/u.class */
public abstract class u<A extends a.b, L> {

    /* renamed from: a  reason: collision with root package name */
    public final i.a<L> f22768a;

    public u(i.a<L> aVar) {
        this.f22768a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(A a2, com.google.android.gms.tasks.i<Boolean> iVar) throws RemoteException;
}
