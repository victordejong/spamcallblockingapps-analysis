package p204p9;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import p007a6.C0033h;
import p204p9.C4123s;
import p214q9.C4171c;
/* renamed from: p9.a */
/* loaded from: classes2-dex2jar.jar:p9/a.class */
public final class C4080a {

    /* renamed from: a */
    public final C4123s f12785a;

    /* renamed from: b */
    public final AbstractC4114n f12786b;

    /* renamed from: c */
    public final SocketFactory f12787c;

    /* renamed from: d */
    public final AbstractC4082b f12788d;

    /* renamed from: e */
    public final List<EnumC4131w> f12789e;

    /* renamed from: f */
    public final List<C4108j> f12790f;

    /* renamed from: g */
    public final ProxySelector f12791g;
    @Nullable

    /* renamed from: h */
    public final Proxy f12792h;
    @Nullable

    /* renamed from: i */
    public final SSLSocketFactory f12793i;
    @Nullable

    /* renamed from: j */
    public final HostnameVerifier f12794j;
    @Nullable

    /* renamed from: k */
    public final C4102g f12795k;

    public C4080a(String str, int i, AbstractC4114n abstractC4114n, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable C4102g c4102g, AbstractC4082b abstractC4082b, @Nullable Proxy proxy, List<EnumC4131w> list, List<C4108j> list2, ProxySelector proxySelector) {
        C4123s.C4124a c4124a = new C4123s.C4124a();
        String str2 = sSLSocketFactory != null ? "https" : "http";
        if (str2.equalsIgnoreCase("http")) {
            c4124a.f12964a = "http";
        } else if (!str2.equalsIgnoreCase("https")) {
            throw new IllegalArgumentException(C1676a.m4789h("unexpected scheme: ", str2));
        } else {
            c4124a.f12964a = "https";
        }
        Objects.requireNonNull(str, "host == null");
        String m1334b = C4171c.m1334b(C4123s.m1381k(str, 0, str.length(), false));
        if (m1334b != null) {
            c4124a.f12967d = m1334b;
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException(C0033h.m8886k("unexpected port: ", i));
            }
            c4124a.f12968e = i;
            this.f12785a = c4124a.m1374a();
            Objects.requireNonNull(abstractC4114n, "dns == null");
            this.f12786b = abstractC4114n;
            Objects.requireNonNull(socketFactory, "socketFactory == null");
            this.f12787c = socketFactory;
            Objects.requireNonNull(abstractC4082b, "proxyAuthenticator == null");
            this.f12788d = abstractC4082b;
            Objects.requireNonNull(list, "protocols == null");
            this.f12789e = C4171c.m1322n(list);
            Objects.requireNonNull(list2, "connectionSpecs == null");
            this.f12790f = C4171c.m1322n(list2);
            Objects.requireNonNull(proxySelector, "proxySelector == null");
            this.f12791g = proxySelector;
            this.f12792h = null;
            this.f12793i = sSLSocketFactory;
            this.f12794j = hostnameVerifier;
            this.f12795k = c4102g;
            return;
        }
        throw new IllegalArgumentException(C1676a.m4789h("unexpected host: ", str));
    }

    /* renamed from: a */
    public boolean m1437a(C4080a c4080a) {
        return this.f12786b.equals(c4080a.f12786b) && this.f12788d.equals(c4080a.f12788d) && this.f12789e.equals(c4080a.f12789e) && this.f12790f.equals(c4080a.f12790f) && this.f12791g.equals(c4080a.f12791g) && C4171c.m1325k(this.f12792h, c4080a.f12792h) && C4171c.m1325k(this.f12793i, c4080a.f12793i) && C4171c.m1325k(this.f12794j, c4080a.f12794j) && C4171c.m1325k(this.f12795k, c4080a.f12795k) && this.f12785a.f12959e == c4080a.f12785a.f12959e;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (obj instanceof C4080a) {
            C4080a c4080a = (C4080a) obj;
            if (this.f12785a.equals(c4080a.f12785a) && m1437a(c4080a)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        int hashCode = this.f12785a.hashCode();
        int hashCode2 = this.f12786b.hashCode();
        int hashCode3 = this.f12788d.hashCode();
        int hashCode4 = this.f12789e.hashCode();
        int hashCode5 = this.f12790f.hashCode();
        int hashCode6 = this.f12791g.hashCode();
        Proxy proxy = this.f12792h;
        int i = 0;
        int hashCode7 = proxy != null ? proxy.hashCode() : 0;
        SSLSocketFactory sSLSocketFactory = this.f12793i;
        int hashCode8 = sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0;
        HostnameVerifier hostnameVerifier = this.f12794j;
        int hashCode9 = hostnameVerifier != null ? hostnameVerifier.hashCode() : 0;
        C4102g c4102g = this.f12795k;
        if (c4102g != null) {
            i = c4102g.hashCode();
        }
        return ((((((((hashCode6 + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Address{");
        m8752j.append(this.f12785a.f12958d);
        m8752j.append(":");
        m8752j.append(this.f12785a.f12959e);
        if (this.f12792h != null) {
            m8752j.append(", proxy=");
            m8752j.append(this.f12792h);
        } else {
            m8752j.append(", proxySelector=");
            m8752j.append(this.f12791g);
        }
        m8752j.append("}");
        return m8752j.toString();
    }
}
