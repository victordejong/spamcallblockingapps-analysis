package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zau.class */
public final class zau implements zabs {

    /* renamed from: a */
    private final /* synthetic */ zaq f7337a;

    private zau(zaq zaqVar) {
        this.f7337a = zaqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zau(zaq zaqVar, zat zatVar) {
        this(zaqVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    /* renamed from: a */
    public final void mo14688a(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.f7337a.f7333l;
        lock.lock();
        try {
            this.f7337a.f7331j = connectionResult;
            this.f7337a.m14693t();
        } finally {
            lock2 = this.f7337a.f7333l;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    /* renamed from: b */
    public final void mo14687b(@Nullable Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.f7337a.f7333l;
        lock.lock();
        try {
            this.f7337a.f7331j = ConnectionResult.f6965j;
            this.f7337a.m14693t();
        } finally {
            lock2 = this.f7337a.f7333l;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    /* renamed from: c */
    public final void mo14686c(int i, boolean z) {
        Lock lock;
        Lock lock2;
        boolean z2;
        zabe zabeVar;
        lock = this.f7337a.f7333l;
        lock.lock();
        try {
            z2 = this.f7337a.f7332k;
            if (z2) {
                this.f7337a.f7332k = false;
                this.f7337a.m14707f(i, z);
                return;
            }
            this.f7337a.f7332k = true;
            zabeVar = this.f7337a.f7324c;
            zabeVar.mo14715a(i);
        } finally {
            lock2 = this.f7337a.f7333l;
            lock2.unlock();
        }
    }
}
