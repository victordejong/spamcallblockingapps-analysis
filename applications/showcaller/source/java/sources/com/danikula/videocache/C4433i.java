package com.danikula.videocache;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.danikula.videocache.i */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/i.class */
class C4433i extends ProxySelector {

    /* renamed from: a */
    private static final List<Proxy> f13546a = Arrays.asList(Proxy.NO_PROXY);

    /* renamed from: b */
    private final ProxySelector f13547b;

    /* renamed from: c */
    private final String f13548c;

    /* renamed from: d */
    private final int f13549d;

    C4433i(ProxySelector proxySelector, String str, int i) {
        this.f13547b = (ProxySelector) C4437k.m22476d(proxySelector);
        this.f13548c = (String) C4437k.m22476d(str);
        this.f13549d = i;
    }

    /* renamed from: a */
    public static void m22488a(String str, int i) {
        ProxySelector.setDefault(new C4433i(ProxySelector.getDefault(), str, i));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f13547b.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        return this.f13548c.equals(uri.getHost()) && this.f13549d == uri.getPort() ? f13546a : this.f13547b.select(uri);
    }
}
