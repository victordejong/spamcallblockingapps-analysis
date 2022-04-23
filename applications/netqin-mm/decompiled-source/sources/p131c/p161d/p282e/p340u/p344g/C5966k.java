package p131c.p161d.p282e.p340u.p344g;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.perf.internal.RemoteConfigManager;
/* renamed from: c.d.e.u.g.k */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/g/k.class */
public final /* synthetic */ class C5966k implements OnSuccessListener {

    /* renamed from: a */
    public final RemoteConfigManager f19379a;

    public C5966k(RemoteConfigManager remoteConfigManager) {
        this.f19379a = remoteConfigManager;
    }

    /* renamed from: a */
    public static OnSuccessListener m22498a(RemoteConfigManager remoteConfigManager) {
        return new C5966k(remoteConfigManager);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        Boolean bool = (Boolean) obj;
        r0.syncConfigValues(this.f19379a.firebaseRemoteConfig.m22135d());
    }
}
