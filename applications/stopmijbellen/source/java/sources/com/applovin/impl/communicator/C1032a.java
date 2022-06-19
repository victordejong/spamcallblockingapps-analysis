package com.applovin.impl.communicator;

import android.content.Context;
import android.content.IntentFilter;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.applovin.impl.communicator.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/communicator/a.class */
public class C1032a {

    /* renamed from: a */
    private final Context f3728a;

    /* renamed from: b */
    private final Set<C1033b> f3729b = new HashSet(32);

    /* renamed from: c */
    private final Object f3730c = new Object();

    public C1032a(Context context) {
        this.f3728a = context;
    }

    /* renamed from: a */
    private C1033b m6757a(String str, AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber) {
        for (C1033b c1033b : this.f3729b) {
            if (str.equals(c1033b.m6755a()) && appLovinCommunicatorSubscriber.equals(c1033b.m6753b())) {
                return c1033b;
            }
        }
        return null;
    }

    /* renamed from: a */
    public boolean m6758a(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        if (appLovinCommunicatorSubscriber == null || !StringUtils.isValidString(str)) {
            C1479t.m5107i("AppLovinCommunicator", "Unable to subscribe - invalid subscriber (" + appLovinCommunicatorSubscriber + ") or topic (" + str + ")");
            return false;
        }
        synchronized (this.f3730c) {
            C1033b m6757a = m6757a(str, appLovinCommunicatorSubscriber);
            if (m6757a == null) {
                C1033b c1033b = new C1033b(str, appLovinCommunicatorSubscriber);
                this.f3729b.add(c1033b);
                AppLovinBroadcastManager.getInstance(this.f3728a).registerReceiver(c1033b, new IntentFilter(str));
                return true;
            }
            C1479t.m5107i("AppLovinCommunicator", "Attempting to re-subscribe subscriber (" + appLovinCommunicatorSubscriber + ") to topic (" + str + ")");
            if (!m6757a.m6752c()) {
                m6757a.m6754a(true);
                AppLovinBroadcastManager.getInstance(this.f3728a).registerReceiver(m6757a, new IntentFilter(str));
            }
            return true;
        }
    }

    /* renamed from: b */
    public void m6756b(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        C1033b m6757a;
        if (!StringUtils.isValidString(str)) {
            return;
        }
        synchronized (this.f3730c) {
            m6757a = m6757a(str, appLovinCommunicatorSubscriber);
        }
        if (m6757a == null) {
            return;
        }
        m6757a.m6754a(false);
        AppLovinBroadcastManager.getInstance(this.f3728a).unregisterReceiver(m6757a);
    }
}
