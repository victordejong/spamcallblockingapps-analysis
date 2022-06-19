package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* renamed from: com.google.android.gms.internal.ads.yf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yf.class */
public final class C3649yf implements AbstractC3635xs {

    /* renamed from: a */
    private final String f17641a;

    public C3649yf() {
        this(null);
    }

    public C3649yf(String str) {
        this.f17641a = str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3635xs
    /* renamed from: a */
    public final void mo6739a(String str) {
        try {
            String valueOf = String.valueOf(str);
            C3645yb.m6751b(valueOf.length() != 0 ? "Pinging URL: ".concat(valueOf) : new String("Pinging URL: "));
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            dyx.m8162a();
            C3634xr.m6792a(true, httpURLConnection, this.f17641a);
            C3638xv c3638xv = new C3638xv();
            c3638xv.m6769a(httpURLConnection, (byte[]) null);
            int responseCode = httpURLConnection.getResponseCode();
            c3638xv.m6770a(httpURLConnection, responseCode);
            if (responseCode < 200 || responseCode >= 300) {
                C3645yb.m6745e(new StringBuilder(String.valueOf(str).length() + 65).append("Received non-success response code ").append(responseCode).append(" from pinging URL: ").append(str).toString());
            }
            httpURLConnection.disconnect();
        } catch (IOException e) {
            String message = e.getMessage();
            C3645yb.m6745e(new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message).length()).append("Error while pinging URL: ").append(str).append(". ").append(message).toString());
        } catch (IndexOutOfBoundsException e2) {
            String message2 = e2.getMessage();
            C3645yb.m6745e(new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message2).length()).append("Error while parsing ping URL: ").append(str).append(". ").append(message2).toString());
        } catch (RuntimeException e3) {
            String message3 = e3.getMessage();
            C3645yb.m6745e(new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message3).length()).append("Error while pinging URL: ").append(str).append(". ").append(message3).toString());
        }
    }
}
