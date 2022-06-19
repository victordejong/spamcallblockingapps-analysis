package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.measurement.b0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/b0.class */
final class C7303b0 extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ Bundle f34341h;

    /* renamed from: i */
    final /* synthetic */ Activity f34342i;

    /* renamed from: j */
    final /* synthetic */ C7401i0 f34343j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7303b0(C7401i0 c7401i0, Bundle bundle, Activity activity) {
        super(c7401i0.f34516d, true);
        this.f34343j = c7401i0;
        this.f34341h = bundle;
        this.f34342i = activity;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        Bundle bundle;
        AbstractC7399hc abstractC7399hc;
        if (this.f34341h != null) {
            Bundle bundle2 = new Bundle();
            bundle = bundle2;
            if (this.f34341h.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.f34341h.get("com.google.app_measurement.screen_service");
                bundle = bundle2;
                if (obj instanceof Bundle) {
                    bundle2.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                    bundle = bundle2;
                }
            }
        } else {
            bundle = null;
        }
        abstractC7399hc = this.f34343j.f34516d.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).onActivityCreated(BinderC6255b.m16744m2(this.f34342i), bundle, this.f34803e);
    }
}
