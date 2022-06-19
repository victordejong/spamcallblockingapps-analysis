package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p129b.C4134s;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.mopub.common.Constants;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.bytedance.sdk.a.b.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a.class */
public final class C3994a {

    /* renamed from: a */
    final C4134s f14467a;

    /* renamed from: b */
    final AbstractC4125o f14468b;

    /* renamed from: c */
    final SocketFactory f14469c;

    /* renamed from: d */
    final AbstractC4104b f14470d;

    /* renamed from: e */
    final List<EnumC4143w> f14471e;

    /* renamed from: f */
    final List<C4119k> f14472f;

    /* renamed from: g */
    final ProxySelector f14473g;

    /* renamed from: h */
    final Proxy f14474h;

    /* renamed from: i */
    final SSLSocketFactory f14475i;

    /* renamed from: j */
    final HostnameVerifier f14476j;

    /* renamed from: k */
    final C4111g f14477k;

    public C3994a(String str, int i, AbstractC4125o abstractC4125o, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, C4111g c4111g, AbstractC4104b abstractC4104b, Proxy proxy, List<EnumC4143w> list, List<C4119k> list2, ProxySelector proxySelector) {
        this.f14467a = new C4134s.C4135a().m36423a(sSLSocketFactory != null ? Constants.HTTPS : "http").m36413d(str).m36425a(i).m36417c();
        Objects.requireNonNull(abstractC4125o, "dns == null");
        this.f14468b = abstractC4125o;
        Objects.requireNonNull(socketFactory, "socketFactory == null");
        this.f14469c = socketFactory;
        Objects.requireNonNull(abstractC4104b, "proxyAuthenticator == null");
        this.f14470d = abstractC4104b;
        Objects.requireNonNull(list, "protocols == null");
        this.f14471e = C4015c.m36899a(list);
        Objects.requireNonNull(list2, "connectionSpecs == null");
        this.f14472f = C4015c.m36899a(list2);
        Objects.requireNonNull(proxySelector, "proxySelector == null");
        this.f14473g = proxySelector;
        this.f14474h = proxy;
        this.f14475i = sSLSocketFactory;
        this.f14476j = hostnameVerifier;
        this.f14477k = c4111g;
    }

    /* renamed from: a */
    public final C4134s m37009a() {
        return this.f14467a;
    }

    /* renamed from: a */
    public final boolean m37008a(C3994a c3994a) {
        return this.f14468b.equals(c3994a.f14468b) && this.f14470d.equals(c3994a.f14470d) && this.f14471e.equals(c3994a.f14471e) && this.f14472f.equals(c3994a.f14472f) && this.f14473g.equals(c3994a.f14473g) && C4015c.m36912a(this.f14474h, c3994a.f14474h) && C4015c.m36912a(this.f14475i, c3994a.f14475i) && C4015c.m36912a(this.f14476j, c3994a.f14476j) && C4015c.m36912a(this.f14477k, c3994a.f14477k) && m37009a().m36434g() == c3994a.m37009a().m36434g();
    }

    /* renamed from: b */
    public final AbstractC4125o m37007b() {
        return this.f14468b;
    }

    /* renamed from: c */
    public final SocketFactory m37006c() {
        return this.f14469c;
    }

    /* renamed from: d */
    public final AbstractC4104b m37005d() {
        return this.f14470d;
    }

    /* renamed from: e */
    public final List<EnumC4143w> m37004e() {
        return this.f14471e;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3994a) {
            C3994a c3994a = (C3994a) obj;
            return this.f14467a.equals(c3994a.f14467a) && m37008a(c3994a);
        }
        return false;
    }

    /* renamed from: f */
    public final List<C4119k> m37003f() {
        return this.f14472f;
    }

    /* renamed from: g */
    public final ProxySelector m37002g() {
        return this.f14473g;
    }

    /* renamed from: h */
    public final Proxy m37001h() {
        return this.f14474h;
    }

    public final int hashCode() {
        int hashCode = this.f14467a.hashCode();
        int hashCode2 = this.f14468b.hashCode();
        int hashCode3 = this.f14470d.hashCode();
        int hashCode4 = this.f14471e.hashCode();
        int hashCode5 = this.f14472f.hashCode();
        int hashCode6 = this.f14473g.hashCode();
        Proxy proxy = this.f14474h;
        int i = 0;
        int hashCode7 = proxy != null ? proxy.hashCode() : 0;
        SSLSocketFactory sSLSocketFactory = this.f14475i;
        int hashCode8 = sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0;
        HostnameVerifier hostnameVerifier = this.f14476j;
        int hashCode9 = hostnameVerifier != null ? hostnameVerifier.hashCode() : 0;
        C4111g c4111g = this.f14477k;
        if (c4111g != null) {
            i = c4111g.hashCode();
        }
        return ((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    /* renamed from: i */
    public final SSLSocketFactory m37000i() {
        return this.f14475i;
    }

    /* renamed from: j */
    public final HostnameVerifier m36999j() {
        return this.f14476j;
    }

    /* renamed from: k */
    public final C4111g m36998k() {
        return this.f14477k;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        sb.append(this.f14467a.m36435f());
        sb.append(":");
        sb.append(this.f14467a.m36434g());
        if (this.f14474h != null) {
            sb.append(", proxy=");
            sb.append(this.f14474h);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.f14473g);
        }
        sb.append("}");
        return sb.toString();
    }
}
