package com.aotter.net.trek.network;

import com.aotter.net.volley.Request;
import java.util.Map;
/* renamed from: com.aotter.net.trek.network.h */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/h.class */
public class RunnableC1762h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ TrekRequestQueue f1578a;

    /* renamed from: b */
    public final /* synthetic */ Request f1579b;

    /* renamed from: c */
    public final /* synthetic */ C1761g f1580c;

    public RunnableC1762h(C1761g gVar, TrekRequestQueue trekRequestQueue, Request request) {
        this.f1580c = gVar;
        this.f1578a = trekRequestQueue;
        this.f1579b = request;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map map;
        map = this.f1580c.f1577d.f1562b;
        map.remove(this.f1579b);
        this.f1580c.f1577d.add(this.f1579b);
    }
}
