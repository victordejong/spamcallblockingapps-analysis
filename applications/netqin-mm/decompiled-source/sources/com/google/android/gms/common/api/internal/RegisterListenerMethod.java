package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/RegisterListenerMethod.class */
public abstract class RegisterListenerMethod<A extends Api.AnyClient, L> {

    /* renamed from: a */
    public final ListenerHolder<L> f23174a;

    /* renamed from: b */
    public final Feature[] f23175b;

    /* renamed from: c */
    public final boolean f23176c;

    @KeepForSdk
    /* renamed from: a */
    public void m17604a() {
        this.f23174a.m17626a();
    }

    @KeepForSdk
    /* renamed from: a */
    public abstract void m17603a(A a, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException;

    @KeepForSdk
    /* renamed from: b */
    public ListenerHolder.ListenerKey<L> m17602b() {
        return this.f23174a.m17624b();
    }

    @KeepForSdk
    /* renamed from: c */
    public Feature[] m17601c() {
        return this.f23175b;
    }

    /* renamed from: d */
    public final boolean m17600d() {
        return this.f23176c;
    }
}
