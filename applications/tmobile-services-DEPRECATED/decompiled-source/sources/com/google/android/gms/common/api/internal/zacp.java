package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacp.class */
public final class zacp {

    /* renamed from: d */
    public static final Status f7283d = new Status(8, "The connection to Google Play services was lost");

    /* renamed from: e */
    private static final BasePendingResult<?>[] f7284e = new BasePendingResult[0];
    @VisibleForTesting

    /* renamed from: a */
    final Set<BasePendingResult<?>> f7285a;

    /* renamed from: b */
    private final zacq f7286b;

    /* renamed from: c */
    private final Map<Api.AnyClientKey<?>, Api.Client> f7287c;

    /* renamed from: a */
    public final void m14745a() {
        BasePendingResult[] basePendingResultArr;
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f7285a.toArray(f7284e)) {
            basePendingResult.m14970m(null);
            if (basePendingResult.m14966q() != null) {
                basePendingResult.mo14771c(null);
                IBinder serviceBrokerBinder = this.f7287c.get(((BaseImplementation.ApiMethodImpl) basePendingResult).m14983v()).getServiceBrokerBinder();
                if (basePendingResult.m14975h()) {
                    basePendingResult.m14970m(new zacr(basePendingResult, null, serviceBrokerBinder, null));
                } else if (serviceBrokerBinder == null || !serviceBrokerBinder.isBinderAlive()) {
                    basePendingResult.m14970m(null);
                    basePendingResult.mo14772b();
                    basePendingResult.m14966q().intValue();
                    throw new NullPointerException();
                } else {
                    zacr zacrVar = new zacr(basePendingResult, null, serviceBrokerBinder, null);
                    basePendingResult.m14970m(zacrVar);
                    try {
                        serviceBrokerBinder.linkToDeath(zacrVar, 0);
                    } catch (RemoteException e) {
                        basePendingResult.mo14772b();
                        basePendingResult.m14966q().intValue();
                        throw new NullPointerException();
                    }
                }
                this.f7285a.remove(basePendingResult);
            } else if (basePendingResult.m14965r()) {
                this.f7285a.remove(basePendingResult);
            }
        }
    }

    /* renamed from: b */
    public final void m14744b() {
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f7285a.toArray(f7284e)) {
            basePendingResult.m14967p(f7283d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m14743c(BasePendingResult<? extends Result> basePendingResult) {
        this.f7285a.add(basePendingResult);
        basePendingResult.m14970m(this.f7286b);
    }
}
