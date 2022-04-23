package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.callapp.contacts.model.Constants;
import com.google.android.datatransport.cct.a.j;
import com.google.android.datatransport.cct.a.k;
import com.google.android.datatransport.cct.a.l;
import com.google.android.datatransport.cct.a.m;
import com.google.android.datatransport.cct.a.n;
import com.google.android.datatransport.cct.a.o;
import com.google.android.datatransport.cct.a.p;
import com.google.android.datatransport.cct.b;
import com.google.android.datatransport.runtime.backends.f;
import com.google.android.datatransport.runtime.backends.g;
import com.google.android.datatransport.runtime.backends.m;
import com.google.android.datatransport.runtime.g;
import com.google.android.datatransport.runtime.h;
import com.google.firebase.encoders.EncodingException;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/b.class */
final class b implements m {

    /* renamed from: a  reason: collision with root package name */
    final URL f20373a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.firebase.encoders.a f20374b;

    /* renamed from: c  reason: collision with root package name */
    private final ConnectivityManager f20375c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f20376d;
    private final com.google.android.datatransport.runtime.d.a e;
    private final com.google.android.datatransport.runtime.d.a f;
    private final int g;

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/b$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final URL f20377a;

        /* renamed from: b  reason: collision with root package name */
        final j f20378b;

        /* renamed from: c  reason: collision with root package name */
        final String f20379c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(URL url, j jVar, String str) {
            this.f20377a = url;
            this.f20378b = jVar;
            this.f20379c = str;
        }
    }

    /* renamed from: com.google.android.datatransport.cct.b$b  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/b$b.class */
    static final class C0414b {

        /* renamed from: a  reason: collision with root package name */
        final int f20380a;

        /* renamed from: b  reason: collision with root package name */
        final URL f20381b;

        /* renamed from: c  reason: collision with root package name */
        final long f20382c;

        C0414b(int i, URL url, long j) {
            this.f20380a = i;
            this.f20381b = url;
            this.f20382c = j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, com.google.android.datatransport.runtime.d.a aVar, com.google.android.datatransport.runtime.d.a aVar2) {
        this(context, aVar, aVar2, PangleAdapterConfiguration.CONTENT_TYPE_ERROR);
    }

    b(Context context, com.google.android.datatransport.runtime.d.a aVar, com.google.android.datatransport.runtime.d.a aVar2, int i) {
        this.f20374b = j.b();
        this.f20376d = context;
        this.f20375c = (ConnectivityManager) context.getSystemService("connectivity");
        this.f20373a = a(com.google.android.datatransport.cct.a.f20314a);
        this.e = aVar2;
        this.f = aVar;
        this.g = i;
    }

    private static int a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            com.google.android.datatransport.runtime.b.a.a("CctTransportBackend", "Unable to find version code for package", (Throwable) e);
            return -1;
        }
    }

    private static URL a(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Invalid url: ".concat(String.valueOf(str)), e);
        }
    }

    private j b(f fVar) {
        l.a a2;
        HashMap hashMap = new HashMap();
        for (h hVar : fVar.a()) {
            String a3 = hVar.a();
            if (!hashMap.containsKey(a3)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(hVar);
                hashMap.put(a3, arrayList);
            } else {
                ((List) hashMap.get(a3)).add(hVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            h hVar2 = (h) ((List) entry.getValue()).get(0);
            m.a a4 = com.google.android.datatransport.cct.a.m.h().a(p.DEFAULT).a(this.f.a()).b(this.e.a()).a(k.c().a(k.b.ANDROID_FIREBASE).a(com.google.android.datatransport.cct.a.a.m().a(Integer.valueOf(hVar2.a("sdk-version"))).a(hVar2.c("model")).b(hVar2.c("hardware")).c(hVar2.c("device")).d(hVar2.c("product")).e(hVar2.c("os-uild")).f(hVar2.c("manufacturer")).g(hVar2.c("fingerprint")).h(hVar2.c("country")).i(hVar2.c("locale")).j(hVar2.c("mcc_mnc")).k(hVar2.c("application_build")).a()).a());
            try {
                a4.a(Integer.valueOf(Integer.parseInt((String) entry.getKey())));
            } catch (NumberFormatException e) {
                a4.a((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (h hVar3 : (List) entry.getValue()) {
                g c2 = hVar3.c();
                com.google.android.datatransport.b bVar = c2.f20445a;
                if (bVar.equals(com.google.android.datatransport.b.a("proto"))) {
                    a2 = l.a(c2.f20446b);
                } else if (bVar.equals(com.google.android.datatransport.b.a("json"))) {
                    a2 = l.a(new String(c2.f20446b, Charset.forName("UTF-8")));
                } else {
                    Log.w(com.google.android.datatransport.runtime.b.a.a("CctTransportBackend"), String.format("Received event of unsupported encoding %s. Skipping...", bVar));
                }
                a2.a(hVar3.d()).b(hVar3.e()).c(hVar3.b("tz-offset")).a(o.c().a(o.c.forNumber(hVar3.a("net-type"))).a(o.b.forNumber(hVar3.a("mobile-subtype"))).a());
                if (hVar3.b() != null) {
                    a2.a(hVar3.b());
                }
                arrayList3.add(a2.a());
            }
            a4.a(arrayList3);
            arrayList2.add(a4.a());
        }
        return j.a(arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final C0414b a(a aVar) throws IOException {
        Throwable e;
        Throwable e2;
        com.google.android.datatransport.runtime.b.a.a("CctTransportBackend", "Making request to: %s", aVar.f20377a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.f20377a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "2.3.3"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        if (aVar.f20379c != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", aVar.f20379c);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                this.f20374b.encode(aVar.f20378b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                "Status Code: ".concat(String.valueOf(responseCode));
                com.google.android.datatransport.runtime.b.a.a("CctTransportBackend");
                new StringBuilder("Content-Type: ").append(httpURLConnection.getHeaderField("Content-Type"));
                com.google.android.datatransport.runtime.b.a.a("CctTransportBackend");
                new StringBuilder("Content-Encoding: ").append(httpURLConnection.getHeaderField("Content-Encoding"));
                com.google.android.datatransport.runtime.b.a.a("CctTransportBackend");
                if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                    return new C0414b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                }
                if (responseCode != 200) {
                    return new C0414b(responseCode, null, 0L);
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                    C0414b bVar = new C0414b(responseCode, null, n.a(new BufferedReader(new InputStreamReader(gZIPInputStream))).a());
                    if (gZIPInputStream != null) {
                        gZIPInputStream.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return bVar;
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th4) {
                    }
                }
                throw th3;
            }
        } catch (EncodingException e3) {
            e2 = e3;
            com.google.android.datatransport.runtime.b.a.a("CctTransportBackend", "Couldn't encode request, returning with 400", e2);
            return new C0414b(400, null, 0L);
        } catch (ConnectException e4) {
            e = e4;
            com.google.android.datatransport.runtime.b.a.a("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C0414b(500, null, 0L);
        } catch (UnknownHostException e5) {
            e = e5;
            com.google.android.datatransport.runtime.b.a.a("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C0414b(500, null, 0L);
        } catch (IOException e6) {
            e2 = e6;
            com.google.android.datatransport.runtime.b.a.a("CctTransportBackend", "Couldn't encode request, returning with 400", e2);
            return new C0414b(400, null, 0L);
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.m
    public final com.google.android.datatransport.runtime.backends.g a(f fVar) {
        Object a2;
        int i;
        j b2 = b(fVar);
        URL url = this.f20373a;
        byte[] b3 = fVar.b();
        String str = null;
        String str2 = null;
        URL url2 = url;
        if (b3 != null) {
            try {
                com.google.android.datatransport.cct.a a3 = com.google.android.datatransport.cct.a.a(fVar.b());
                if (a3.f != null) {
                    str2 = a3.f;
                }
                url2 = url;
                str = str2;
                if (a3.e != null) {
                    url2 = a(a3.e);
                    str = str2;
                }
            } catch (IllegalArgumentException e) {
                return com.google.android.datatransport.runtime.backends.g.d();
            }
        }
        int i2 = 5;
        try {
            Object aVar = new a(url2, b2, str);
            com.google.android.datatransport.runtime.c.a cVar = new com.google.android.datatransport.runtime.c.a(this) { // from class: com.google.android.datatransport.cct.c

                /* renamed from: a  reason: collision with root package name */
                private final b f20383a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f20383a = this;
                }

                @Override // com.google.android.datatransport.runtime.c.a
                public final Object a(Object obj) {
                    return this.f20383a.a((b.a) obj);
                }
            };
            com.google.android.datatransport.runtime.c.b a4 = d.a();
            do {
                a2 = cVar.a(aVar);
                aVar = a4.a(aVar, a2);
                if (aVar == null) {
                    break;
                }
                i = i2 - 1;
                i2 = i;
            } while (i > 0);
            C0414b bVar = (C0414b) a2;
            if (bVar.f20380a == 200) {
                return new com.google.android.datatransport.runtime.backends.b(g.a.OK, bVar.f20382c);
            }
            if (bVar.f20380a < 500 && bVar.f20380a != 404) {
                return com.google.android.datatransport.runtime.backends.g.d();
            }
            return com.google.android.datatransport.runtime.backends.g.c();
        } catch (IOException e2) {
            com.google.android.datatransport.runtime.b.a.a("CctTransportBackend", "Could not make request to the backend", (Throwable) e2);
            return com.google.android.datatransport.runtime.backends.g.c();
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.m
    public final h a(h hVar) {
        int i;
        NetworkInfo activeNetworkInfo = this.f20375c.getActiveNetworkInfo();
        h.a a2 = hVar.h().a("sdk-version", Build.VERSION.SDK_INT).a("model", Build.MODEL).a("hardware", Build.HARDWARE).a("device", Build.DEVICE).a("product", Build.PRODUCT).a("os-uild", Build.ID).a("manufacturer", Build.MANUFACTURER).a("fingerprint", Build.FINGERPRINT);
        Calendar.getInstance();
        h.a a3 = a2.a("tz-offset", TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000).a("net-type", activeNetworkInfo == null ? o.c.NONE.getValue() : activeNetworkInfo.getType());
        if (activeNetworkInfo == null) {
            i = o.b.UNKNOWN_MOBILE_SUBTYPE.getValue();
        } else {
            i = activeNetworkInfo.getSubtype();
            if (i == -1) {
                i = o.b.COMBINED.getValue();
            } else if (o.b.forNumber(i) == null) {
                i = 0;
            }
        }
        return a3.a("mobile-subtype", i).a("country", Locale.getDefault().getCountry()).a("locale", Locale.getDefault().getLanguage()).a("mcc_mnc", ((TelephonyManager) this.f20376d.getSystemService(Constants.EXTRA_PHONE_NUMBER)).getSimOperator()).a("application_build", Integer.toString(a(this.f20376d))).b();
    }
}
