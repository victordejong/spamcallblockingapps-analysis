package p131c.p161d.p170b.p224d.p252g.p258f;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.w */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/w.class */
public final class C4608w extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ Bundle f16918e;

    /* renamed from: f */
    public final /* synthetic */ Activity f16919f;

    /* renamed from: g */
    public final /* synthetic */ zzag.C7273b f16920g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4608w(zzag.C7273b bVar, Bundle bundle, Activity activity) {
        super(zzag.this);
        this.f16920g = bVar;
        this.f16918e = bundle;
        this.f16919f = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        Bundle bundle;
        zzv zzvVar;
        if (this.f16918e != null) {
            Bundle bundle2 = new Bundle();
            bundle = bundle2;
            if (this.f16918e.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.f16918e.get("com.google.app_measurement.screen_service");
                bundle = bundle2;
                if (obj instanceof Bundle) {
                    bundle2.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                    bundle = bundle2;
                }
            }
        } else {
            bundle = null;
        }
        zzvVar = zzag.this.f29421i;
        zzvVar.onActivityCreated(ObjectWrapper.m17020a(this.f16919f), bundle, this.f29423b);
    }
}
