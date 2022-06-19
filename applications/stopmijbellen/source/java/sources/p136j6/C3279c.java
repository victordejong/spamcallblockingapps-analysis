package p136j6;

import android.os.Build;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p115h6.C3013b;
import p180n6.C3729e;
/* renamed from: j6.c */
/* loaded from: classes-dex2jar.jar:j6/c.class */
public final class C3279c extends HttpURLConnection {

    /* renamed from: a */
    public final C3281e f11108a;

    public C3279c(HttpURLConnection httpURLConnection, C3729e c3729e, C3013b c3013b) {
        super(httpURLConnection.getURL());
        this.f11108a = new C3281e(httpURLConnection, c3729e, c3013b);
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.f11108a.f11112a.addRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() throws IOException {
        this.f11108a.m2443a();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        C3281e c3281e = this.f11108a;
        c3281e.f11113b.m2740j(c3281e.f11116e.m1840a());
        c3281e.f11113b.m2747b();
        c3281e.f11112a.disconnect();
    }

    public boolean equals(Object obj) {
        return this.f11108a.f11112a.equals(obj);
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.f11108a.f11112a.getAllowUserInteraction();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f11108a.f11112a.getConnectTimeout();
    }

    @Override // java.net.URLConnection
    public Object getContent() throws IOException {
        return this.f11108a.m2442b();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) throws IOException {
        return this.f11108a.m2441c(clsArr);
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return c3281e.f11112a.getContentEncoding();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return c3281e.f11112a.getContentLength();
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return Build.VERSION.SDK_INT >= 24 ? c3281e.f11112a.getContentLengthLong() : (char) 0;
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return c3281e.f11112a.getContentType();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return c3281e.f11112a.getDate();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.f11108a.f11112a.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.f11108a.f11112a.getDoInput();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.f11108a.m2440d();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        return this.f11108a.m2439e();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return c3281e.f11112a.getExpiration();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i) {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return c3281e.f11112a.getHeaderField(i);
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return c3281e.f11112a.getHeaderField(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j) {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return c3281e.f11112a.getHeaderFieldDate(str, j);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i) {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return c3281e.f11112a.getHeaderFieldInt(str, i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i) {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return c3281e.f11112a.getHeaderFieldKey(i);
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j) {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return Build.VERSION.SDK_INT >= 24 ? c3281e.f11112a.getHeaderFieldLong(str, j) : (char) 0;
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return c3281e.f11112a.getHeaderFields();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.f11108a.f11112a.getIfModifiedSince();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() throws IOException {
        return this.f11108a.m2438f();
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.f11108a.f11112a.getInstanceFollowRedirects();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        C3281e c3281e = this.f11108a;
        c3281e.m2432l();
        return c3281e.f11112a.getLastModified();
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() throws IOException {
        return this.f11108a.m2437g();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() throws IOException {
        return this.f11108a.m2436h();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f11108a.f11112a.getReadTimeout();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.f11108a.m2435i();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.f11108a.f11112a.getRequestProperties();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.f11108a.f11112a.getRequestProperty(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() throws IOException {
        return this.f11108a.m2434j();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() throws IOException {
        return this.f11108a.m2433k();
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.f11108a.f11112a.getURL();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.f11108a.f11112a.getUseCaches();
    }

    public int hashCode() {
        return this.f11108a.hashCode();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z) {
        this.f11108a.f11112a.setAllowUserInteraction(z);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i) {
        this.f11108a.f11112a.setChunkedStreamingMode(i);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i) {
        this.f11108a.f11112a.setConnectTimeout(i);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z) {
        this.f11108a.f11112a.setDefaultUseCaches(z);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z) {
        this.f11108a.f11112a.setDoInput(z);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z) {
        this.f11108a.f11112a.setDoOutput(z);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i) {
        this.f11108a.f11112a.setFixedLengthStreamingMode(i);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j) {
        this.f11108a.f11112a.setFixedLengthStreamingMode(j);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j) {
        this.f11108a.f11112a.setIfModifiedSince(j);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z) {
        this.f11108a.f11112a.setInstanceFollowRedirects(z);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i) {
        this.f11108a.f11112a.setReadTimeout(i);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) throws ProtocolException {
        this.f11108a.f11112a.setRequestMethod(str);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        C3281e c3281e = this.f11108a;
        Objects.requireNonNull(c3281e);
        if ("User-Agent".equalsIgnoreCase(str)) {
            c3281e.f11113b.f10115f = str2;
        }
        c3281e.f11112a.setRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z) {
        this.f11108a.f11112a.setUseCaches(z);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.f11108a.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.f11108a.f11112a.usingProxy();
    }
}
