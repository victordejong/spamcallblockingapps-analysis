package com.google.firebase.perf.network;

import com.google.firebase.perf.e.a;
import com.google.firebase.perf.util.Timer;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.firebase.perf.network.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/c.class */
public final class C2434c extends HttpURLConnection {

    /* renamed from: a */
    private final C2436e f10666a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2434c(HttpURLConnection httpURLConnection, Timer timer, a aVar) {
        super(httpURLConnection.getURL());
        this.f10666a = new C2436e(httpURLConnection, timer, aVar);
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.f10666a.m3620a(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() {
        this.f10666a.m3618b();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        this.f10666a.m3616c();
    }

    public boolean equals(Object obj) {
        return this.f10666a.equals(obj);
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.f10666a.m3615d();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f10666a.m3614e();
    }

    @Override // java.net.URLConnection
    public Object getContent() {
        return this.f10666a.m3613f();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) {
        return this.f10666a.m3612g(clsArr);
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        return this.f10666a.m3611h();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.f10666a.m3610i();
    }

    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        return this.f10666a.m3609j();
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        return this.f10666a.m3608k();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.f10666a.m3607l();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.f10666a.m3606m();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.f10666a.m3605n();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.f10666a.m3604o();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        return this.f10666a.m3603p();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.f10666a.m3602q();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i) {
        return this.f10666a.m3601r(i);
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        return this.f10666a.m3600s(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j) {
        return this.f10666a.m3599t(str, j);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i) {
        return this.f10666a.m3598u(str, i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i) {
        return this.f10666a.m3597v(i);
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j) {
        return this.f10666a.m3596w(str, j);
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        return this.f10666a.m3595x();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.f10666a.m3594y();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() {
        return this.f10666a.m3593z();
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.f10666a.m3646A();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.f10666a.m3645B();
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() {
        return this.f10666a.m3644C();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() {
        return this.f10666a.m3643D();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f10666a.m3642E();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.f10666a.m3641F();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.f10666a.m3640G();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.f10666a.m3639H(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() {
        return this.f10666a.m3638I();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() {
        return this.f10666a.m3637J();
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.f10666a.m3636K();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.f10666a.m3635L();
    }

    public int hashCode() {
        return this.f10666a.hashCode();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z) {
        this.f10666a.m3634M(z);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i) {
        this.f10666a.m3633N(i);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i) {
        this.f10666a.m3632O(i);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z) {
        this.f10666a.m3631P(z);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z) {
        this.f10666a.m3630Q(z);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z) {
        this.f10666a.m3629R(z);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i) {
        this.f10666a.m3628S(i);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j) {
        this.f10666a.m3627T(j);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j) {
        this.f10666a.m3626U(j);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z) {
        this.f10666a.m3625V(z);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i) {
        this.f10666a.m3624W(i);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) {
        this.f10666a.m3623X(str);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.f10666a.m3622Y(str, str2);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z) {
        this.f10666a.m3621Z(z);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.f10666a.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.f10666a.m3617b0();
    }
}
