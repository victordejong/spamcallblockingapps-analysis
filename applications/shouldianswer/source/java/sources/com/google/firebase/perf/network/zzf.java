package com.google.firebase.perf.network;

import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzam;
import com.google.android.gms.internal.firebase-perf.zzaz;
import com.google.firebase.perf.FirebasePerformance;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/zzf.class */
public final class zzf {
    private final zzaz zzfv;
    private final zzam zzgb;
    private final HttpURLConnection zzgj;
    private long zzgk = -1;
    private long zzge = -1;

    public zzf(HttpURLConnection httpURLConnection, zzaz zzazVar, zzam zzamVar) {
        this.zzgj = httpURLConnection;
        this.zzgb = zzamVar;
        this.zzfv = zzazVar;
        this.zzgb.zza(this.zzgj.getURL().toString());
    }

    private final void zzbv() {
        if (this.zzgk == -1) {
            this.zzfv.reset();
            this.zzgk = this.zzfv.zzbx();
            this.zzgb.zze(this.zzgk);
        }
        String requestMethod = this.zzgj.getRequestMethod();
        if (requestMethod != null) {
            this.zzgb.zzb(requestMethod);
        } else if (this.zzgj.getDoOutput()) {
            this.zzgb.zzb(FirebasePerformance.HttpMethod.POST);
        } else {
            this.zzgb.zzb(FirebasePerformance.HttpMethod.GET);
        }
    }

    public final void addRequestProperty(String str, String str2) {
        this.zzgj.addRequestProperty(str, str2);
    }

    public final void connect() {
        if (this.zzgk == -1) {
            this.zzfv.reset();
            this.zzgk = this.zzfv.zzbx();
            this.zzgb.zze(this.zzgk);
        }
        try {
            this.zzgj.connect();
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    public final void disconnect() {
        this.zzgb.zzh(this.zzfv.zzby());
        this.zzgb.zzz();
        this.zzgj.disconnect();
    }

    public final boolean equals(Object obj) {
        return this.zzgj.equals(obj);
    }

    public final boolean getAllowUserInteraction() {
        return this.zzgj.getAllowUserInteraction();
    }

    public final int getConnectTimeout() {
        return this.zzgj.getConnectTimeout();
    }

    public final Object getContent() {
        zzbv();
        this.zzgb.zzc(this.zzgj.getResponseCode());
        try {
            zzb content = this.zzgj.getContent();
            if (content instanceof InputStream) {
                this.zzgb.zzc(this.zzgj.getContentType());
                content = new zzb((InputStream) content, this.zzgb, this.zzfv);
            } else {
                this.zzgb.zzc(this.zzgj.getContentType());
                this.zzgb.zzi(this.zzgj.getContentLength());
                this.zzgb.zzh(this.zzfv.zzby());
                this.zzgb.zzz();
            }
            return content;
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    public final Object getContent(Class[] clsArr) {
        zzbv();
        this.zzgb.zzc(this.zzgj.getResponseCode());
        try {
            zzb content = this.zzgj.getContent(clsArr);
            if (content instanceof InputStream) {
                this.zzgb.zzc(this.zzgj.getContentType());
                content = new zzb((InputStream) content, this.zzgb, this.zzfv);
            } else {
                this.zzgb.zzc(this.zzgj.getContentType());
                this.zzgb.zzi(this.zzgj.getContentLength());
                this.zzgb.zzh(this.zzfv.zzby());
                this.zzgb.zzz();
            }
            return content;
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    public final String getContentEncoding() {
        zzbv();
        return this.zzgj.getContentEncoding();
    }

    public final int getContentLength() {
        zzbv();
        return this.zzgj.getContentLength();
    }

    public final long getContentLengthLong() {
        zzbv();
        return this.zzgj.getContentLengthLong();
    }

    public final String getContentType() {
        zzbv();
        return this.zzgj.getContentType();
    }

    public final long getDate() {
        zzbv();
        return this.zzgj.getDate();
    }

    public final boolean getDefaultUseCaches() {
        return this.zzgj.getDefaultUseCaches();
    }

    public final boolean getDoInput() {
        return this.zzgj.getDoInput();
    }

    public final boolean getDoOutput() {
        return this.zzgj.getDoOutput();
    }

    public final InputStream getErrorStream() {
        zzbv();
        try {
            this.zzgb.zzc(this.zzgj.getResponseCode());
        } catch (IOException e) {
            Log.d("FirebasePerformance", "IOException thrown trying to obtain the response code");
        }
        InputStream errorStream = this.zzgj.getErrorStream();
        return errorStream != null ? new zzb(errorStream, this.zzgb, this.zzfv) : errorStream;
    }

    public final long getExpiration() {
        zzbv();
        return this.zzgj.getExpiration();
    }

    public final String getHeaderField(int i) {
        zzbv();
        return this.zzgj.getHeaderField(i);
    }

    public final String getHeaderField(String str) {
        zzbv();
        return this.zzgj.getHeaderField(str);
    }

    public final long getHeaderFieldDate(String str, long j) {
        zzbv();
        return this.zzgj.getHeaderFieldDate(str, j);
    }

    public final int getHeaderFieldInt(String str, int i) {
        zzbv();
        return this.zzgj.getHeaderFieldInt(str, i);
    }

    public final String getHeaderFieldKey(int i) {
        zzbv();
        return this.zzgj.getHeaderFieldKey(i);
    }

    public final long getHeaderFieldLong(String str, long j) {
        zzbv();
        return this.zzgj.getHeaderFieldLong(str, j);
    }

    public final Map<String, List<String>> getHeaderFields() {
        zzbv();
        return this.zzgj.getHeaderFields();
    }

    public final long getIfModifiedSince() {
        return this.zzgj.getIfModifiedSince();
    }

    public final InputStream getInputStream() {
        zzbv();
        this.zzgb.zzc(this.zzgj.getResponseCode());
        this.zzgb.zzc(this.zzgj.getContentType());
        try {
            return new zzb(this.zzgj.getInputStream(), this.zzgb, this.zzfv);
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    public final boolean getInstanceFollowRedirects() {
        return this.zzgj.getInstanceFollowRedirects();
    }

    public final long getLastModified() {
        zzbv();
        return this.zzgj.getLastModified();
    }

    public final OutputStream getOutputStream() {
        try {
            return new zza(this.zzgj.getOutputStream(), this.zzgb, this.zzfv);
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    public final Permission getPermission() {
        try {
            return this.zzgj.getPermission();
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    public final int getReadTimeout() {
        return this.zzgj.getReadTimeout();
    }

    public final String getRequestMethod() {
        return this.zzgj.getRequestMethod();
    }

    public final Map<String, List<String>> getRequestProperties() {
        return this.zzgj.getRequestProperties();
    }

    public final String getRequestProperty(String str) {
        return this.zzgj.getRequestProperty(str);
    }

    public final int getResponseCode() {
        zzbv();
        if (this.zzge == -1) {
            this.zzge = this.zzfv.zzby();
            this.zzgb.zzg(this.zzge);
        }
        try {
            int responseCode = this.zzgj.getResponseCode();
            this.zzgb.zzc(responseCode);
            return responseCode;
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    public final String getResponseMessage() {
        zzbv();
        if (this.zzge == -1) {
            this.zzge = this.zzfv.zzby();
            this.zzgb.zzg(this.zzge);
        }
        try {
            String responseMessage = this.zzgj.getResponseMessage();
            this.zzgb.zzc(this.zzgj.getResponseCode());
            return responseMessage;
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    public final URL getURL() {
        return this.zzgj.getURL();
    }

    public final boolean getUseCaches() {
        return this.zzgj.getUseCaches();
    }

    public final int hashCode() {
        return this.zzgj.hashCode();
    }

    public final void setAllowUserInteraction(boolean z) {
        this.zzgj.setAllowUserInteraction(z);
    }

    public final void setChunkedStreamingMode(int i) {
        this.zzgj.setChunkedStreamingMode(i);
    }

    public final void setConnectTimeout(int i) {
        this.zzgj.setConnectTimeout(i);
    }

    public final void setDefaultUseCaches(boolean z) {
        this.zzgj.setDefaultUseCaches(z);
    }

    public final void setDoInput(boolean z) {
        this.zzgj.setDoInput(z);
    }

    public final void setDoOutput(boolean z) {
        this.zzgj.setDoOutput(z);
    }

    public final void setFixedLengthStreamingMode(int i) {
        this.zzgj.setFixedLengthStreamingMode(i);
    }

    public final void setFixedLengthStreamingMode(long j) {
        this.zzgj.setFixedLengthStreamingMode(j);
    }

    public final void setIfModifiedSince(long j) {
        this.zzgj.setIfModifiedSince(j);
    }

    public final void setInstanceFollowRedirects(boolean z) {
        this.zzgj.setInstanceFollowRedirects(z);
    }

    public final void setReadTimeout(int i) {
        this.zzgj.setReadTimeout(i);
    }

    public final void setRequestMethod(String str) {
        this.zzgj.setRequestMethod(str);
    }

    public final void setRequestProperty(String str, String str2) {
        this.zzgj.setRequestProperty(str, str2);
    }

    public final void setUseCaches(boolean z) {
        this.zzgj.setUseCaches(z);
    }

    public final String toString() {
        return this.zzgj.toString();
    }

    public final boolean usingProxy() {
        return this.zzgj.usingProxy();
    }
}
