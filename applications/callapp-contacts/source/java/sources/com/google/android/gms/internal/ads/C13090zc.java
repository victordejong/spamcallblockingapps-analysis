package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* renamed from: com.google.android.gms.internal.ads.zc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zc.class */
public final class C13090zc implements AbstractC13078yr {

    /* renamed from: a */
    private final String f50117a;

    public C13090zc() {
        this(null);
    }

    public C13090zc(String str) {
        this.f50117a = str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13078yr
    public final void zzen(String str) {
        Exception e;
        try {
            String valueOf = String.valueOf(str);
            C13088za.zzdz(valueOf.length() != 0 ? "Pinging URL: ".concat(valueOf) : new String("Pinging URL: "));
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                ekb.m14835a();
                C13077yq.m13940a(httpURLConnection, this.f50117a);
                C13081yu c13081yu = new C13081yu();
                c13081yu.m13916a(httpURLConnection, (byte[]) null);
                int responseCode = httpURLConnection.getResponseCode();
                c13081yu.m13917a(httpURLConnection, responseCode);
                if (responseCode < 200 || responseCode >= 300) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 65);
                    sb.append("Received non-success response code ");
                    sb.append(responseCode);
                    sb.append(" from pinging URL: ");
                    sb.append(str);
                    C13088za.zzez(sb.toString());
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
            C13088za.zzez(sb2.toString());
        } catch (IndexOutOfBoundsException e3) {
            String message2 = e3.getMessage();
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message2).length());
            sb3.append("Error while parsing ping URL: ");
            sb3.append(str);
            sb3.append(". ");
            sb3.append(message2);
            C13088za.zzez(sb3.toString());
        } catch (RuntimeException e4) {
            e = e4;
            String message3 = e.getMessage();
            StringBuilder sb22 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message3).length());
            sb22.append("Error while pinging URL: ");
            sb22.append(str);
            sb22.append(". ");
            sb22.append(message3);
            C13088za.zzez(sb22.toString());
        }
    }
}
