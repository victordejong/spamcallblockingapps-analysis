package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaam.class */
final class zaam implements BaseGmsClient.ConnectionProgressReportCallbacks {

    /* renamed from: a */
    private final WeakReference<zaak> f7166a;

    /* renamed from: b */
    private final Api<?> f7167b;

    /* renamed from: c */
    private final boolean f7168c;

    public zaam(zaak zaakVar, Api<?> api, boolean z) {
        this.f7166a = new WeakReference<>(zaakVar);
        this.f7167b = api;
        this.f7168c = z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    /* renamed from: a */
    public final void mo14593a(@NonNull ConnectionResult connectionResult) {
        zabe zabeVar;
        Lock lock;
        Lock lock2;
        boolean w;
        boolean l;
        zaak zaakVar = this.f7166a.get();
        if (zaakVar != null) {
            Looper myLooper = Looper.myLooper();
            zabeVar = zaakVar.f7143a;
            Preconditions.m14519o(myLooper == zabeVar.f7229n.mo14784h(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            lock = zaakVar.f7144b;
            lock.lock();
            try {
                w = zaakVar.m14827w(0);
                if (w) {
                    if (!connectionResult.m15090d0()) {
                        zaakVar.m14831s(connectionResult, this.f7167b, this.f7168c);
                    }
                    l = zaakVar.m14838l();
                    if (l) {
                        zaakVar.m14837m();
                    }
                }
            } finally {
                lock2 = zaakVar.f7144b;
                lock2.unlock();
            }
        }
    }
}
