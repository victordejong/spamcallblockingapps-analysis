package com.google.firebase.perf.network;

import com.google.firebase.perf.e.a;
import com.google.firebase.perf.util.Timer;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.firebase.perf.network.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/d.class */
public final class C2435d extends HttpsURLConnection {

    /* renamed from: a */
    private final C2436e f10667a;

    /* renamed from: b */
    private final HttpsURLConnection f10668b;

    public C2435d(HttpsURLConnection httpsURLConnection, Timer timer, a aVar) {
        super(httpsURLConnection.getURL());
        this.f10668b = httpsURLConnection;
        this.f10667a = new C2436e(httpsURLConnection, timer, aVar);
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.f10667a.m3620a(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() {
        this.f10667a.m3618b();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        this.f10667a.m3616c();
    }

    public boolean equals(Object obj) {
        return this.f10667a.equals(obj);
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.f10667a.m3615d();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public String getCipherSuite() {
        return this.f10668b.getCipherSuite();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f10667a.m3614e();
    }

    @Override // java.net.URLConnection
    public Object getContent() {
        return this.f10667a.m3613f();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) {
        return this.f10667a.m3612g(clsArr);
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        return this.f10667a.m3611h();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.f10667a.m3610i();
    }

    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        return this.f10667a.m3609j();
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        return this.f10667a.m3608k();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.f10667a.m3607l();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.f10667a.m3606m();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.f10667a.m3605n();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.f10667a.m3604o();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        return this.f10667a.m3603p();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.f10667a.m3602q();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i) {
        return this.f10667a.m3601r(i);
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        return this.f10667a.m3600s(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j) {
        return this.f10667a.m3599t(str, j);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i) {
        return this.f10667a.m3598u(str, i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i) {
        return this.f10667a.m3597v(i);
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j) {
        return this.f10667a.m3596w(str, j);
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        return this.f10667a.m3595x();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public HostnameVerifier getHostnameVerifier() {
        return this.f10668b.getHostnameVerifier();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.f10667a.m3594y();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() {
        return this.f10667a.m3593z();
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.f10667a.m3646A();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.f10667a.m3645B();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Certificate[] getLocalCertificates() {
        return this.f10668b.getLocalCertificates();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Principal getLocalPrincipal() {
        return this.f10668b.getLocalPrincipal();
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() {
        return this.f10667a.m3644C();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Principal getPeerPrincipal() {
        return this.f10668b.getPeerPrincipal();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() {
        return this.f10667a.m3643D();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f10667a.m3642E();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.f10667a.m3641F();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.f10667a.m3640G();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.f10667a.m3639H(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() {
        return this.f10667a.m3638I();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() {
        return this.f10667a.m3637J();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public SSLSocketFactory getSSLSocketFactory() {
        return this.f10668b.getSSLSocketFactory();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Certificate[] getServerCertificates() {
        return this.f10668b.getServerCertificates();
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.f10667a.m3636K();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.f10667a.m3635L();
    }

    public int hashCode() {
        return this.f10667a.hashCode();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z) {
        this.f10667a.m3634M(z);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i) {
        this.f10667a.m3633N(i);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i) {
        this.f10667a.m3632O(i);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z) {
        this.f10667a.m3631P(z);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z) {
        this.f10667a.m3630Q(z);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z) {
        this.f10667a.m3629R(z);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i) {
        this.f10667a.m3628S(i);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j) {
        this.f10667a.m3627T(j);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f10668b.setHostnameVerifier(hostnameVerifier);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j) {
        this.f10667a.m3626U(j);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z) {
        this.f10667a.m3625V(z);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i) {
        this.f10667a.m3624W(i);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) {
        this.f10667a.m3623X(str);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.f10667a.m3622Y(str, str2);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.f10668b.setSSLSocketFactory(sSLSocketFactory);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z) {
        this.f10667a.m3621Z(z);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.f10667a.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.f10667a.m3617b0();
    }
}
