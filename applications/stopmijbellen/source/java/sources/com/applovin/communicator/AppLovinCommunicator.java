package com.applovin.communicator;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.communicator.C1032a;
import com.applovin.impl.communicator.MessagingServiceImpl;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/applovin/communicator/AppLovinCommunicator.class */
public final class AppLovinCommunicator {

    /* renamed from: a */
    private static AppLovinCommunicator f3253a;

    /* renamed from: b */
    private static final Object f3254b = new Object();

    /* renamed from: c */
    private C1408l f3255c;

    /* renamed from: d */
    private C1479t f3256d;

    /* renamed from: e */
    private final C1032a f3257e;

    /* renamed from: f */
    private final MessagingServiceImpl f3258f;

    private AppLovinCommunicator(Context context) {
        this.f3257e = new C1032a(context);
        this.f3258f = new MessagingServiceImpl(context);
    }

    /* renamed from: a */
    private void m7212a(String str) {
        C1479t c1479t = this.f3256d;
        if (c1479t != null) {
            c1479t.m5116b("AppLovinCommunicator", str);
        }
    }

    public static AppLovinCommunicator getInstance(Context context) {
        synchronized (f3254b) {
            if (f3253a == null) {
                f3253a = new AppLovinCommunicator(context.getApplicationContext());
            }
        }
        return f3253a;
    }

    /* renamed from: a */
    public void m7213a(C1408l c1408l) {
        this.f3255c = c1408l;
        this.f3256d = c1408l.m5542A();
        m7212a("Attached SDK instance: " + c1408l + "...");
    }

    public AppLovinCommunicatorMessagingService getMessagingService() {
        return this.f3258f;
    }

    public boolean respondsToTopic(String str) {
        return this.f3255c.m5490ae().m5585a(str);
    }

    public void subscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        subscribe(appLovinCommunicatorSubscriber, Collections.singletonList(str));
    }

    public void subscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, List<String> list) {
        for (String str : list) {
            if (this.f3257e.m6758a(appLovinCommunicatorSubscriber, str)) {
                this.f3258f.maybeFlushStickyMessages(str);
            } else {
                m7212a("Unable to subscribe " + appLovinCommunicatorSubscriber + " to topic: " + str);
            }
        }
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AppLovinCommunicator{sdk=");
        m8752j.append(this.f3255c);
        m8752j.append('}');
        return m8752j.toString();
    }

    public void unsubscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        unsubscribe(appLovinCommunicatorSubscriber, Collections.singletonList(str));
    }

    public void unsubscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, List<String> list) {
        for (String str : list) {
            m7212a("Unsubscribing " + appLovinCommunicatorSubscriber + " from topic: " + str);
            this.f3257e.m6756b(appLovinCommunicatorSubscriber, str);
        }
    }
}
