package com.bytedance.sdk.p127a.p129b.p130a.p139i;

import com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e;
import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;
/* renamed from: com.bytedance.sdk.a.b.a.i.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/i/c.class */
public abstract class AbstractC4094c {
    /* renamed from: a */
    public static AbstractC4094c m36630a(X509TrustManager x509TrustManager) {
        return C4090e.m36643b().mo36644a(x509TrustManager);
    }

    /* renamed from: a */
    public abstract List<Certificate> mo36631a(List<Certificate> list, String str) throws SSLPeerUnverifiedException;
}
