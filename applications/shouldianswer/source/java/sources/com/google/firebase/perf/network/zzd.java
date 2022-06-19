package com.google.firebase.perf.network;

import com.google.android.gms.internal.firebase-perf.zzam;
import com.google.android.gms.internal.firebase-perf.zzaz;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/zzd.class */
public final class zzd extends HttpURLConnection {
    private final zzf zzgg;

    public zzd(HttpURLConnection httpURLConnection, zzaz zzazVar, zzam zzamVar) {
        super(httpURLConnection.getURL());
        this.zzgg = new zzf(httpURLConnection, zzazVar, zzamVar);
    }

    @Override // java.net.URLConnection
    public final void addRequestProperty(String str, String str2) {
        this.zzgg.addRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public final void connect() {
        this.zzgg.connect();
    }

    @Override // java.net.HttpURLConnection
    public final void disconnect() {
        this.zzgg.disconnect();
    }

    public final boolean equals(Object obj) {
        return this.zzgg.equals(obj);
    }

    @Override // java.net.URLConnection
    public final boolean getAllowUserInteraction() {
        return this.zzgg.getAllowUserInteraction();
    }

    @Override // java.net.URLConnection
    public final int getConnectTimeout() {
        return this.zzgg.getConnectTimeout();
    }

    @Override // java.net.URLConnection
    public final Object getContent() {
        return this.zzgg.getContent();
    }

    @Override // java.net.URLConnection
    public final Object getContent(Class[] clsArr) {
        return this.zzgg.getContent(clsArr);
    }

    @Override // java.net.URLConnection
    public final String getContentEncoding() {
        return this.zzgg.getContentEncoding();
    }

    @Override // java.net.URLConnection
    public final int getContentLength() {
        return this.zzgg.getContentLength();
    }

    @Override // java.net.URLConnection
    public final long getContentLengthLong() {
        return this.zzgg.getContentLengthLong();
    }

    @Override // java.net.URLConnection
    public final String getContentType() {
        return this.zzgg.getContentType();
    }

    @Override // java.net.URLConnection
    public final long getDate() {
        return this.zzgg.getDate();
    }

    @Override // java.net.URLConnection
    public final boolean getDefaultUseCaches() {
        return this.zzgg.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public final boolean getDoInput() {
        return this.zzgg.getDoInput();
    }

    @Override // java.net.URLConnection
    public final boolean getDoOutput() {
        return this.zzgg.getDoOutput();
    }

    @Override // java.net.HttpURLConnection
    public final InputStream getErrorStream() {
        return this.zzgg.getErrorStream();
    }

    @Override // java.net.URLConnection
    public final long getExpiration() {
        return this.zzgg.getExpiration();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderField(int i) {
        return this.zzgg.getHeaderField(i);
    }

    @Override // java.net.URLConnection
    public final String getHeaderField(String str) {
        return this.zzgg.getHeaderField(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final long getHeaderFieldDate(String str, long j) {
        return this.zzgg.getHeaderFieldDate(str, j);
    }

    @Override // java.net.URLConnection
    public final int getHeaderFieldInt(String str, int i) {
        return this.zzgg.getHeaderFieldInt(str, i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderFieldKey(int i) {
        return this.zzgg.getHeaderFieldKey(i);
    }

    @Override // java.net.URLConnection
    public final long getHeaderFieldLong(String str, long j) {
        return this.zzgg.getHeaderFieldLong(str, j);
    }

    @Override // java.net.URLConnection
    public final Map<String, List<String>> getHeaderFields() {
        return this.zzgg.getHeaderFields();
    }

    @Override // java.net.URLConnection
    public final long getIfModifiedSince() {
        return this.zzgg.getIfModifiedSince();
    }

    @Override // java.net.URLConnection
    public final InputStream getInputStream() {
        return this.zzgg.getInputStream();
    }

    @Override // java.net.HttpURLConnection
    public final boolean getInstanceFollowRedirects() {
        return this.zzgg.getInstanceFollowRedirects();
    }

    @Override // java.net.URLConnection
    public final long getLastModified() {
        return this.zzgg.getLastModified();
    }

    @Override // java.net.URLConnection
    public final OutputStream getOutputStream() {
        return this.zzgg.getOutputStream();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final Permission getPermission() {
        return this.zzgg.getPermission();
    }

    @Override // java.net.URLConnection
    public final int getReadTimeout() {
        return this.zzgg.getReadTimeout();
    }

    @Override // java.net.HttpURLConnection
    public final String getRequestMethod() {
        return this.zzgg.getRequestMethod();
    }

    @Override // java.net.URLConnection
    public final Map<String, List<String>> getRequestProperties() {
        return this.zzgg.getRequestProperties();
    }

    @Override // java.net.URLConnection
    public final String getRequestProperty(String str) {
        return this.zzgg.getRequestProperty(str);
    }

    @Override // java.net.HttpURLConnection
    public final int getResponseCode() {
        return this.zzgg.getResponseCode();
    }

    @Override // java.net.HttpURLConnection
    public final String getResponseMessage() {
        return this.zzgg.getResponseMessage();
    }

    @Override // java.net.URLConnection
    public final URL getURL() {
        return this.zzgg.getURL();
    }

    @Override // java.net.URLConnection
    public final boolean getUseCaches() {
        return this.zzgg.getUseCaches();
    }

    public final int hashCode() {
        return this.zzgg.hashCode();
    }

    @Override // java.net.URLConnection
    public final void setAllowUserInteraction(boolean z) {
        this.zzgg.setAllowUserInteraction(z);
    }

    @Override // java.net.HttpURLConnection
    public final void setChunkedStreamingMode(int i) {
        this.zzgg.setChunkedStreamingMode(i);
    }

    @Override // java.net.URLConnection
    public final void setConnectTimeout(int i) {
        this.zzgg.setConnectTimeout(i);
    }

    @Override // java.net.URLConnection
    public final void setDefaultUseCaches(boolean z) {
        this.zzgg.setDefaultUseCaches(z);
    }

    @Override // java.net.URLConnection
    public final void setDoInput(boolean z) {
        this.zzgg.setDoInput(z);
    }

    @Override // java.net.URLConnection
    public final void setDoOutput(boolean z) {
        this.zzgg.setDoOutput(z);
    }

    @Override // java.net.HttpURLConnection
    public final void setFixedLengthStreamingMode(int i) {
        this.zzgg.setFixedLengthStreamingMode(i);
    }

    @Override // java.net.HttpURLConnection
    public final void setFixedLengthStreamingMode(long j) {
        this.zzgg.setFixedLengthStreamingMode(j);
    }

    @Override // java.net.URLConnection
    public final void setIfModifiedSince(long j) {
        this.zzgg.setIfModifiedSince(j);
    }

    @Override // java.net.HttpURLConnection
    public final void setInstanceFollowRedirects(boolean z) {
        this.zzgg.setInstanceFollowRedirects(z);
    }

    @Override // java.net.URLConnection
    public final void setReadTimeout(int i) {
        this.zzgg.setReadTimeout(i);
    }

    @Override // java.net.HttpURLConnection
    public final void setRequestMethod(String str) {
        this.zzgg.setRequestMethod(str);
    }

    @Override // java.net.URLConnection
    public final void setRequestProperty(String str, String str2) {
        this.zzgg.setRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public final void setUseCaches(boolean z) {
        this.zzgg.setUseCaches(z);
    }

    @Override // java.net.URLConnection
    public final String toString() {
        return this.zzgg.toString();
    }

    @Override // java.net.HttpURLConnection
    public final boolean usingProxy() {
        return this.zzgg.usingProxy();
    }
}
