package okhttp3;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
/* loaded from: classes2-dex2jar.jar:okhttp3/Address.class */
public final class Address {
    @Nullable
    final CertificatePinner certificatePinner;
    final List<ConnectionSpec> connectionSpecs;
    final Dns dns;
    @Nullable
    final HostnameVerifier hostnameVerifier;
    final List<Protocol> protocols;
    @Nullable
    final Proxy proxy;
    final Authenticator proxyAuthenticator;
    final ProxySelector proxySelector;
    final SocketFactory socketFactory;
    @Nullable
    final SSLSocketFactory sslSocketFactory;
    final HttpUrl url;

    public Address(String str, int i, Dns dns, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable CertificatePinner certificatePinner, Authenticator authenticator, @Nullable Proxy proxy, List<Protocol> list, List<ConnectionSpec> list2, ProxySelector proxySelector) {
        this.url = new HttpUrl.Builder().scheme(sSLSocketFactory != null ? "https" : "http").host(str).port(i).build();
        if (dns == null) {
            throw new NullPointerException("dns == null");
        }
        this.dns = dns;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.socketFactory = socketFactory;
        if (authenticator == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.proxyAuthenticator = authenticator;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.protocols = Util.immutableList(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.connectionSpecs = Util.immutableList(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.proxySelector = proxySelector;
        this.proxy = proxy;
        this.sslSocketFactory = sSLSocketFactory;
        this.hostnameVerifier = hostnameVerifier;
        this.certificatePinner = certificatePinner;
    }

    @Nullable
    public CertificatePinner certificatePinner() {
        return this.certificatePinner;
    }

    public List<ConnectionSpec> connectionSpecs() {
        return this.connectionSpecs;
    }

    public Dns dns() {
        return this.dns;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (obj instanceof Address) {
            Address address = (Address) obj;
            if (this.url.equals(address.url) && equalsNonHost(address)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean equalsNonHost(Address address) {
        return this.dns.equals(address.dns) && this.proxyAuthenticator.equals(address.proxyAuthenticator) && this.protocols.equals(address.protocols) && this.connectionSpecs.equals(address.connectionSpecs) && this.proxySelector.equals(address.proxySelector) && Util.equal(this.proxy, address.proxy) && Util.equal(this.sslSocketFactory, address.sslSocketFactory) && Util.equal(this.hostnameVerifier, address.hostnameVerifier) && Util.equal(this.certificatePinner, address.certificatePinner) && url().port() == address.url().port();
    }

    public int hashCode() {
        int hashCode = this.url.hashCode();
        int hashCode2 = this.dns.hashCode();
        int hashCode3 = this.proxyAuthenticator.hashCode();
        int hashCode4 = this.protocols.hashCode();
        int hashCode5 = this.connectionSpecs.hashCode();
        int hashCode6 = this.proxySelector.hashCode();
        int i = 0;
        int hashCode7 = this.proxy != null ? this.proxy.hashCode() : 0;
        int hashCode8 = this.sslSocketFactory != null ? this.sslSocketFactory.hashCode() : 0;
        int hashCode9 = this.hostnameVerifier != null ? this.hostnameVerifier.hashCode() : 0;
        if (this.certificatePinner != null) {
            i = this.certificatePinner.hashCode();
        }
        return ((((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    @Nullable
    public HostnameVerifier hostnameVerifier() {
        return this.hostnameVerifier;
    }

    public List<Protocol> protocols() {
        return this.protocols;
    }

    @Nullable
    public Proxy proxy() {
        return this.proxy;
    }

    public Authenticator proxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    public ProxySelector proxySelector() {
        return this.proxySelector;
    }

    public SocketFactory socketFactory() {
        return this.socketFactory;
    }

    @Nullable
    public SSLSocketFactory sslSocketFactory() {
        return this.sslSocketFactory;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Address{");
        sb.append(this.url.host());
        sb.append(":");
        sb.append(this.url.port());
        if (this.proxy != null) {
            sb.append(", proxy=");
            sb.append(this.proxy);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.proxySelector);
        }
        sb.append("}");
        return sb.toString();
    }

    public HttpUrl url() {
        return this.url;
    }
}
