package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzer;
/* renamed from: c.d.b.d.g.a.za0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/za0.class */
public final class za0 implements zzer {

    /* renamed from: a */
    public final /* synthetic */ Activity f16426a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f16427b;

    public za0(d70 d70Var, Activity activity, Bundle bundle) {
        this.f16426a = activity;
        this.f16427b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzer
    /* renamed from: a */
    public final void mo12180a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f16426a, this.f16427b);
    }
}
