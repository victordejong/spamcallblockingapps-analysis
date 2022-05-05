package com.google.android.gms.internal.measurement;

import com.google.android.gms.tagmanager.zzdi;
import com.google.firebase.appindexing.Indexable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzsc.class */
final class zzsc implements zzsd {
    private HttpURLConnection zzbof;
    private InputStream zzbog = null;

    @Override // com.google.android.gms.internal.measurement.zzsd
    public final void close() {
        HttpURLConnection httpURLConnection = this.zzbof;
        try {
            if (this.zzbog != null) {
                this.zzbog.close();
            }
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzdi.zza(valueOf.length() != 0 ? "HttpUrlConnectionNetworkClient: Error when closing http input stream: ".concat(valueOf) : new String("HttpUrlConnectionNetworkClient: Error when closing http input stream: "), e);
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzsd
    public final InputStream zzev(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setReadTimeout(Indexable.MAX_STRING_LENGTH);
        httpURLConnection.setConnectTimeout(Indexable.MAX_STRING_LENGTH);
        this.zzbof = httpURLConnection;
        HttpURLConnection httpURLConnection2 = this.zzbof;
        int responseCode = httpURLConnection2.getResponseCode();
        if (responseCode == 200) {
            this.zzbog = httpURLConnection2.getInputStream();
            return this.zzbog;
        }
        StringBuilder sb = new StringBuilder(25);
        sb.append("Bad response: ");
        sb.append(responseCode);
        String sb2 = sb.toString();
        if (responseCode == 404) {
            throw new FileNotFoundException(sb2);
        } else if (responseCode == 503) {
            throw new zzsf(sb2);
        } else {
            throw new IOException(sb2);
        }
    }
}
