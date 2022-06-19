package com.bytedance.sdk.openadsdk.p176k;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.k.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/j.class */
class C5039j extends ProxySelector {

    /* renamed from: a */
    private static final List<Proxy> f18240a = Collections.singletonList(Proxy.NO_PROXY);

    /* renamed from: b */
    private final ProxySelector f18241b = ProxySelector.getDefault();

    /* renamed from: c */
    private final String f18242c;

    /* renamed from: d */
    private final int f18243d;

    private C5039j(String str, int i) {
        this.f18242c = str;
        this.f18243d = i;
    }

    /* renamed from: a */
    public static void m33200a(String str, int i) {
        ProxySelector.setDefault(new C5039j(str, i));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f18241b.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        if (uri != null) {
            return (!this.f18242c.equalsIgnoreCase(uri.getHost()) || this.f18243d != uri.getPort()) ? this.f18241b.select(uri) : f18240a;
        }
        throw new IllegalArgumentException("URI can't be null");
    }
}
