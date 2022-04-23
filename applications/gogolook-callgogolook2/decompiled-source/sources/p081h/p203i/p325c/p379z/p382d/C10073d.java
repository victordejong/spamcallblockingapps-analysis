package p081h.p203i.p325c.p379z.p382d;

import com.google.android.gms.internal.firebase-perf.zzaa;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import p081h.p203i.p204a.p224e.p259j.p269j.C7759a1;
/* renamed from: h.i.c.z.d.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/z/d/d.class */
public final class C10073d extends HttpsURLConnection {

    /* renamed from: a */
    public final C10074e f22774a;

    /* renamed from: b */
    public final HttpsURLConnection f22775b;

    public C10073d(HttpsURLConnection httpsURLConnection, zzaa zzaaVar, C7759a1 a1Var) {
        super(httpsURLConnection.getURL());
        this.f22775b = httpsURLConnection;
        this.f22774a = new C10074e(httpsURLConnection, zzaaVar, a1Var);
    }

    @Override // java.net.URLConnection
    public final void addRequestProperty(String str, String str2) {
        this.f22774a.m13497a(str, str2);
    }

    @Override // java.net.URLConnection
    public final void connect() throws IOException {
        this.f22774a.m13503a();
    }

    @Override // java.net.HttpURLConnection
    public final void disconnect() {
        this.f22774a.m13494b();
    }

    public final boolean equals(Object obj) {
        return this.f22774a.equals(obj);
    }

    @Override // java.net.URLConnection
    public final boolean getAllowUserInteraction() {
        return this.f22774a.m13487c();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final String getCipherSuite() {
        return this.f22775b.getCipherSuite();
    }

    @Override // java.net.URLConnection
    public final int getConnectTimeout() {
        return this.f22774a.m13483d();
    }

    @Override // java.net.URLConnection
    public final Object getContent() throws IOException {
        return this.f22774a.m13480e();
    }

    @Override // java.net.URLConnection
    public final Object getContent(Class[] clsArr) throws IOException {
        return this.f22774a.m13495a(clsArr);
    }

    @Override // java.net.URLConnection
    public final String getContentEncoding() {
        return this.f22774a.m13477f();
    }

    @Override // java.net.URLConnection
    public final int getContentLength() {
        return this.f22774a.m13474g();
    }

    @Override // java.net.URLConnection
    public final long getContentLengthLong() {
        return this.f22774a.m13473h();
    }

    @Override // java.net.URLConnection
    public final String getContentType() {
        return this.f22774a.m13472i();
    }

    @Override // java.net.URLConnection
    public final long getDate() {
        return this.f22774a.m13471j();
    }

    @Override // java.net.URLConnection
    public final boolean getDefaultUseCaches() {
        return this.f22774a.m13470k();
    }

    @Override // java.net.URLConnection
    public final boolean getDoInput() {
        return this.f22774a.m13469l();
    }

    @Override // java.net.URLConnection
    public final boolean getDoOutput() {
        return this.f22774a.m13468m();
    }

    @Override // java.net.HttpURLConnection
    public final InputStream getErrorStream() {
        return this.f22774a.m13467n();
    }

    @Override // java.net.URLConnection
    public final long getExpiration() {
        return this.f22774a.m13466o();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderField(int i) {
        return this.f22774a.m13502a(i);
    }

    @Override // java.net.URLConnection
    public final String getHeaderField(String str) {
        return this.f22774a.m13500a(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final long getHeaderFieldDate(String str, long j) {
        return this.f22774a.m13498a(str, j);
    }

    @Override // java.net.URLConnection
    public final int getHeaderFieldInt(String str, int i) {
        return this.f22774a.m13499a(str, i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderFieldKey(int i) {
        return this.f22774a.m13493b(i);
    }

    @Override // java.net.URLConnection
    public final long getHeaderFieldLong(String str, long j) {
        return this.f22774a.m13490b(str, j);
    }

    @Override // java.net.URLConnection
    public final Map<String, List<String>> getHeaderFields() {
        return this.f22774a.m13465p();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final HostnameVerifier getHostnameVerifier() {
        return this.f22775b.getHostnameVerifier();
    }

    @Override // java.net.URLConnection
    public final long getIfModifiedSince() {
        return this.f22774a.m13464q();
    }

    @Override // java.net.URLConnection
    public final InputStream getInputStream() throws IOException {
        return this.f22774a.m13463r();
    }

    @Override // java.net.HttpURLConnection
    public final boolean getInstanceFollowRedirects() {
        return this.f22774a.m13462s();
    }

    @Override // java.net.URLConnection
    public final long getLastModified() {
        return this.f22774a.m13461t();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final Certificate[] getLocalCertificates() {
        return this.f22775b.getLocalCertificates();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final Principal getLocalPrincipal() {
        return this.f22775b.getLocalPrincipal();
    }

    @Override // java.net.URLConnection
    public final OutputStream getOutputStream() throws IOException {
        return this.f22774a.m13460u();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final Principal getPeerPrincipal() throws SSLPeerUnverifiedException {
        return this.f22775b.getPeerPrincipal();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final Permission getPermission() throws IOException {
        return this.f22774a.m13459v();
    }

    @Override // java.net.URLConnection
    public final int getReadTimeout() {
        return this.f22774a.m13458w();
    }

    @Override // java.net.HttpURLConnection
    public final String getRequestMethod() {
        return this.f22774a.m13457x();
    }

    @Override // java.net.URLConnection
    public final Map<String, List<String>> getRequestProperties() {
        return this.f22774a.m13456y();
    }

    @Override // java.net.URLConnection
    public final String getRequestProperty(String str) {
        return this.f22774a.m13491b(str);
    }

    @Override // java.net.HttpURLConnection
    public final int getResponseCode() throws IOException {
        return this.f22774a.m13455z();
    }

    @Override // java.net.HttpURLConnection
    public final String getResponseMessage() throws IOException {
        return this.f22774a.m13508A();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final SSLSocketFactory getSSLSocketFactory() {
        return this.f22775b.getSSLSocketFactory();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final Certificate[] getServerCertificates() throws SSLPeerUnverifiedException {
        return this.f22775b.getServerCertificates();
    }

    @Override // java.net.URLConnection
    public final URL getURL() {
        return this.f22774a.m13507B();
    }

    @Override // java.net.URLConnection
    public final boolean getUseCaches() {
        return this.f22774a.m13506C();
    }

    public final int hashCode() {
        return this.f22774a.hashCode();
    }

    @Override // java.net.URLConnection
    public final void setAllowUserInteraction(boolean z) {
        this.f22774a.m13496a(z);
    }

    @Override // java.net.HttpURLConnection
    public final void setChunkedStreamingMode(int i) {
        this.f22774a.m13486c(i);
    }

    @Override // java.net.URLConnection
    public final void setConnectTimeout(int i) {
        this.f22774a.m13482d(i);
    }

    @Override // java.net.URLConnection
    public final void setDefaultUseCaches(boolean z) {
        this.f22774a.m13488b(z);
    }

    @Override // java.net.URLConnection
    public final void setDoInput(boolean z) {
        this.f22774a.m13484c(z);
    }

    @Override // java.net.URLConnection
    public final void setDoOutput(boolean z) {
        this.f22774a.m13481d(z);
    }

    @Override // java.net.HttpURLConnection
    public final void setFixedLengthStreamingMode(int i) {
        this.f22774a.m13479e(i);
    }

    @Override // java.net.HttpURLConnection
    public final void setFixedLengthStreamingMode(long j) {
        this.f22774a.m13501a(j);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f22775b.setHostnameVerifier(hostnameVerifier);
    }

    @Override // java.net.URLConnection
    public final void setIfModifiedSince(long j) {
        this.f22774a.m13492b(j);
    }

    @Override // java.net.HttpURLConnection
    public final void setInstanceFollowRedirects(boolean z) {
        this.f22774a.m13478e(z);
    }

    @Override // java.net.URLConnection
    public final void setReadTimeout(int i) {
        this.f22774a.m13476f(i);
    }

    @Override // java.net.HttpURLConnection
    public final void setRequestMethod(String str) throws ProtocolException {
        this.f22774a.m13485c(str);
    }

    @Override // java.net.URLConnection
    public final void setRequestProperty(String str, String str2) {
        this.f22774a.m13489b(str, str2);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.f22775b.setSSLSocketFactory(sSLSocketFactory);
    }

    @Override // java.net.URLConnection
    public final void setUseCaches(boolean z) {
        this.f22774a.m13475f(z);
    }

    @Override // java.net.URLConnection
    public final String toString() {
        return this.f22774a.toString();
    }

    @Override // java.net.HttpURLConnection
    public final boolean usingProxy() {
        return this.f22774a.m13505D();
    }
}
