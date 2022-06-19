package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.measurement.ac */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ac.class */
final class C13355ac extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ Bundle f50579a;

    /* renamed from: b */
    final /* synthetic */ Activity f50580b;

    /* renamed from: c */
    final /* synthetic */ C13362aj f50581c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13355ac(C13362aj c13362aj, Bundle bundle, Activity activity) {
        super(c13362aj.f50595a, true);
        this.f50581c = c13362aj;
        this.f50579a = bundle;
        this.f50580b = activity;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        Bundle bundle;
        AbstractC13702mz abstractC13702mz;
        if (this.f50579a != null) {
            Bundle bundle2 = new Bundle();
            bundle = bundle2;
            if (this.f50579a.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.f50579a.get("com.google.app_measurement.screen_service");
                bundle = bundle2;
                if (obj instanceof Bundle) {
                    bundle2.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                    bundle = bundle2;
                }
            }
        } else {
            bundle = null;
        }
        abstractC13702mz = this.f50581c.f50595a.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).onActivityCreated(BinderC12129d.m18979a(this.f50580b), bundle, this.f50575i);
    }
}
