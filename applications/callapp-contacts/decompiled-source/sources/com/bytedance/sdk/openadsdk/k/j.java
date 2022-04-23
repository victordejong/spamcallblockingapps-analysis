package com.bytedance.sdk.openadsdk.k;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/j.class */
class j extends ProxySelector {

    /* renamed from: a  reason: collision with root package name */
    private static final List<Proxy> f9790a = Collections.singletonList(Proxy.NO_PROXY);

    /* renamed from: b  reason: collision with root package name */
    private final ProxySelector f9791b = ProxySelector.getDefault();

    /* renamed from: c  reason: collision with root package name */
    private final String f9792c;

    /* renamed from: d  reason: collision with root package name */
    private final int f9793d;

    private j(String str, int i) {
        this.f9792c = str;
        this.f9793d = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, int i) {
        ProxySelector.setDefault(new j(str, i));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f9791b.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        if (uri != null) {
            return (!this.f9792c.equalsIgnoreCase(uri.getHost()) || this.f9793d != uri.getPort()) ? this.f9791b.select(uri) : f9790a;
        }
        throw new IllegalArgumentException("URI can't be null");
    }
}
