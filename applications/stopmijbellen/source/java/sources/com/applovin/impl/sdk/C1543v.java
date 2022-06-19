package com.applovin.impl.sdk;

import com.applovin.impl.sdk.p053ad.AppLovinAdImpl;
import java.util.LinkedList;
import java.util.Queue;
/* renamed from: com.applovin.impl.sdk.v */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/v.class */
public class C1543v {

    /* renamed from: a */
    private final Queue<AppLovinAdImpl> f5724a = new LinkedList();

    /* renamed from: b */
    private final Object f5725b = new Object();

    /* renamed from: a */
    public int m4923a() {
        int size;
        synchronized (this.f5725b) {
            size = this.f5724a.size();
        }
        return size;
    }

    /* renamed from: a */
    public void m4922a(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.f5725b) {
            if (m4923a() <= 25) {
                this.f5724a.offer(appLovinAdImpl);
            } else {
                C1479t.m5107i("AppLovinSdk", "Maximum queue capacity reached - discarding ad...");
            }
        }
    }

    /* renamed from: b */
    public boolean m4921b() {
        boolean z;
        synchronized (this.f5725b) {
            z = m4923a() == 0;
        }
        return z;
    }

    /* renamed from: c */
    public AppLovinAdImpl m4920c() {
        AppLovinAdImpl poll;
        synchronized (this.f5725b) {
            poll = !m4921b() ? this.f5724a.poll() : null;
        }
        return poll;
    }

    /* renamed from: d */
    public AppLovinAdImpl m4919d() {
        AppLovinAdImpl peek;
        synchronized (this.f5725b) {
            peek = this.f5724a.peek();
        }
        return peek;
    }
}
