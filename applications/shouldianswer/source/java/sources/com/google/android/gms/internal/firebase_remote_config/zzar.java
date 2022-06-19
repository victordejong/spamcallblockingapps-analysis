package com.google.android.gms.internal.firebase_remote_config;

import com.google.firebase.perf.FirebasePerformance;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzar.class */
final class zzar extends zzaj {
    private final HttpURLConnection zzct;

    public zzar(HttpURLConnection httpURLConnection) {
        this.zzct = httpURLConnection;
        httpURLConnection.setInstanceFollowRedirects(false);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaj
    public final void addHeader(String str, String str2) {
        this.zzct.addRequestProperty(str, str2);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaj
    public final void zza(int i, int i2) {
        this.zzct.setReadTimeout(i2);
        this.zzct.setConnectTimeout(i);
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzaj
    public final zzai zzaj() {
        HttpURLConnection httpURLConnection = this.zzct;
        if (zzai() != null) {
            String contentType = getContentType();
            if (contentType != null) {
                addHeader("Content-Type", contentType);
            }
            String contentEncoding = getContentEncoding();
            if (contentEncoding != null) {
                addHeader("Content-Encoding", contentEncoding);
            }
            long contentLength = getContentLength();
            int i = (contentLength > 0L ? 1 : (contentLength == 0L ? 0 : -1));
            if (i >= 0) {
                httpURLConnection.setRequestProperty("Content-Length", Long.toString(contentLength));
            }
            String requestMethod = httpURLConnection.getRequestMethod();
            if (FirebasePerformance.HttpMethod.POST.equals(requestMethod) || FirebasePerformance.HttpMethod.PUT.equals(requestMethod)) {
                httpURLConnection.setDoOutput(true);
                if (i < 0 || contentLength > 2147483647L) {
                    httpURLConnection.setChunkedStreamingMode(0);
                } else {
                    httpURLConnection.setFixedLengthStreamingMode((int) contentLength);
                }
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    zzai().writeTo(outputStream);
                    try {
                        outputStream.close();
                    } catch (IOException e) {
                        throw e;
                    }
                } catch (Throwable th) {
                    try {
                        outputStream.close();
                    } catch (IOException e2) {
                    }
                    throw th;
                }
            } else {
                if (!(i == 0)) {
                    throw new IllegalArgumentException(zzdy.zza("%s with non-zero content length is not supported", requestMethod));
                }
            }
        }
        try {
            httpURLConnection.connect();
            return new zzaq(httpURLConnection);
        } catch (Throwable th2) {
            httpURLConnection.disconnect();
            throw th2;
        }
    }
}
