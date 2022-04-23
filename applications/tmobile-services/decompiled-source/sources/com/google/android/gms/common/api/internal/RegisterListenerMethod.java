package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.Nullable;
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
    private final ListenerHolder<L> f7116a;

    /* renamed from: b */
    private final Feature[] f7117b;

    /* renamed from: c */
    private final boolean f7118c;

    @KeepForSdk
    /* renamed from: a */
    public void m14871a() {
        this.f7116a.m14878a();
    }

    @KeepForSdk
    /* renamed from: b */
    public ListenerHolder.ListenerKey<L> m14870b() {
        return this.f7116a.m14877b();
    }

    @Nullable
    @KeepForSdk
    /* renamed from: c */
    public Feature[] m14869c() {
        return this.f7117b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    /* renamed from: d */
    public abstract void mo14775d(A a, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException;

    /* renamed from: e */
    public final boolean m14868e() {
        return this.f7118c;
    }
}
