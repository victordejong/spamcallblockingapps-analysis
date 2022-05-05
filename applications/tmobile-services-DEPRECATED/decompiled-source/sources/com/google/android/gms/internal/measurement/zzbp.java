package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbp.class */
final class zzbp extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ Bundle f8285j;

    /* renamed from: k */
    private final /* synthetic */ Activity f8286k;

    /* renamed from: l */
    private final /* synthetic */ zzag.zzc f8287l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbp(zzag.zzc zzcVar, Bundle bundle, Activity activity) {
        super(zzag.this);
        this.f8287l = zzcVar;
        this.f8285j = bundle;
        this.f8286k = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        Bundle bundle;
        zzv zzvVar;
        if (this.f8285j != null) {
            Bundle bundle2 = new Bundle();
            bundle = bundle2;
            if (this.f8285j.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.f8285j.get("com.google.app_measurement.screen_service");
                bundle = bundle2;
                if (obj instanceof Bundle) {
                    bundle2.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                    bundle = bundle2;
                }
            }
        } else {
            bundle = null;
        }
        zzvVar = zzag.this.f8187h;
        zzvVar.onActivityCreated(ObjectWrapper.m14257f(this.f8286k), bundle, this.f8190g);
    }
}
