package p131c.p161d.p170b.p173b.p174h;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.android.volley.Request;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.firebase.encoders.EncodingException;
import com.google.logging.type.LogSeverity;
import com.mopub.common.AdType;
import com.mopub.network.ImpressionData;
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
import p131c.p161d.p170b.p173b.C2493b;
import p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2506a;
import p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2532j;
import p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k;
import p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l;
import p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2537m;
import p131c.p161d.p170b.p173b.p176i.AbstractC2562h;
import p131c.p161d.p170b.p173b.p176i.C2561g;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2588f;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2596l;
import p131c.p161d.p170b.p173b.p176i.p182w.C2601a;
import p131c.p161d.p170b.p173b.p176i.p183x.C2603b;
import p131c.p161d.p282e.p310n.AbstractC5455a;
/* renamed from: c.d.b.b.h.d */
/* loaded from: classes-dex2jar.jar:c/d/b/b/h/d.class */
public final class C2502d implements AbstractC2596l {

    /* renamed from: a */
    public final AbstractC5455a f9488a;

    /* renamed from: b */
    public final ConnectivityManager f9489b;

    /* renamed from: c */
    public final Context f9490c;

    /* renamed from: d */
    public final URL f9491d;

    /* renamed from: e */
    public final AbstractC2541a f9492e;

    /* renamed from: f */
    public final AbstractC2541a f9493f;

    /* renamed from: g */
    public final int f9494g;

    /* renamed from: c.d.b.b.h.d$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/d$a.class */
    public static final class C2503a {

        /* renamed from: a */
        public final URL f9495a;

        /* renamed from: b */
        public final AbstractC2532j f9496b;

        /* renamed from: c */
        public final String f9497c;

        public C2503a(URL url, AbstractC2532j jVar, String str) {
            this.f9495a = url;
            this.f9496b = jVar;
            this.f9497c = str;
        }

        /* renamed from: a */
        public C2503a m29638a(URL url) {
            return new C2503a(url, this.f9496b, this.f9497c);
        }
    }

    /* renamed from: c.d.b.b.h.d$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/d$b.class */
    public static final class C2504b {

        /* renamed from: a */
        public final int f9498a;

        /* renamed from: b */
        public final URL f9499b;

        /* renamed from: c */
        public final long f9500c;

        public C2504b(int i, URL url, long j) {
            this.f9498a = i;
            this.f9499b = url;
            this.f9500c = j;
        }
    }

    public C2502d(Context context, AbstractC2541a aVar, AbstractC2541a aVar2) {
        this(context, aVar, aVar2, 40000);
    }

    public C2502d(Context context, AbstractC2541a aVar, AbstractC2541a aVar2, int i) {
        this.f9488a = AbstractC2532j.m29602b();
        this.f9490c = context;
        this.f9489b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f9491d = m29642a(C2499a.f9479c);
        this.f9492e = aVar2;
        this.f9493f = aVar;
        this.f9494g = i;
    }

    /* renamed from: a */
    public static int m29648a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            C2601a.m29447a("CctTransportBackend", "Unable to find version code for package", (Throwable) e);
            return -1;
        }
    }

    /* renamed from: a */
    public static int m29647a(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return NetworkConnectionInfo.MobileSubtype.UNKNOWN_MOBILE_SUBTYPE.getValue();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return NetworkConnectionInfo.MobileSubtype.COMBINED.getValue();
        }
        if (NetworkConnectionInfo.MobileSubtype.forNumber(subtype) == null) {
            subtype = 0;
        }
        return subtype;
    }

    /* renamed from: a */
    public static long m29649a() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    /* renamed from: a */
    public static /* synthetic */ C2503a m29645a(C2503a aVar, C2504b bVar) {
        URL url = bVar.f9499b;
        if (url == null) {
            return null;
        }
        C2601a.m29448a("CctTransportBackend", "Following redirect to: %s", url);
        return aVar.m29638a(bVar.f9499b);
    }

    /* renamed from: a */
    public static InputStream m29643a(InputStream inputStream, String str) throws IOException {
        return "gzip".equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    /* renamed from: a */
    public static URL m29642a(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Invalid url: " + str, e);
        }
    }

    /* renamed from: b */
    public static int m29640b(NetworkInfo networkInfo) {
        return networkInfo == null ? NetworkConnectionInfo.NetworkType.NONE.getValue() : networkInfo.getType();
    }

    /* renamed from: b */
    public static TelephonyManager m29641b(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    /* renamed from: a */
    public final C2504b m29646a(C2503a aVar) throws IOException {
        Throwable e;
        Throwable e2;
        C2601a.m29448a("CctTransportBackend", "Making request to: %s", aVar.f9495a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.f9495a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f9494g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "2.3.2"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = aVar.f9497c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                this.f9488a.mo23738a(aVar.f9496b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                C2601a.m29449a("CctTransportBackend", "Status Code: " + responseCode);
                C2601a.m29449a("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField("Content-Type"));
                C2601a.m29449a("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
                if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                    return new C2504b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                }
                if (responseCode != 200) {
                    return new C2504b(responseCode, null, 0L);
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    InputStream a = m29643a(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                    C2504b bVar = new C2504b(responseCode, null, AbstractC2537m.m29563a(new BufferedReader(new InputStreamReader(a))).mo29565a());
                    if (a != null) {
                        a.close();
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
            C2601a.m29447a("CctTransportBackend", "Couldn't encode request, returning with 400", e2);
            return new C2504b(LogSeverity.WARNING_VALUE, null, 0L);
        } catch (ConnectException e4) {
            e = e4;
            C2601a.m29447a("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C2504b(500, null, 0L);
        } catch (UnknownHostException e5) {
            e = e5;
            C2601a.m29447a("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C2504b(500, null, 0L);
        } catch (IOException e6) {
            e2 = e6;
            C2601a.m29447a("CctTransportBackend", "Couldn't encode request, returning with 400", e2);
            return new C2504b(LogSeverity.WARNING_VALUE, null, 0L);
        }
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2596l
    /* renamed from: a */
    public AbstractC2562h mo29458a(AbstractC2562h hVar) {
        NetworkInfo activeNetworkInfo = this.f9489b.getActiveNetworkInfo();
        AbstractC2562h.AbstractC2563a h = hVar.m29536h();
        h.m29529a("sdk-version", Build.VERSION.SDK_INT);
        h.m29527a("model", Build.MODEL);
        h.m29527a("hardware", Build.HARDWARE);
        h.m29527a("device", Build.DEVICE);
        h.m29527a(AppLovinEventTypes.USER_VIEWED_PRODUCT, Build.PRODUCT);
        h.m29527a("os-uild", Build.ID);
        h.m29527a("manufacturer", Build.MANUFACTURER);
        h.m29527a("fingerprint", Build.FINGERPRINT);
        h.m29528a("tz-offset", m29649a());
        h.m29529a("net-type", m29640b(activeNetworkInfo));
        h.m29529a("mobile-subtype", m29647a(activeNetworkInfo));
        h.m29527a(ImpressionData.COUNTRY, Locale.getDefault().getCountry());
        h.m29527a("locale", Locale.getDefault().getLanguage());
        h.m29527a("mcc_mnc", m29641b(this.f9490c).getSimOperator());
        h.m29527a("application_build", Integer.toString(m29648a(this.f9490c)));
        return h.mo29534a();
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2596l
    /* renamed from: a */
    public BackendResponse mo29457a(AbstractC2588f fVar) {
        AbstractC2532j b = m29639b(fVar);
        URL url = this.f9491d;
        byte[] b2 = fVar.mo29477b();
        String str = null;
        String str2 = null;
        URL url2 = url;
        if (b2 != null) {
            try {
                C2499a a = C2499a.m29655a(fVar.mo29477b());
                if (a.m29653c() != null) {
                    str2 = a.m29653c();
                }
                url2 = url;
                str = str2;
                if (a.m29652d() != null) {
                    url2 = m29642a(a.m29652d());
                    str = str2;
                }
            } catch (IllegalArgumentException e) {
                return BackendResponse.m18739c();
            }
        }
        try {
            C2504b bVar = (C2504b) C2603b.m29444a(5, new C2503a(url2, b, str), C2500b.m29651a(this), C2501c.m29650a());
            if (bVar.f9498a == 200) {
                return BackendResponse.m18741a(bVar.f9500c);
            }
            if (bVar.f9498a < 500 && bVar.f9498a != 404) {
                return BackendResponse.m18739c();
            }
            return BackendResponse.m18738d();
        } catch (IOException e2) {
            C2601a.m29447a("CctTransportBackend", "Could not make request to the backend", (Throwable) e2);
            return BackendResponse.m18738d();
        }
    }

    /* renamed from: b */
    public final AbstractC2532j m29639b(AbstractC2588f fVar) {
        AbstractC2533k.AbstractC2534a a;
        HashMap hashMap = new HashMap();
        for (AbstractC2562h hVar : fVar.mo29478a()) {
            String f = hVar.mo29538f();
            if (!hashMap.containsKey(f)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(hVar);
                hashMap.put(f, arrayList);
            } else {
                ((List) hashMap.get(f)).add(hVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            AbstractC2562h hVar2 = (AbstractC2562h) ((List) entry.getValue()).get(0);
            AbstractC2535l.AbstractC2536a h = AbstractC2535l.m29576h();
            h.mo29571a(QosTier.DEFAULT);
            h.mo29573a(this.f9493f.mo29554a());
            h.mo29567b(this.f9492e.mo29554a());
            ClientInfo.AbstractC7116a c = ClientInfo.m18752c();
            c.mo18749a(ClientInfo.ClientType.ANDROID_FIREBASE);
            AbstractC2506a.AbstractC2507a m = AbstractC2506a.m29636m();
            m.mo29616a(Integer.valueOf(hVar2.m29543b("sdk-version")));
            m.mo29607i(hVar2.m29545a("model"));
            m.mo29611e(hVar2.m29545a("hardware"));
            m.mo29613c(hVar2.m29545a("device"));
            m.mo29605k(hVar2.m29545a(AppLovinEventTypes.USER_VIEWED_PRODUCT));
            m.mo29606j(hVar2.m29545a("os-uild"));
            m.mo29609g(hVar2.m29545a("manufacturer"));
            m.mo29612d(hVar2.m29545a("fingerprint"));
            m.mo29614b(hVar2.m29545a(ImpressionData.COUNTRY));
            m.mo29610f(hVar2.m29545a("locale"));
            m.mo29608h(hVar2.m29545a("mcc_mnc"));
            m.mo29615a(hVar2.m29545a("application_build"));
            c.mo18750a(m.mo29617a());
            h.mo29572a(c.mo18751a());
            try {
                h.m29574a(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException e) {
                h.m29566b((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (AbstractC2562h hVar3 : (List) entry.getValue()) {
                C2561g c2 = hVar3.mo29542c();
                C2493b b = c2.m29547b();
                if (b.equals(C2493b.m29661a("proto"))) {
                    a = AbstractC2533k.m29599a(c2.m29548a());
                } else if (b.equals(C2493b.m29661a(AdType.STATIC_NATIVE))) {
                    a = AbstractC2533k.m29600a(new String(c2.m29548a(), Charset.forName(Request.DEFAULT_PARAMS_ENCODING)));
                } else {
                    C2601a.m29445b("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", b);
                }
                a.mo29590a(hVar3.mo29540d());
                a.mo29585b(hVar3.mo29537g());
                a.mo29584c(hVar3.m29541c("tz-offset"));
                NetworkConnectionInfo.AbstractC7117a c3 = NetworkConnectionInfo.m18746c();
                c3.mo18743a(NetworkConnectionInfo.NetworkType.forNumber(hVar3.m29543b("net-type")));
                c3.mo18744a(NetworkConnectionInfo.MobileSubtype.forNumber(hVar3.m29543b("mobile-subtype")));
                a.mo29589a(c3.mo18745a());
                if (hVar3.mo29544b() != null) {
                    a.mo29588a(hVar3.mo29544b());
                }
                arrayList3.add(a.mo29591a());
            }
            h.mo29568a(arrayList3);
            arrayList2.add(h.mo29575a());
        }
        return AbstractC2532j.m29603a(arrayList2);
    }
}
