package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ac.class */
final class ac extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f28913a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Activity f28914b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ aj f28915c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ac(aj ajVar, Bundle bundle, Activity activity) {
        super(ajVar.f28929a, true);
        this.f28915c = ajVar;
        this.f28913a = bundle;
        this.f28914b = activity;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        Bundle bundle;
        mz mzVar;
        if (this.f28913a != null) {
            Bundle bundle2 = new Bundle();
            bundle = bundle2;
            if (this.f28913a.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.f28913a.get("com.google.app_measurement.screen_service");
                bundle = bundle2;
                if (obj instanceof Bundle) {
                    bundle2.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                    bundle = bundle2;
                }
            }
        } else {
            bundle = null;
        }
        mzVar = this.f28915c.f28929a.j;
        ((mz) o.a(mzVar)).onActivityCreated(d.a(this.f28914b), bundle, this.i);
    }
}
