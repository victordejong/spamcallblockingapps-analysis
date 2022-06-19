package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.callapp.contacts.model.Constants;
import com.google.android.datatransport.C10627b;
import com.google.android.datatransport.cct.C10670b;
import com.google.android.datatransport.cct.p315a.AbstractC10630a;
import com.google.android.datatransport.cct.p315a.AbstractC10656j;
import com.google.android.datatransport.cct.p315a.AbstractC10657k;
import com.google.android.datatransport.cct.p315a.AbstractC10660l;
import com.google.android.datatransport.cct.p315a.AbstractC10662m;
import com.google.android.datatransport.cct.p315a.AbstractC10664n;
import com.google.android.datatransport.cct.p315a.AbstractC10665o;
import com.google.android.datatransport.cct.p315a.EnumC10669p;
import com.google.android.datatransport.runtime.AbstractC10730h;
import com.google.android.datatransport.runtime.C10729g;
import com.google.android.datatransport.runtime.backends.AbstractC10700f;
import com.google.android.datatransport.runtime.backends.AbstractC10702g;
import com.google.android.datatransport.runtime.backends.AbstractC10710m;
import com.google.android.datatransport.runtime.backends.C10696b;
import com.google.android.datatransport.runtime.p318b.C10692a;
import com.google.android.datatransport.runtime.p319c.AbstractC10714a;
import com.google.android.datatransport.runtime.p319c.AbstractC10715b;
import com.google.android.datatransport.runtime.p320d.AbstractC10719a;
import com.google.firebase.encoders.AbstractC15732a;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.datatransport.cct.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/b.class */
public final class C10670b implements AbstractC10710m {

    /* renamed from: a */
    final URL f34502a;

    /* renamed from: b */
    private final AbstractC15732a f34503b;

    /* renamed from: c */
    private final ConnectivityManager f34504c;

    /* renamed from: d */
    private final Context f34505d;

    /* renamed from: e */
    private final AbstractC10719a f34506e;

    /* renamed from: f */
    private final AbstractC10719a f34507f;

    /* renamed from: g */
    private final int f34508g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.cct.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/b$a.class */
    public static final class C10671a {

        /* renamed from: a */
        final URL f34509a;

        /* renamed from: b */
        final AbstractC10656j f34510b;

        /* renamed from: c */
        final String f34511c;

        public C10671a(URL url, AbstractC10656j abstractC10656j, String str) {
            this.f34509a = url;
            this.f34510b = abstractC10656j;
            this.f34511c = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.cct.b$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/b$b.class */
    public static final class C10672b {

        /* renamed from: a */
        final int f34512a;

        /* renamed from: b */
        final URL f34513b;

        /* renamed from: c */
        final long f34514c;

        C10672b(int i, URL url, long j) {
            this.f34512a = i;
            this.f34513b = url;
            this.f34514c = j;
        }
    }

    public C10670b(Context context, AbstractC10719a abstractC10719a, AbstractC10719a abstractC10719a2) {
        this(context, abstractC10719a, abstractC10719a2, PangleAdapterConfiguration.CONTENT_TYPE_ERROR);
    }

    C10670b(Context context, AbstractC10719a abstractC10719a, AbstractC10719a abstractC10719a2, int i) {
        this.f34503b = AbstractC10656j.m22577b();
        this.f34505d = context;
        this.f34504c = (ConnectivityManager) context.getSystemService("connectivity");
        this.f34502a = m22526a(C10629a.f34394a);
        this.f34506e = abstractC10719a2;
        this.f34507f = abstractC10719a;
        this.f34508g = i;
    }

    /* renamed from: a */
    private static int m22528a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            C10692a.m22516a("CctTransportBackend", "Unable to find version code for package", (Throwable) e);
            return -1;
        }
    }

    /* renamed from: a */
    private static URL m22526a(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Invalid url: ".concat(String.valueOf(str)), e);
        }
    }

    /* renamed from: b */
    private AbstractC10656j m22525b(AbstractC10700f abstractC10700f) {
        AbstractC10660l.AbstractC10661a m22568a;
        HashMap hashMap = new HashMap();
        for (AbstractC10730h abstractC10730h : abstractC10700f.mo22514a()) {
            String mo22485a = abstractC10730h.mo22485a();
            if (!hashMap.containsKey(mo22485a)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(abstractC10730h);
                hashMap.put(mo22485a, arrayList);
            } else {
                ((List) hashMap.get(mo22485a)).add(abstractC10730h);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            AbstractC10730h abstractC10730h2 = (AbstractC10730h) ((List) entry.getValue()).get(0);
            AbstractC10662m.AbstractC10663a mo22543a = AbstractC10662m.m22546h().mo22542a(EnumC10669p.DEFAULT).mo22544a(this.f34507f.mo22491a()).mo22538b(this.f34506e.mo22491a()).mo22543a(AbstractC10657k.m22574c().mo22571a(AbstractC10657k.EnumC10659b.ANDROID_FIREBASE).mo22572a(AbstractC10630a.m22605m().mo22591a(Integer.valueOf(abstractC10730h2.m22484a("sdk-version"))).mo22590a(abstractC10730h2.m22480c("model")).mo22589b(abstractC10730h2.m22480c("hardware")).mo22588c(abstractC10730h2.m22480c("device")).mo22587d(abstractC10730h2.m22480c("product")).mo22586e(abstractC10730h2.m22480c("os-uild")).mo22585f(abstractC10730h2.m22480c("manufacturer")).mo22584g(abstractC10730h2.m22480c("fingerprint")).mo22583h(abstractC10730h2.m22480c("country")).mo22582i(abstractC10730h2.m22480c("locale")).mo22581j(abstractC10730h2.m22480c("mcc_mnc")).mo22580k(abstractC10730h2.m22480c("application_build")).mo22592a()).mo22573a());
            try {
                mo22543a.mo22541a(Integer.valueOf(Integer.parseInt((String) entry.getKey())));
            } catch (NumberFormatException e) {
                mo22543a.mo22540a((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (AbstractC10730h abstractC10730h3 : (List) entry.getValue()) {
                C10729g mo22481c = abstractC10730h3.mo22481c();
                C10627b c10627b = mo22481c.f34592a;
                if (c10627b.equals(C10627b.m22610a("proto"))) {
                    m22568a = AbstractC10660l.m22568a(mo22481c.f34593b);
                } else if (c10627b.equals(C10627b.m22610a("json"))) {
                    m22568a = AbstractC10660l.m22569a(new String(mo22481c.f34593b, Charset.forName("UTF-8")));
                } else {
                    Log.w(C10692a.m22518a("CctTransportBackend"), String.format("Received event of unsupported encoding %s. Skipping...", c10627b));
                }
                m22568a.mo22560a(abstractC10730h3.mo22479d()).mo22555b(abstractC10730h3.mo22478e()).mo22554c(abstractC10730h3.m22482b("tz-offset")).mo22559a(AbstractC10665o.m22532c().mo22529a(AbstractC10665o.EnumC10668c.forNumber(abstractC10730h3.m22484a("net-type"))).mo22530a(AbstractC10665o.EnumC10667b.forNumber(abstractC10730h3.m22484a("mobile-subtype"))).mo22531a());
                if (abstractC10730h3.mo22483b() != null) {
                    m22568a.mo22558a(abstractC10730h3.mo22483b());
                }
                arrayList3.add(m22568a.mo22561a());
            }
            mo22543a.mo22539a(arrayList3);
            arrayList2.add(mo22543a.mo22545a());
        }
        return AbstractC10656j.m22578a(arrayList2);
    }

    /* renamed from: a */
    public final C10672b m22527a(C10671a c10671a) throws IOException {
        Throwable e;
        Throwable e2;
        C10692a.m22517a("CctTransportBackend", "Making request to: %s", c10671a.f34509a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) c10671a.f34509a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f34508g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "2.3.3"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        if (c10671a.f34511c != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", c10671a.f34511c);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                this.f34503b.encode(c10671a.f34510b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                "Status Code: ".concat(String.valueOf(responseCode));
                C10692a.m22518a("CctTransportBackend");
                new StringBuilder("Content-Type: ").append(httpURLConnection.getHeaderField("Content-Type"));
                C10692a.m22518a("CctTransportBackend");
                new StringBuilder("Content-Encoding: ").append(httpURLConnection.getHeaderField("Content-Encoding"));
                C10692a.m22518a("CctTransportBackend");
                if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                    return new C10672b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                }
                if (responseCode != 200) {
                    return new C10672b(responseCode, null, 0L);
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                    C10672b c10672b = new C10672b(responseCode, null, AbstractC10664n.m22535a(new BufferedReader(new InputStreamReader(gZIPInputStream))).mo22537a());
                    if (gZIPInputStream != null) {
                        gZIPInputStream.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return c10672b;
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
            C10692a.m22516a("CctTransportBackend", "Couldn't encode request, returning with 400", e2);
            return new C10672b(400, null, 0L);
        } catch (ConnectException e4) {
            e = e4;
            C10692a.m22516a("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C10672b(500, null, 0L);
        } catch (UnknownHostException e5) {
            e = e5;
            C10692a.m22516a("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C10672b(500, null, 0L);
        } catch (IOException e6) {
            e2 = e6;
            C10692a.m22516a("CctTransportBackend", "Couldn't encode request, returning with 400", e2);
            return new C10672b(400, null, 0L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.datatransport.runtime.backends.AbstractC10710m
    /* renamed from: a */
    public final AbstractC10702g mo22498a(AbstractC10700f abstractC10700f) {
        Object mo22496a;
        int i;
        AbstractC10656j m22525b = m22525b(abstractC10700f);
        URL url = this.f34502a;
        String str = null;
        URL url2 = url;
        if (abstractC10700f.mo22513b() != null) {
            try {
                C10629a m22606a = C10629a.m22606a(abstractC10700f.mo22513b());
                String str2 = null;
                if (m22606a.f34401f != null) {
                    str2 = m22606a.f34401f;
                }
                url2 = url;
                str = str2;
                if (m22606a.f34400e != null) {
                    url2 = m22526a(m22606a.f34400e);
                    str = str2;
                }
            } catch (IllegalArgumentException e) {
                return AbstractC10702g.m22506d();
            }
        }
        int i2 = 5;
        try {
            C10671a c10671a = new C10671a(url2, m22525b, str);
            AbstractC10714a abstractC10714a = new AbstractC10714a(this) { // from class: com.google.android.datatransport.cct.c

                /* renamed from: a */
                private final C10670b f34515a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f34515a = this;
                }

                @Override // com.google.android.datatransport.runtime.p319c.AbstractC10714a
                /* renamed from: a */
                public final Object mo22496a(Object obj) {
                    return this.f34515a.m22527a((C10670b.C10671a) obj);
                }
            };
            AbstractC10715b m22524a = C10674d.m22524a();
            do {
                mo22496a = abstractC10714a.mo22496a(c10671a);
                c10671a = m22524a.mo22495a(c10671a, mo22496a);
                if (c10671a == null) {
                    break;
                }
                i = i2 - 1;
                i2 = i;
            } while (i > 0);
            C10672b c10672b = (C10672b) mo22496a;
            if (c10672b.f34512a == 200) {
                return new C10696b(AbstractC10702g.EnumC10703a.OK, c10672b.f34514c);
            }
            if (c10672b.f34512a < 500 && c10672b.f34512a != 404) {
                return AbstractC10702g.m22506d();
            }
            return AbstractC10702g.m22507c();
        } catch (IOException e2) {
            C10692a.m22516a("CctTransportBackend", "Could not make request to the backend", (Throwable) e2);
            return AbstractC10702g.m22507c();
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC10710m
    /* renamed from: a */
    public final AbstractC10730h mo22497a(AbstractC10730h abstractC10730h) {
        int i;
        NetworkInfo activeNetworkInfo = this.f34504c.getActiveNetworkInfo();
        AbstractC10730h.AbstractC10731a m22466a = abstractC10730h.m22475h().m22468a("sdk-version", Build.VERSION.SDK_INT).m22466a("model", Build.MODEL).m22466a("hardware", Build.HARDWARE).m22466a("device", Build.DEVICE).m22466a("product", Build.PRODUCT).m22466a("os-uild", Build.ID).m22466a("manufacturer", Build.MANUFACTURER).m22466a("fingerprint", Build.FINGERPRINT);
        Calendar.getInstance();
        AbstractC10730h.AbstractC10731a m22468a = m22466a.m22467a("tz-offset", TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000).m22468a("net-type", activeNetworkInfo == null ? AbstractC10665o.EnumC10668c.NONE.getValue() : activeNetworkInfo.getType());
        if (activeNetworkInfo == null) {
            i = AbstractC10665o.EnumC10667b.UNKNOWN_MOBILE_SUBTYPE.getValue();
        } else {
            i = activeNetworkInfo.getSubtype();
            if (i == -1) {
                i = AbstractC10665o.EnumC10667b.COMBINED.getValue();
            } else if (AbstractC10665o.EnumC10667b.forNumber(i) == null) {
                i = 0;
            }
        }
        return m22468a.m22468a("mobile-subtype", i).m22466a("country", Locale.getDefault().getCountry()).m22466a("locale", Locale.getDefault().getLanguage()).m22466a("mcc_mnc", ((TelephonyManager) this.f34505d.getSystemService(Constants.EXTRA_PHONE_NUMBER)).getSimOperator()).m22466a("application_build", Integer.toString(m22528a(this.f34505d))).mo22464b();
    }
}
