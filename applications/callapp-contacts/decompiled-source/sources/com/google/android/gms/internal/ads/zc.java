package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zc.class */
public final class zc implements yr {

    /* renamed from: a  reason: collision with root package name */
    private final String f28572a;

    public zc() {
        this(null);
    }

    public zc(String str) {
        this.f28572a = str;
    }

    @Override // com.google.android.gms.internal.ads.yr
    public final void zzen(String str) {
        Exception e;
        try {
            String valueOf = String.valueOf(str);
            za.zzdz(valueOf.length() != 0 ? "Pinging URL: ".concat(valueOf) : new String("Pinging URL: "));
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                ekb.a();
                yq.a(httpURLConnection, this.f28572a);
                yu yuVar = new yu();
                yuVar.a(httpURLConnection, (byte[]) null);
                int responseCode = httpURLConnection.getResponseCode();
                yuVar.a(httpURLConnection, responseCode);
                if (responseCode < 200 || responseCode >= 300) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 65);
                    sb.append("Received non-success response code ");
                    sb.append(responseCode);
                    sb.append(" from pinging URL: ");
                    sb.append(str);
                    za.zzez(sb.toString());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e2) {
            e = e2;
            String message = e.getMessage();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message).length());
            sb2.append("Error while pinging URL: ");
            sb2.append(str);
            sb2.append(". ");
            sb2.append(message);
            za.zzez(sb2.toString());
        } catch (IndexOutOfBoundsException e3) {
            String message2 = e3.getMessage();
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message2).length());
            sb3.append("Error while parsing ping URL: ");
            sb3.append(str);
            sb3.append(". ");
            sb3.append(message2);
            za.zzez(sb3.toString());
        } catch (RuntimeException e4) {
            e = e4;
            String message3 = e.getMessage();
            StringBuilder sb22 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message3).length());
            sb22.append("Error while pinging URL: ");
            sb22.append(str);
            sb22.append(". ");
            sb22.append(message3);
            za.zzez(sb22.toString());
        }
    }
}
