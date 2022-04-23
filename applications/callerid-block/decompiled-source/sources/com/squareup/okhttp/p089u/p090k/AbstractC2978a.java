package com.squareup.okhttp.p089u.p090k;

import com.squareup.okhttp.C2942j;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
/* renamed from: com.squareup.okhttp.u.k.a */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/k/a.class */
abstract class AbstractC2978a extends HttpsURLConnection {

    /* renamed from: a */
    private final HttpURLConnection f12524a;

    public AbstractC2978a(HttpURLConnection httpURLConnection) {
        super(httpURLConnection.getURL());
        this.f12524a = httpURLConnection;
    }

    /* renamed from: a */
    protected abstract C2942j mo633a();

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.f12524a.addRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() {
        ((HttpsURLConnection) this).connected = true;
        this.f12524a.connect();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        this.f12524a.disconnect();
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.f12524a.getAllowUserInteraction();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public String getCipherSuite() {
        C2942j a = mo633a();
        return a != null ? a.m908a() : null;
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f12524a.getConnectTimeout();
    }

    @Override // java.net.URLConnection
    public Object getContent() {
        return this.f12524a.getContent();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) {
        return this.f12524a.getContent(clsArr);
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        return this.f12524a.getContentEncoding();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.f12524a.getContentLength();
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        return this.f12524a.getContentType();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.f12524a.getDate();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.f12524a.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.f12524a.getDoInput();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.f12524a.getDoOutput();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        return this.f12524a.getErrorStream();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.f12524a.getExpiration();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i) {
        return this.f12524a.getHeaderField(i);
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        return this.f12524a.getHeaderField(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j) {
        return this.f12524a.getHeaderFieldDate(str, j);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i) {
        return this.f12524a.getHeaderFieldInt(str, i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i) {
        return this.f12524a.getHeaderFieldKey(i);
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        return this.f12524a.getHeaderFields();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.f12524a.getIfModifiedSince();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() {
        return this.f12524a.getInputStream();
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.f12524a.getInstanceFollowRedirects();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.f12524a.getLastModified();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Certificate[] getLocalCertificates() {
        C2942j a = mo633a();
        Certificate[] certificateArr = null;
        if (a == null) {
            return null;
        }
        List<Certificate> c = a.m906c();
        if (!c.isEmpty()) {
            certificateArr = (Certificate[]) c.toArray(new Certificate[c.size()]);
        }
        return certificateArr;
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Principal getLocalPrincipal() {
        C2942j a = mo633a();
        return a != null ? a.m905d() : null;
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() {
        return this.f12524a.getOutputStream();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Principal getPeerPrincipal() {
        C2942j a = mo633a();
        return a != null ? a.m903f() : null;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() {
        return this.f12524a.getPermission();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f12524a.getReadTimeout();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.f12524a.getRequestMethod();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.f12524a.getRequestProperties();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.f12524a.getRequestProperty(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() {
        return this.f12524a.getResponseCode();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() {
        return this.f12524a.getResponseMessage();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Certificate[] getServerCertificates() {
        C2942j a = mo633a();
        Certificate[] certificateArr = null;
        if (a == null) {
            return null;
        }
        List<Certificate> e = a.m904e();
        if (!e.isEmpty()) {
            certificateArr = (Certificate[]) e.toArray(new Certificate[e.size()]);
        }
        return certificateArr;
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.f12524a.getURL();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.f12524a.getUseCaches();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z) {
        this.f12524a.setAllowUserInteraction(z);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i) {
        this.f12524a.setChunkedStreamingMode(i);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i) {
        this.f12524a.setConnectTimeout(i);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z) {
        this.f12524a.setDefaultUseCaches(z);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z) {
        this.f12524a.setDoInput(z);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z) {
        this.f12524a.setDoOutput(z);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i) {
        this.f12524a.setFixedLengthStreamingMode(i);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j) {
        this.f12524a.setIfModifiedSince(j);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z) {
        this.f12524a.setInstanceFollowRedirects(z);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i) {
        this.f12524a.setReadTimeout(i);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) {
        this.f12524a.setRequestMethod(str);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.f12524a.setRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z) {
        this.f12524a.setUseCaches(z);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.f12524a.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.f12524a.usingProxy();
    }
}
