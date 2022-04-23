package p131c.p135b.p136a.p142c;

import android.content.Context;
import android.content.IntentFilter;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.HashSet;
import java.util.Set;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.c.a */
/* loaded from: classes-dex2jar.jar:c/b/a/c/a.class */
public class C2114a {

    /* renamed from: a */
    public final Context f8123a;

    /* renamed from: b */
    public final Set<C2115b> f8124b = new HashSet(32);

    /* renamed from: c */
    public final Object f8125c = new Object();

    public C2114a(Context context) {
        this.f8123a = context;
    }

    /* renamed from: a */
    public final C2115b m31026a(String str, AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber) {
        for (C2115b bVar : this.f8124b) {
            if (str.equals(bVar.m31024a()) && appLovinCommunicatorSubscriber.equals(bVar.m31022b())) {
                return bVar;
            }
        }
        return null;
    }

    /* renamed from: a */
    public boolean m31027a(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        if (appLovinCommunicatorSubscriber == null || !C2422o.m29851b(str)) {
            C2374t.m30034j("AppLovinCommunicator", "Unable to subscribe - invalid subscriber (" + appLovinCommunicatorSubscriber + ") or topic (" + str + ")");
            return false;
        }
        synchronized (this.f8125c) {
            C2115b a = m31026a(str, appLovinCommunicatorSubscriber);
            if (a != null) {
                C2374t.m30034j("AppLovinCommunicator", "Attempting to re-subscribe subscriber (" + appLovinCommunicatorSubscriber + ") to topic (" + str + ")");
                if (!a.m31021c()) {
                    a.m31023a(true);
                    AppLovinBroadcastManager.getInstance(this.f8123a).registerReceiver(a, new IntentFilter(str));
                }
                return true;
            }
            C2115b bVar = new C2115b(str, appLovinCommunicatorSubscriber);
            this.f8124b.add(bVar);
            AppLovinBroadcastManager.getInstance(this.f8123a).registerReceiver(bVar, new IntentFilter(str));
            return true;
        }
    }

    /* renamed from: b */
    public void m31025b(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        C2115b a;
        if (C2422o.m29851b(str)) {
            synchronized (this.f8125c) {
                a = m31026a(str, appLovinCommunicatorSubscriber);
            }
            if (a != null) {
                a.m31023a(false);
                AppLovinBroadcastManager.getInstance(this.f8123a).unregisterReceiver(a);
            }
        }
    }
}
