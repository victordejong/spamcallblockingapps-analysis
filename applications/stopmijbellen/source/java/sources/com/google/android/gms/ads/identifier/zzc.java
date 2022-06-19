package com.google.android.gms.ads.identifier;

import android.util.Log;
import com.google.android.gms.internal.ads_identifier.zzi;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/identifier/zzc.class */
public final class zzc {
    /* JADX WARN: Finally extract failed */
    public static final void zza(String str) {
        Exception e;
        try {
            try {
                zzi.zzb(263);
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode < 200 || responseCode >= 300) {
                        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 65);
                        sb.append("Received non-success response code ");
                        sb.append(responseCode);
                        sb.append(" from pinging URL: ");
                        sb.append(str);
                        Log.w("HttpUrlPinger", sb.toString());
                    }
                    httpURLConnection.disconnect();
                    zzi.zza();
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
                Log.w("HttpUrlPinger", sb2.toString(), e);
                zzi.zza();
            } catch (IndexOutOfBoundsException e3) {
                String message2 = e3.getMessage();
                StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message2).length());
                sb3.append("Error while parsing ping URL: ");
                sb3.append(str);
                sb3.append(". ");
                sb3.append(message2);
                Log.w("HttpUrlPinger", sb3.toString(), e3);
                zzi.zza();
            } catch (RuntimeException e4) {
                e = e4;
                String message3 = e.getMessage();
                StringBuilder sb22 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message3).length());
                sb22.append("Error while pinging URL: ");
                sb22.append(str);
                sb22.append(". ");
                sb22.append(message3);
                Log.w("HttpUrlPinger", sb22.toString(), e);
                zzi.zza();
            }
        } catch (Throwable th2) {
            zzi.zza();
            throw th2;
        }
    }
}
