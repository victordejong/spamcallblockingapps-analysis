package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgy.class */
public class zzcgy implements zzcgl {
    private final String zza;

    public zzcgy() {
        this.zza = null;
    }

    public zzcgy(String str) {
        this.zza = str;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.internal.ads.zzcgl
    public void zza(String str) {
        Exception e;
        try {
            String valueOf = String.valueOf(str);
            zzcgt.zzd(valueOf.length() != 0 ? "Pinging URL: ".concat(valueOf) : new String("Pinging URL: "));
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                zzber.zza();
                String str2 = this.zza;
                httpURLConnection.setConnectTimeout(60000);
                httpURLConnection.setInstanceFollowRedirects(true);
                httpURLConnection.setReadTimeout(60000);
                if (str2 != null) {
                    httpURLConnection.setRequestProperty("User-Agent", str2);
                }
                httpURLConnection.setUseCaches(false);
                zzcgs zzcgsVar = new zzcgs(null);
                zzcgsVar.zza(httpURLConnection, null);
                int responseCode = httpURLConnection.getResponseCode();
                zzcgsVar.zzc(httpURLConnection, responseCode);
                if (responseCode < 200 || responseCode >= 300) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 65);
                    sb.append("Received non-success response code ");
                    sb.append(responseCode);
                    sb.append(" from pinging URL: ");
                    sb.append(str);
                    zzcgt.zzi(sb.toString());
                }
                httpURLConnection.disconnect();
            } catch (Throwable th) {
                httpURLConnection.disconnect();
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            String message = e.getMessage();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message).length());
            sb2.append("Error while pinging URL: ");
            sb2.append(str);
            sb2.append(". ");
            sb2.append(message);
            zzcgt.zzi(sb2.toString());
        } catch (IndexOutOfBoundsException e3) {
            String message2 = e3.getMessage();
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message2).length());
            sb3.append("Error while parsing ping URL: ");
            sb3.append(str);
            sb3.append(". ");
            sb3.append(message2);
            zzcgt.zzi(sb3.toString());
        } catch (RuntimeException e4) {
            e = e4;
            String message3 = e.getMessage();
            StringBuilder sb22 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message3).length());
            sb22.append("Error while pinging URL: ");
            sb22.append(str);
            sb22.append(". ");
            sb22.append(message3);
            zzcgt.zzi(sb22.toString());
        }
    }
}
