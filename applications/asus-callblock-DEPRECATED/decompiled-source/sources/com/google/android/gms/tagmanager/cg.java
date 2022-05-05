package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cg.class */
final class cg implements i {

    /* renamed from: a  reason: collision with root package name */
    private final String f4353a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f4354b;
    private final b c;
    private final a d;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cg$a.class */
    public interface a {
        void a(w wVar);

        void b(w wVar);

        void c(w wVar);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cg$b.class */
    interface b {
        HttpURLConnection a(URL url);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cg(Context context, a aVar) {
        this(new b() { // from class: com.google.android.gms.tagmanager.cg.1
            @Override // com.google.android.gms.tagmanager.cg.b
            public final HttpURLConnection a(URL url) {
                return (HttpURLConnection) url.openConnection();
            }
        }, context, aVar);
    }

    private cg(b bVar, Context context, a aVar) {
        String str;
        this.c = bVar;
        this.f4354b = context.getApplicationContext();
        this.d = aVar;
        String str2 = Build.VERSION.RELEASE;
        Locale locale = Locale.getDefault();
        if (locale == null) {
            str = null;
        } else {
            str = null;
            if (locale.getLanguage() != null) {
                str = null;
                if (locale.getLanguage().length() != 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(locale.getLanguage().toLowerCase());
                    if (!(locale.getCountry() == null || locale.getCountry().length() == 0)) {
                        sb.append("-").append(locale.getCountry().toLowerCase());
                    }
                    str = sb.toString();
                }
            }
        }
        this.f4353a = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", "GoogleTagManager", "4.00", str2, str, Build.MODEL, Build.ID);
    }

    private static URL a(w wVar) {
        URL url;
        try {
            url = new URL(wVar.c);
        } catch (MalformedURLException e) {
            an.a("Error trying to parse the GTM url.");
            url = null;
        }
        return url;
    }

    @Override // com.google.android.gms.tagmanager.i
    public final void a(List<w> list) {
        int min = Math.min(list.size(), 40);
        boolean z = true;
        for (int i = 0; i < min; i++) {
            w wVar = list.get(i);
            URL a2 = a(wVar);
            if (a2 == null) {
                an.b("No destination: discarding hit.");
                this.d.b(wVar);
            } else {
                try {
                    HttpURLConnection a3 = this.c.a(a2);
                    z = z;
                    if (z) {
                        as.a(this.f4354b);
                        z = false;
                    }
                    a3.setRequestProperty("User-Agent", this.f4353a);
                    int responseCode = a3.getResponseCode();
                    InputStream inputStream = a3.getInputStream();
                    if (responseCode != 200) {
                        an.b(new StringBuilder(25).append("Bad response: ").append(responseCode).toString());
                        this.d.c(wVar);
                    } else {
                        this.d.a(wVar);
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    a3.disconnect();
                } catch (IOException e) {
                    String valueOf = String.valueOf(e.getClass().getSimpleName());
                    an.b(valueOf.length() != 0 ? "Exception sending hit: ".concat(valueOf) : new String("Exception sending hit: "));
                    an.b(e.getMessage());
                    this.d.c(wVar);
                    z = z;
                }
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.i
    public final boolean a() {
        boolean z;
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f4354b.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            an.e("...no network connectivity");
            z = false;
        } else {
            z = true;
        }
        return z;
    }
}
