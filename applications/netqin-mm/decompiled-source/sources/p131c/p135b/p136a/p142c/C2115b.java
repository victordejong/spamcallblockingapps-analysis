package p131c.p135b.p136a.p142c;

import android.content.Context;
import android.content.Intent;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.communicator.CommunicatorMessageImpl;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.lang.ref.WeakReference;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.c.b */
/* loaded from: classes-dex2jar.jar:c/b/a/c/b.class */
public class C2115b implements AppLovinBroadcastManager.Receiver {

    /* renamed from: b */
    public final String f8127b;

    /* renamed from: c */
    public final WeakReference<AppLovinCommunicatorSubscriber> f8128c;

    /* renamed from: a */
    public boolean f8126a = true;

    /* renamed from: d */
    public final Set<CommunicatorMessageImpl> f8129d = new LinkedHashSet();

    /* renamed from: e */
    public final Object f8130e = new Object();

    public C2115b(String str, AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber) {
        this.f8127b = str;
        this.f8128c = new WeakReference<>(appLovinCommunicatorSubscriber);
    }

    /* renamed from: a */
    public String m31024a() {
        return this.f8127b;
    }

    /* renamed from: a */
    public void m31023a(boolean z) {
        this.f8126a = z;
    }

    /* renamed from: b */
    public AppLovinCommunicatorSubscriber m31022b() {
        return this.f8128c.get();
    }

    /* renamed from: c */
    public boolean m31021c() {
        return this.f8126a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2115b)) {
            return false;
        }
        C2115b bVar = (C2115b) obj;
        if (!m31024a().equals(bVar.m31024a()) || (this.f8128c.get() == null ? this.f8128c.get() != bVar.f8128c.get() : !this.f8128c.get().equals(bVar.f8128c.get()))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (this.f8127b.hashCode() * 31) + (this.f8128c.get() != null ? this.f8128c.get().hashCode() : 0);
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        if (m31022b() == null) {
            C2374t.m30034j("AppLovinCommunicator", "Message received for GC'd subscriber");
            return;
        }
        CommunicatorMessageImpl communicatorMessageImpl = (CommunicatorMessageImpl) intent;
        boolean z = false;
        synchronized (this.f8130e) {
            if (!this.f8129d.contains(communicatorMessageImpl)) {
                this.f8129d.add(communicatorMessageImpl);
                z = true;
            }
        }
        if (z) {
            m31022b().onMessageReceived((AppLovinCommunicatorMessage) communicatorMessageImpl);
        }
    }
}
