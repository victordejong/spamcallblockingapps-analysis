package com.google.android.gms.ads.p120c;

import android.net.Uri;
import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.ads.c.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/c/b.class */
public final class C2279b extends Thread {

    /* renamed from: a */
    private final /* synthetic */ Map f6588a;

    public C2279b(C2276a c2276a, Map map) {
        this.f6588a = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new C2281d();
        Map map = this.f6588a;
        Uri.Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        for (String str : map.keySet()) {
            buildUpon.appendQueryParameter(str, (String) map.get(str));
        }
        String uri = buildUpon.build().toString();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri).openConnection();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode < 200 || responseCode >= 300) {
                    Log.w("HttpUrlPinger", new StringBuilder(String.valueOf(uri).length() + 65).append("Received non-success response code ").append(responseCode).append(" from pinging URL: ").append(uri).toString());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e) {
            e = e;
            String message = e.getMessage();
            Log.w("HttpUrlPinger", new StringBuilder(String.valueOf(uri).length() + 27 + String.valueOf(message).length()).append("Error while pinging URL: ").append(uri).append(". ").append(message).toString(), e);
        } catch (IndexOutOfBoundsException e2) {
            String message2 = e2.getMessage();
            Log.w("HttpUrlPinger", new StringBuilder(String.valueOf(uri).length() + 32 + String.valueOf(message2).length()).append("Error while parsing ping URL: ").append(uri).append(". ").append(message2).toString(), e2);
        } catch (RuntimeException e3) {
            e = e3;
            String message3 = e.getMessage();
            Log.w("HttpUrlPinger", new StringBuilder(String.valueOf(uri).length() + 27 + String.valueOf(message3).length()).append("Error while pinging URL: ").append(uri).append(". ").append(message3).toString(), e);
        }
    }
}
