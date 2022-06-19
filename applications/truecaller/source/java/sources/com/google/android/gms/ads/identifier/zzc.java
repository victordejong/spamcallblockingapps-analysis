package com.google.android.gms.ads.identifier;

import com.google.android.gms.internal.ads_identifier.zzi;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/identifier/zzc.class */
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
                        String.valueOf(str).length();
                    }
                    httpURLConnection.disconnect();
                    zzi.zza();
                } catch (Throwable th) {
                    httpURLConnection.disconnect();
                    throw th;
                }
            } catch (Throwable th2) {
                zzi.zza();
                throw th2;
            }
        } catch (IOException e2) {
            e = e2;
            String message = e.getMessage();
            String.valueOf(str).length();
            String.valueOf(message).length();
            zzi.zza();
        } catch (IndexOutOfBoundsException e3) {
            String message2 = e3.getMessage();
            String.valueOf(str).length();
            String.valueOf(message2).length();
            zzi.zza();
        } catch (RuntimeException e4) {
            e = e4;
            String message3 = e.getMessage();
            String.valueOf(str).length();
            String.valueOf(message3).length();
            zzi.zza();
        }
    }
}
