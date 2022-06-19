package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.google.android.datatransport.C4602b;
import com.google.android.datatransport.cct.internal.AbstractC4613a;
import com.google.android.datatransport.cct.internal.AbstractC4639j;
import com.google.android.datatransport.cct.internal.AbstractC4640k;
import com.google.android.datatransport.cct.internal.AbstractC4642l;
import com.google.android.datatransport.cct.internal.AbstractC4644m;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.android.datatransport.p232h.AbstractC4664h;
import com.google.android.datatransport.p232h.C4663g;
import com.google.android.datatransport.p232h.p235v.C4687a;
import com.google.android.datatransport.p232h.p236w.C4689b;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import com.google.android.datatransport.runtime.backends.AbstractC4762f;
import com.google.android.datatransport.runtime.backends.AbstractC4770l;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.firebase.encoders.AbstractC9151a;
import com.google.firebase.encoders.EncodingException;
import com.yanzhenjie.nohttp.Headers;
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
/* renamed from: com.google.android.datatransport.cct.d */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/d.class */
public final class C4607d implements AbstractC4770l {

    /* renamed from: a */
    private final AbstractC9151a f14022a;

    /* renamed from: b */
    private final ConnectivityManager f14023b;

    /* renamed from: c */
    private final Context f14024c;

    /* renamed from: d */
    final URL f14025d;

    /* renamed from: e */
    private final AbstractC4746a f14026e;

    /* renamed from: f */
    private final AbstractC4746a f14027f;

    /* renamed from: g */
    private final int f14028g;

    /* renamed from: com.google.android.datatransport.cct.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/d$a.class */
    public static final class C4608a {

        /* renamed from: a */
        final URL f14029a;

        /* renamed from: b */
        final AbstractC4639j f14030b;

        /* renamed from: c */
        final String f14031c;

        C4608a(URL url, AbstractC4639j abstractC4639j, String str) {
            this.f14029a = url;
            this.f14030b = abstractC4639j;
            this.f14031c = str;
        }

        /* renamed from: a */
        C4608a m22160a(URL url) {
            return new C4608a(url, this.f14030b, this.f14031c);
        }
    }

    /* renamed from: com.google.android.datatransport.cct.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/d$b.class */
    public static final class C4609b {

        /* renamed from: a */
        final int f14032a;

        /* renamed from: b */
        final URL f14033b;

        /* renamed from: c */
        final long f14034c;

        C4609b(int i, URL url, long j) {
            this.f14032a = i;
            this.f14033b = url;
            this.f14034c = j;
        }
    }

    public C4607d(Context context, AbstractC4746a abstractC4746a, AbstractC4746a abstractC4746a2) {
        this(context, abstractC4746a, abstractC4746a2, 40000);
    }

    C4607d(Context context, AbstractC4746a abstractC4746a, AbstractC4746a abstractC4746a2, int i) {
        this.f14022a = AbstractC4639j.m22113b();
        this.f14024c = context;
        this.f14023b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f14025d = m22161m(C4604a.f14012a);
        this.f14026e = abstractC4746a2;
        this.f14027f = abstractC4746a;
        this.f14028g = i;
    }

    /* renamed from: d */
    public C4609b m22170d(C4608a c4608a) {
        Throwable e;
        Throwable e2;
        C4687a.m21993a("CctTransportBackend", "Making request to: %s", c4608a.f14029a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) c4608a.f14029a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f14028g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty(Headers.HEAD_KEY_USER_AGENT, String.format("datatransport/%s android/", "2.3.3"));
        httpURLConnection.setRequestProperty(Headers.HEAD_KEY_CONTENT_ENCODING, "gzip");
        httpURLConnection.setRequestProperty(Headers.HEAD_KEY_CONTENT_TYPE, Headers.HEAD_VALUE_CONTENT_TYPE_JSON);
        httpURLConnection.setRequestProperty(Headers.HEAD_KEY_ACCEPT_ENCODING, "gzip");
        String str = c4608a.f14031c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                this.f14022a.mo1692a(c4608a.f14030b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                C4687a.m21989e("CctTransportBackend", "Status Code: " + responseCode);
                C4687a.m21989e("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField(Headers.HEAD_KEY_CONTENT_TYPE));
                C4687a.m21989e("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField(Headers.HEAD_KEY_CONTENT_ENCODING));
                if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                    return new C4609b(responseCode, new URL(httpURLConnection.getHeaderField(Headers.HEAD_KEY_LOCATION)), 0L);
                }
                if (responseCode != 200) {
                    return new C4609b(responseCode, null, 0L);
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    InputStream m22162l = m22162l(inputStream, httpURLConnection.getHeaderField(Headers.HEAD_KEY_CONTENT_ENCODING));
                    C4609b c4609b = new C4609b(responseCode, null, AbstractC4644m.m22074b(new BufferedReader(new InputStreamReader(m22162l))).mo22073c());
                    if (m22162l != null) {
                        m22162l.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return c4609b;
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
            C4687a.m21991c("CctTransportBackend", "Couldn't encode request, returning with 400", e2);
            return new C4609b(400, null, 0L);
        } catch (ConnectException e4) {
            e = e4;
            C4687a.m21991c("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C4609b(500, null, 0L);
        } catch (UnknownHostException e5) {
            e = e5;
            C4687a.m21991c("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C4609b(500, null, 0L);
        } catch (IOException e6) {
            e2 = e6;
            C4687a.m21991c("CctTransportBackend", "Couldn't encode request, returning with 400", e2);
            return new C4609b(400, null, 0L);
        }
    }

    /* renamed from: e */
    private static int m22169e(NetworkInfo networkInfo) {
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

    /* renamed from: f */
    private static int m22168f(NetworkInfo networkInfo) {
        return networkInfo == null ? NetworkConnectionInfo.NetworkType.NONE.getValue() : networkInfo.getType();
    }

    /* renamed from: g */
    private static int m22167g(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            C4687a.m21991c("CctTransportBackend", "Unable to find version code for package", e);
            return -1;
        }
    }

    /* renamed from: h */
    private AbstractC4639j m22166h(AbstractC4762f abstractC4762f) {
        AbstractC4640k.AbstractC4641a m22102j;
        HashMap hashMap = new HashMap();
        for (AbstractC4664h abstractC4664h : abstractC4762f.mo21838b()) {
            String mo22056j = abstractC4664h.mo22056j();
            if (!hashMap.containsKey(mo22056j)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(abstractC4664h);
                hashMap.put(mo22056j, arrayList);
            } else {
                ((List) hashMap.get(mo22056j)).add(abstractC4664h);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            AbstractC4664h abstractC4664h2 = (AbstractC4664h) ((List) entry.getValue()).get(0);
            AbstractC4642l.AbstractC4643a mo22084b = AbstractC4642l.m22093a().mo22080f(QosTier.DEFAULT).mo22079g(this.f14027f.mo21847a()).mo22078h(this.f14026e.mo21847a()).mo22084b(ClientInfo.m22158a().mo22120c(ClientInfo.ClientType.ANDROID_FIREBASE).mo22121b(AbstractC4613a.m22156a().mo22125m(Integer.valueOf(abstractC4664h2.m22059g("sdk-version"))).mo22128j(abstractC4664h2.m22064b("model")).mo22132f(abstractC4664h2.m22064b("hardware")).mo22134d(abstractC4664h2.m22064b("device")).mo22126l(abstractC4664h2.m22064b("product")).mo22127k(abstractC4664h2.m22064b("os-uild")).mo22130h(abstractC4664h2.m22064b("manufacturer")).mo22133e(abstractC4664h2.m22064b("fingerprint")).mo22135c(abstractC4664h2.m22064b("country")).mo22131g(abstractC4664h2.m22064b("locale")).mo22129i(abstractC4664h2.m22064b("mcc_mnc")).mo22136b(abstractC4664h2.m22064b("application_build")).mo22137a()).mo22122a());
            try {
                mo22084b.m22077i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException e) {
                mo22084b.m22076j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (AbstractC4664h abstractC4664h3 : (List) entry.getValue()) {
                C4663g mo22061e = abstractC4664h3.mo22061e();
                C4602b m22066b = mo22061e.m22066b();
                if (m22066b.equals(C4602b.m22183b("proto"))) {
                    m22102j = AbstractC4640k.m22102j(mo22061e.m22067a());
                } else if (m22066b.equals(C4602b.m22183b("json"))) {
                    m22102j = AbstractC4640k.m22103i(new String(mo22061e.m22067a(), Charset.forName("UTF-8")));
                } else {
                    C4687a.m21988f("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", m22066b);
                }
                m22102j.mo22099c(abstractC4664h3.mo22060f()).mo22098d(abstractC4664h3.mo22055k()).mo22094h(abstractC4664h3.m22058h("tz-offset")).mo22097e(NetworkConnectionInfo.m22157a().mo22115c(NetworkConnectionInfo.NetworkType.forNumber(abstractC4664h3.m22059g("net-type"))).mo22116b(NetworkConnectionInfo.MobileSubtype.forNumber(abstractC4664h3.m22059g("mobile-subtype"))).mo22117a());
                if (abstractC4664h3.mo22062d() != null) {
                    m22102j.mo22100b(abstractC4664h3.mo22062d());
                }
                arrayList3.add(m22102j.mo22101a());
            }
            mo22084b.mo22083c(arrayList3);
            arrayList2.add(mo22084b.mo22085a());
        }
        return AbstractC4639j.m22114a(arrayList2);
    }

    /* renamed from: i */
    private static TelephonyManager m22165i(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    /* renamed from: j */
    static long m22164j() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    /* renamed from: k */
    public static /* synthetic */ C4608a m22163k(C4608a c4608a, C4609b c4609b) {
        URL url = c4609b.f14033b;
        if (url != null) {
            C4687a.m21993a("CctTransportBackend", "Following redirect to: %s", url);
            return c4608a.m22160a(c4609b.f14033b);
        }
        return null;
    }

    /* renamed from: l */
    private static InputStream m22162l(InputStream inputStream, String str) {
        return "gzip".equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    /* renamed from: m */
    private static URL m22161m(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Invalid url: " + str, e);
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC4770l
    /* renamed from: a */
    public BackendResponse mo21817a(AbstractC4762f abstractC4762f) {
        AbstractC4639j m22166h = m22166h(abstractC4762f);
        URL url = this.f14025d;
        String str = null;
        URL url2 = url;
        if (abstractC4762f.mo21837c() != null) {
            try {
                C4604a m22176d = C4604a.m22176d(abstractC4762f.mo21837c());
                String str2 = null;
                if (m22176d.m22175e() != null) {
                    str2 = m22176d.m22175e();
                }
                url2 = url;
                str = str2;
                if (m22176d.m22174f() != null) {
                    url2 = m22161m(m22176d.m22174f());
                    str = str2;
                }
            } catch (IllegalArgumentException e) {
                return BackendResponse.m21844a();
            }
        }
        try {
            C4609b c4609b = (C4609b) C4689b.m21986a(5, new C4608a(url2, m22166h, str), C4605b.m22173b(this), C4606c.m22172b());
            int i = c4609b.f14032a;
            return i == 200 ? BackendResponse.m21843d(c4609b.f14034c) : (i >= 500 || i == 404) ? BackendResponse.m21842e() : BackendResponse.m21844a();
        } catch (IOException e2) {
            C4687a.m21991c("CctTransportBackend", "Could not make request to the backend", e2);
            return BackendResponse.m21842e();
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC4770l
    /* renamed from: b */
    public AbstractC4664h mo21816b(AbstractC4664h abstractC4664h) {
        NetworkInfo activeNetworkInfo = this.f14023b.getActiveNetworkInfo();
        return abstractC4664h.m22054l().m22053a("sdk-version", Build.VERSION.SDK_INT).m22051c("model", Build.MODEL).m22051c("hardware", Build.HARDWARE).m22051c("device", Build.DEVICE).m22051c("product", Build.PRODUCT).m22051c("os-uild", Build.ID).m22051c("manufacturer", Build.MANUFACTURER).m22051c("fingerprint", Build.FINGERPRINT).m22052b("tz-offset", m22164j()).m22053a("net-type", m22168f(activeNetworkInfo)).m22053a("mobile-subtype", m22169e(activeNetworkInfo)).m22051c("country", Locale.getDefault().getCountry()).m22051c("locale", Locale.getDefault().getLanguage()).m22051c("mcc_mnc", m22165i(this.f14024c).getSimOperator()).m22051c("application_build", Integer.toString(m22167g(this.f14024c))).mo22050d();
    }
}
