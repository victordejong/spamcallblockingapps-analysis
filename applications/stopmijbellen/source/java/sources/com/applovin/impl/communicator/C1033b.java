package com.applovin.impl.communicator;

import android.content.Context;
import android.content.Intent;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.C1479t;
import java.lang.ref.WeakReference;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.applovin.impl.communicator.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/communicator/b.class */
public class C1033b implements AppLovinBroadcastManager.Receiver {

    /* renamed from: b */
    private final String f3732b;

    /* renamed from: c */
    private final WeakReference<AppLovinCommunicatorSubscriber> f3733c;

    /* renamed from: a */
    private boolean f3731a = true;

    /* renamed from: d */
    private final Set<CommunicatorMessageImpl> f3734d = new LinkedHashSet();

    /* renamed from: e */
    private final Object f3735e = new Object();

    public C1033b(String str, AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber) {
        this.f3732b = str;
        this.f3733c = new WeakReference<>(appLovinCommunicatorSubscriber);
    }

    /* renamed from: a */
    public String m6755a() {
        return this.f3732b;
    }

    /* renamed from: a */
    public void m6754a(boolean z) {
        this.f3731a = z;
    }

    /* renamed from: b */
    public AppLovinCommunicatorSubscriber m6753b() {
        return this.f3733c.get();
    }

    /* renamed from: c */
    public boolean m6752c() {
        return this.f3731a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1033b)) {
            return false;
        }
        C1033b c1033b = (C1033b) obj;
        if (!m6755a().equals(c1033b.m6755a()) || (this.f3733c.get() == null ? this.f3733c.get() != c1033b.f3733c.get() : !this.f3733c.get().equals(c1033b.f3733c.get()))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (this.f3732b.hashCode() * 31) + (this.f3733c.get() != null ? this.f3733c.get().hashCode() : 0);
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        if (m6753b() == null) {
            C1479t.m5107i("AppLovinCommunicator", "Message received for GC'd subscriber");
            return;
        }
        CommunicatorMessageImpl communicatorMessageImpl = (CommunicatorMessageImpl) intent;
        boolean z = false;
        synchronized (this.f3735e) {
            if (!this.f3734d.contains(communicatorMessageImpl)) {
                this.f3734d.add(communicatorMessageImpl);
                z = true;
            }
        }
        if (!z) {
            return;
        }
        m6753b().onMessageReceived((AppLovinCommunicatorMessage) communicatorMessageImpl);
    }
}
