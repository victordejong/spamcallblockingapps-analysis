package com.facebook;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.C2191m;
import com.facebook.internal.C2060p;
import com.facebook.internal.C2063r;
import com.facebook.internal.C2077v;
import com.facebook.internal.C2079x;
import com.facebook.internal.C2084y;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.k */
/* loaded from: classes-dex2jar.jar:com/facebook/k.class */
public class C2102k {

    /* renamed from: b */
    private static final String f6188b;

    /* renamed from: c */
    private static String f6189c;

    /* renamed from: r */
    private static volatile String f6191r;

    /* renamed from: e */
    private C1803a f6192e;

    /* renamed from: f */
    private EnumC2195o f6193f;

    /* renamed from: g */
    private String f6194g;

    /* renamed from: h */
    private JSONObject f6195h;

    /* renamed from: i */
    private String f6196i;

    /* renamed from: j */
    private String f6197j;

    /* renamed from: k */
    private boolean f6198k;

    /* renamed from: l */
    private Bundle f6199l;

    /* renamed from: m */
    private AbstractC2108b f6200m;

    /* renamed from: n */
    private String f6201n;

    /* renamed from: o */
    private Object f6202o;

    /* renamed from: p */
    private String f6203p;

    /* renamed from: q */
    private boolean f6204q;

    /* renamed from: a */
    public static final String f6187a = C2102k.class.getSimpleName();

    /* renamed from: d */
    private static Pattern f6190d = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");

    /* renamed from: com.facebook.k$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/k$a.class */
    public static class C2107a {

        /* renamed from: a */
        private final C2102k f6212a;

        /* renamed from: b */
        private final Object f6213b;

        public C2107a(C2102k c2102k, Object obj) {
            this.f6212a = c2102k;
            this.f6213b = obj;
        }

        /* renamed from: a */
        public C2102k m15284a() {
            return this.f6212a;
        }

        /* renamed from: b */
        public Object m15283b() {
            return this.f6213b;
        }
    }

    /* renamed from: com.facebook.k$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/k$b.class */
    public interface AbstractC2108b {
        /* renamed from: a */
        void mo15229a(C2194n c2194n);
    }

    /* renamed from: com.facebook.k$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/k$c.class */
    public interface AbstractC2109c {
        /* renamed from: a */
        void mo1149a(JSONObject jSONObject, C2194n c2194n);
    }

    /* renamed from: com.facebook.k$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/k$d.class */
    public interface AbstractC2110d {
        /* renamed from: a */
        void mo15272a(String str, String str2);
    }

    /* renamed from: com.facebook.k$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/k$e.class */
    public interface AbstractC2111e extends AbstractC2108b {
        /* renamed from: a */
        void m15282a(long j, long j2);
    }

    /* renamed from: com.facebook.k$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/k$f.class */
    public static class C2112f<RESOURCE extends Parcelable> implements Parcelable {
        public static final Parcelable.Creator<C2112f> CREATOR = new Parcelable.Creator<C2112f>() { // from class: com.facebook.k.f.1
            /* renamed from: a */
            public C2112f createFromParcel(Parcel parcel) {
                return new C2112f(parcel);
            }

            /* renamed from: a */
            public C2112f[] newArray(int i) {
                return new C2112f[i];
            }
        };

        /* renamed from: a */
        private final String f6214a;

        /* renamed from: b */
        private final RESOURCE f6215b;

        private C2112f(Parcel parcel) {
            this.f6214a = parcel.readString();
            this.f6215b = (RESOURCE) parcel.readParcelable(C2095j.m15360h().getClassLoader());
        }

        public C2112f(RESOURCE resource, String str) {
            this.f6214a = str;
            this.f6215b = resource;
        }

        /* renamed from: a */
        public String m15281a() {
            return this.f6214a;
        }

        /* renamed from: b */
        public RESOURCE m15280b() {
            return this.f6215b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f6214a);
            parcel.writeParcelable(this.f6215b, i);
        }
    }

    /* renamed from: com.facebook.k$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/k$g.class */
    public static class C2114g implements AbstractC2110d {

        /* renamed from: a */
        private final OutputStream f6216a;

        /* renamed from: b */
        private final C2063r f6217b;

        /* renamed from: c */
        private boolean f6218c = true;

        /* renamed from: d */
        private boolean f6219d;

        public C2114g(OutputStream outputStream, C2063r c2063r, boolean z) {
            this.f6219d = false;
            this.f6216a = outputStream;
            this.f6217b = c2063r;
            this.f6219d = z;
        }

        /* renamed from: b */
        private RuntimeException m15267b() {
            return new IllegalArgumentException("value is not a supported type.");
        }

        /* renamed from: a */
        public void m15277a() {
            if (!this.f6219d) {
                m15266b("--%s", C2102k.f6188b);
            } else {
                this.f6216a.write("&".getBytes());
            }
        }

        /* renamed from: a */
        public void m15276a(String str, Bitmap bitmap) {
            m15271a(str, str, "image/png");
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.f6216a);
            m15266b("", new Object[0]);
            m15277a();
            if (this.f6217b != null) {
                this.f6217b.m15547a("    " + str, (Object) "<Image>");
            }
        }

        /* renamed from: a */
        public void m15275a(String str, Uri uri, String str2) {
            int m15477a;
            String str3 = str2;
            if (str2 == null) {
                str3 = "content/unknown";
            }
            m15271a(str, str, str3);
            if (this.f6216a instanceof C2203u) {
                ((C2203u) this.f6216a).m14951a(C2079x.m15438d(uri));
                m15477a = 0;
            } else {
                m15477a = C2079x.m15477a(C2095j.m15360h().getContentResolver().openInputStream(uri), this.f6216a) + 0;
            }
            m15266b("", new Object[0]);
            m15277a();
            if (this.f6217b != null) {
                this.f6217b.m15547a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(m15477a)));
            }
        }

        /* renamed from: a */
        public void m15274a(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) {
            int m15477a;
            String str3 = str2;
            if (str2 == null) {
                str3 = "content/unknown";
            }
            m15271a(str, str, str3);
            if (this.f6216a instanceof C2203u) {
                ((C2203u) this.f6216a).m14951a(parcelFileDescriptor.getStatSize());
                m15477a = 0;
            } else {
                m15477a = C2079x.m15477a((InputStream) new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.f6216a) + 0;
            }
            m15266b("", new Object[0]);
            m15277a();
            if (this.f6217b != null) {
                this.f6217b.m15547a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(m15477a)));
            }
        }

        /* renamed from: a */
        public void m15273a(String str, Object obj, C2102k c2102k) {
            if (this.f6216a instanceof AbstractC2206w) {
                ((AbstractC2206w) this.f6216a).mo14944a(c2102k);
            }
            if (C2102k.m15300e(obj)) {
                mo15272a(str, C2102k.m15297f(obj));
            } else if (obj instanceof Bitmap) {
                m15276a(str, (Bitmap) obj);
            } else if (obj instanceof byte[]) {
                m15269a(str, (byte[]) obj);
            } else if (obj instanceof Uri) {
                m15275a(str, (Uri) obj, (String) null);
            } else if (obj instanceof ParcelFileDescriptor) {
                m15274a(str, (ParcelFileDescriptor) obj, (String) null);
            } else if (!(obj instanceof C2112f)) {
                throw m15267b();
            } else {
                C2112f c2112f = (C2112f) obj;
                Parcelable m15280b = c2112f.m15280b();
                String m15281a = c2112f.m15281a();
                if (m15280b instanceof ParcelFileDescriptor) {
                    m15274a(str, (ParcelFileDescriptor) m15280b, m15281a);
                } else if (!(m15280b instanceof Uri)) {
                    throw m15267b();
                } else {
                    m15275a(str, (Uri) m15280b, m15281a);
                }
            }
        }

        @Override // com.facebook.C2102k.AbstractC2110d
        /* renamed from: a */
        public void mo15272a(String str, String str2) {
            m15271a(str, (String) null, (String) null);
            m15266b("%s", str2);
            m15277a();
            if (this.f6217b != null) {
                this.f6217b.m15547a("    " + str, (Object) str2);
            }
        }

        /* renamed from: a */
        public void m15271a(String str, String str2, String str3) {
            if (this.f6219d) {
                this.f6216a.write(String.format("%s=", str).getBytes());
                return;
            }
            m15268a("Content-Disposition: form-data; name=\"%s\"", str);
            if (str2 != null) {
                m15268a("; filename=\"%s\"", str2);
            }
            m15266b("", new Object[0]);
            if (str3 != null) {
                m15266b("%s: %s", "Content-Type", str3);
            }
            m15266b("", new Object[0]);
        }

        /* renamed from: a */
        public void m15270a(String str, JSONArray jSONArray, Collection<C2102k> collection) {
            if (!(this.f6216a instanceof AbstractC2206w)) {
                mo15272a(str, jSONArray.toString());
                return;
            }
            AbstractC2206w abstractC2206w = (AbstractC2206w) this.f6216a;
            m15271a(str, (String) null, (String) null);
            m15268a("[", new Object[0]);
            int i = 0;
            for (C2102k c2102k : collection) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                abstractC2206w.mo14944a(c2102k);
                if (i > 0) {
                    m15268a(",%s", jSONObject.toString());
                } else {
                    m15268a("%s", jSONObject.toString());
                }
                i++;
            }
            m15268a("]", new Object[0]);
            if (this.f6217b == null) {
                return;
            }
            this.f6217b.m15547a("    " + str, (Object) jSONArray.toString());
        }

        /* renamed from: a */
        public void m15269a(String str, byte[] bArr) {
            m15271a(str, str, "content/unknown");
            this.f6216a.write(bArr);
            m15266b("", new Object[0]);
            m15277a();
            if (this.f6217b != null) {
                this.f6217b.m15547a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(bArr.length)));
            }
        }

        /* renamed from: a */
        public void m15268a(String str, Object... objArr) {
            if (this.f6219d) {
                this.f6216a.write(URLEncoder.encode(String.format(Locale.US, str, objArr), "UTF-8").getBytes());
                return;
            }
            if (this.f6218c) {
                this.f6216a.write("--".getBytes());
                this.f6216a.write(C2102k.f6188b.getBytes());
                this.f6216a.write("\r\n".getBytes());
                this.f6218c = false;
            }
            this.f6216a.write(String.format(str, objArr).getBytes());
        }

        /* renamed from: b */
        public void m15266b(String str, Object... objArr) {
            m15268a(str, objArr);
            if (!this.f6219d) {
                m15268a("\r\n", new Object[0]);
            }
        }
    }

    static {
        char[] charArray = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        int nextInt = secureRandom.nextInt(11);
        for (int i = 0; i < nextInt + 30; i++) {
            sb.append(charArray[secureRandom.nextInt(charArray.length)]);
        }
        f6188b = sb.toString();
    }

    public C2102k() {
        this(null, null, null, null, null);
    }

    public C2102k(C1803a c1803a, String str, Bundle bundle, EnumC2195o enumC2195o, AbstractC2108b abstractC2108b) {
        this(c1803a, str, bundle, enumC2195o, abstractC2108b, null);
    }

    public C2102k(C1803a c1803a, String str, Bundle bundle, EnumC2195o enumC2195o, AbstractC2108b abstractC2108b, String str2) {
        this.f6198k = true;
        this.f6204q = false;
        this.f6192e = c1803a;
        this.f6194g = str;
        this.f6203p = str2;
        m15336a(abstractC2108b);
        m15329a(enumC2195o);
        if (bundle != null) {
            this.f6199l = new Bundle(bundle);
        } else {
            this.f6199l = new Bundle();
        }
        if (this.f6203p == null) {
            this.f6203p = C2095j.m15359i();
        }
    }

    /* renamed from: a */
    public static C2102k m15339a(C1803a c1803a, final AbstractC2109c abstractC2109c) {
        return new C2102k(c1803a, "me", null, null, new AbstractC2108b() { // from class: com.facebook.k.1
            @Override // com.facebook.C2102k.AbstractC2108b
            /* renamed from: a */
            public void mo15229a(C2194n c2194n) {
                if (abstractC2109c != null) {
                    abstractC2109c.mo1149a(c2194n.m14980b(), c2194n);
                }
            }
        });
    }

    /* renamed from: a */
    public static C2102k m15338a(C1803a c1803a, String str, AbstractC2108b abstractC2108b) {
        return new C2102k(c1803a, str, null, null, abstractC2108b);
    }

    /* renamed from: a */
    public static C2102k m15337a(C1803a c1803a, String str, JSONObject jSONObject, AbstractC2108b abstractC2108b) {
        C2102k c2102k = new C2102k(c1803a, str, null, EnumC2195o.POST, abstractC2108b);
        c2102k.m15318a(jSONObject);
        return c2102k;
    }

    /* renamed from: a */
    public static C2194n m15334a(C2102k c2102k) {
        List<C2194n> m15315a = m15315a(c2102k);
        if (m15315a == null || m15315a.size() != 1) {
            throw new FacebookException("invalid state: expected a single response");
        }
        return m15315a.get(0);
    }

    /* renamed from: a */
    private String m15326a(String str, Boolean bool) {
        if (bool.booleanValue() || this.f6193f != EnumC2195o.POST) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            for (String str2 : this.f6199l.keySet()) {
                Object obj = this.f6199l.get(str2);
                Object obj2 = obj;
                if (obj == null) {
                    obj2 = "";
                }
                if (m15300e(obj2)) {
                    buildUpon.appendQueryParameter(str2, m15297f(obj2).toString());
                } else if (this.f6193f == EnumC2195o.GET) {
                    throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", obj2.getClass().getSimpleName()));
                }
            }
            str = buildUpon.toString();
        }
        return str;
    }

    /* renamed from: a */
    public static HttpURLConnection m15333a(C2191m c2191m) {
        m15304d(c2191m);
        try {
            HttpURLConnection httpURLConnection = null;
            HttpURLConnection httpURLConnection2 = null;
            try {
                HttpURLConnection m15322a = m15322a(c2191m.size() == 1 ? new URL(c2191m.get(0).m15290l()) : new URL(C2077v.m15497b()));
                httpURLConnection2 = m15322a;
                httpURLConnection = m15322a;
                m15331a(c2191m, m15322a);
                return m15322a;
            } catch (IOException e) {
                e = e;
                C2079x.m15464a(httpURLConnection);
                throw new FacebookException("could not construct request body", e);
            } catch (JSONException e2) {
                e = e2;
                httpURLConnection = httpURLConnection2;
                C2079x.m15464a(httpURLConnection);
                throw new FacebookException("could not construct request body", e);
            }
        } catch (MalformedURLException e3) {
            throw new FacebookException("could not construct URL for request", e3);
        }
    }

    /* renamed from: a */
    private static HttpURLConnection m15322a(URL url) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestProperty("User-Agent", m15285q());
        httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
        httpURLConnection.setChunkedStreamingMode(0);
        return httpURLConnection;
    }

    /* renamed from: a */
    public static List<C2194n> m15324a(HttpURLConnection httpURLConnection, C2191m c2191m) {
        List<C2194n> m14983a = C2194n.m14983a(httpURLConnection, c2191m);
        C2079x.m15464a(httpURLConnection);
        int size = c2191m.size();
        if (size != m14983a.size()) {
            throw new FacebookException(String.format(Locale.US, "Received %d responses while expecting %d", Integer.valueOf(m14983a.size()), Integer.valueOf(size)));
        }
        m15330a(c2191m, m14983a);
        C1938c.m15811a().m15798e();
        return m14983a;
    }

    /* renamed from: a */
    public static List<C2194n> m15321a(Collection<C2102k> collection) {
        return m15312b(new C2191m(collection));
    }

    /* renamed from: a */
    public static List<C2194n> m15315a(C2102k... c2102kArr) {
        C2084y.m15417a(c2102kArr, "requests");
        return m15321a((Collection<C2102k>) Arrays.asList(c2102kArr));
    }

    /* renamed from: a */
    private static void m15340a(Bundle bundle, C2114g c2114g, C2102k c2102k) {
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (m15300e(obj)) {
                c2114g.m15273a(str, obj, c2102k);
            }
        }
    }

    /* renamed from: a */
    private static void m15335a(C2114g c2114g, Collection<C2102k> collection, Map<String, C2107a> map) {
        JSONArray jSONArray = new JSONArray();
        for (C2102k c2102k : collection) {
            c2102k.m15319a(jSONArray, map);
        }
        c2114g.m15270a("batch", jSONArray, collection);
    }

    /* renamed from: a */
    private static void m15332a(C2191m c2191m, C2063r c2063r, int i, URL url, OutputStream outputStream, boolean z) {
        C2114g c2114g = new C2114g(outputStream, c2063r, z);
        if (i != 1) {
            String m15295g = m15295g(c2191m);
            if (C2079x.m15472a(m15295g)) {
                throw new FacebookException("App ID was not specified at the request or Settings.");
            }
            c2114g.mo15272a("batch_app_id", m15295g);
            HashMap hashMap = new HashMap();
            m15335a(c2114g, c2191m, hashMap);
            if (c2063r != null) {
                c2063r.m15542c("  Attachments:\n");
            }
            m15320a(hashMap, c2114g);
            return;
        }
        C2102k c2102k = c2191m.get(0);
        HashMap hashMap2 = new HashMap();
        for (String str : c2102k.f6199l.keySet()) {
            Object obj = c2102k.f6199l.get(str);
            if (m15303d(obj)) {
                hashMap2.put(str, new C2107a(c2102k, obj));
            }
        }
        if (c2063r != null) {
            c2063r.m15542c("  Parameters:\n");
        }
        m15340a(c2102k.f6199l, c2114g, c2102k);
        if (c2063r != null) {
            c2063r.m15542c("  Attachments:\n");
        }
        m15320a(hashMap2, c2114g);
        if (c2102k.f6195h == null) {
            return;
        }
        m15317a(c2102k.f6195h, url.getPath(), c2114g);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x015d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final void m15331a(com.facebook.C2191m r7, java.net.HttpURLConnection r8) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.C2102k.m15331a(com.facebook.m, java.net.HttpURLConnection):void");
    }

    /* renamed from: a */
    static void m15330a(final C2191m c2191m, List<C2194n> list) {
        int size = c2191m.size();
        final ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            C2102k c2102k = c2191m.get(i);
            if (c2102k.f6200m != null) {
                arrayList.add(new Pair(c2102k.f6200m, list.get(i)));
            }
        }
        if (arrayList.size() > 0) {
            Runnable runnable = new Runnable() { // from class: com.facebook.k.3
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        Pair pair = (Pair) it.next();
                        ((AbstractC2108b) pair.first).mo15229a((C2194n) pair.second);
                    }
                    for (C2191m.AbstractC2192a abstractC2192a : c2191m.m14995e()) {
                        abstractC2192a.mo14989a(c2191m);
                    }
                }
            };
            Handler m14997c = c2191m.m14997c();
            if (m14997c == null) {
                runnable.run();
            } else {
                m14997c.post(runnable);
            }
        }
    }

    /* renamed from: a */
    private static void m15325a(String str, Object obj, AbstractC2110d abstractC2110d, boolean z) {
        Class<?> cls = obj.getClass();
        if (JSONObject.class.isAssignableFrom(cls)) {
            JSONObject jSONObject = (JSONObject) obj;
            if (z) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    m15325a(String.format("%s[%s]", str, next), jSONObject.opt(next), abstractC2110d, z);
                }
            } else if (jSONObject.has("id")) {
                m15325a(str, jSONObject.optString("id"), abstractC2110d, z);
            } else if (jSONObject.has("url")) {
                m15325a(str, jSONObject.optString("url"), abstractC2110d, z);
            } else if (jSONObject.has("fbsdk:create_object")) {
                m15325a(str, jSONObject.toString(), abstractC2110d, z);
            }
        } else if (JSONArray.class.isAssignableFrom(cls)) {
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                m15325a(String.format(Locale.ROOT, "%s[%d]", str, Integer.valueOf(i)), jSONArray.opt(i), abstractC2110d, z);
            }
        } else if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
            abstractC2110d.mo15272a(str, obj.toString());
        } else if (Date.class.isAssignableFrom(cls)) {
            abstractC2110d.mo15272a(str, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj));
        }
    }

    /* renamed from: a */
    private static void m15323a(HttpURLConnection httpURLConnection, boolean z) {
        if (!z) {
            httpURLConnection.setRequestProperty("Content-Type", m15286p());
            return;
        }
        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
    }

    /* renamed from: a */
    private static void m15320a(Map<String, C2107a> map, C2114g c2114g) {
        for (String str : map.keySet()) {
            C2107a c2107a = map.get(str);
            if (m15303d(c2107a.m15283b())) {
                c2114g.m15273a(str, c2107a.m15283b(), c2107a.m15284a());
            }
        }
    }

    /* renamed from: a */
    private void m15319a(JSONArray jSONArray, Map<String, C2107a> map) {
        JSONObject jSONObject = new JSONObject();
        if (this.f6196i != null) {
            jSONObject.put("name", this.f6196i);
            jSONObject.put("omit_response_on_success", this.f6198k);
        }
        if (this.f6197j != null) {
            jSONObject.put("depends_on", this.f6197j);
        }
        String m15291k = m15291k();
        jSONObject.put("relative_url", m15291k);
        jSONObject.put("method", this.f6193f);
        if (this.f6192e != null) {
            C2063r.m15548a(this.f6192e.m16250d());
        }
        ArrayList arrayList = new ArrayList();
        for (String str : this.f6199l.keySet()) {
            Object obj = this.f6199l.get(str);
            if (m15303d(obj)) {
                String format = String.format(Locale.ROOT, "%s%d", "file", Integer.valueOf(map.size()));
                arrayList.add(format);
                map.put(format, new C2107a(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put("attached_files", TextUtils.join(",", arrayList));
        }
        if (this.f6195h != null) {
            final ArrayList arrayList2 = new ArrayList();
            m15317a(this.f6195h, m15291k, new AbstractC2110d() { // from class: com.facebook.k.4
                @Override // com.facebook.C2102k.AbstractC2110d
                /* renamed from: a */
                public void mo15272a(String str2, String str3) {
                    arrayList2.add(String.format(Locale.US, "%s=%s", str2, URLEncoder.encode(str3, "UTF-8")));
                }
            });
            jSONObject.put("body", TextUtils.join("&", arrayList2));
        }
        jSONArray.put(jSONObject);
    }

    /* renamed from: a */
    private static void m15317a(JSONObject jSONObject, String str, AbstractC2110d abstractC2110d) {
        boolean z;
        if (m15327a(str)) {
            int indexOf = str.indexOf(":");
            int indexOf2 = str.indexOf("?");
            z = indexOf > 3 && (indexOf2 == -1 || indexOf < indexOf2);
        } else {
            z = false;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            m15325a(next, jSONObject.opt(next), abstractC2110d, z && next.equalsIgnoreCase("image"));
        }
    }

    /* renamed from: a */
    private static boolean m15327a(String str) {
        Matcher matcher = f6190d.matcher(str);
        if (matcher.matches()) {
            str = matcher.group(1);
        }
        boolean z = true;
        if (!str.startsWith("me/")) {
            z = str.startsWith("/me/");
        }
        return z;
    }

    /* renamed from: b */
    public static AsyncTaskC2115l m15310b(Collection<C2102k> collection) {
        return m15307c(new C2191m(collection));
    }

    /* renamed from: b */
    public static AsyncTaskC2115l m15309b(C2102k... c2102kArr) {
        C2084y.m15417a(c2102kArr, "requests");
        return m15310b((Collection<C2102k>) Arrays.asList(c2102kArr));
    }

    /* renamed from: b */
    public static List<C2194n> m15312b(C2191m c2191m) {
        List<C2194n> list;
        C2084y.m15410c(c2191m, "requests");
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection m15333a = m15333a(c2191m);
                httpURLConnection = m15333a;
                list = m15324a(m15333a, c2191m);
                C2079x.m15464a(m15333a);
            } catch (Exception e) {
                List<C2194n> m14981a = C2194n.m14981a(c2191m.m14996d(), (HttpURLConnection) null, new FacebookException(e));
                httpURLConnection = null;
                m15330a(c2191m, m14981a);
                C2079x.m15464a((URLConnection) null);
                list = m14981a;
            }
            return list;
        } catch (Throwable th) {
            C2079x.m15464a(httpURLConnection);
            throw th;
        }
    }

    /* renamed from: b */
    static final boolean m15313b(C2102k c2102k) {
        boolean z = true;
        String m15305d = c2102k.m15305d();
        if (!C2079x.m15472a(m15305d)) {
            String str = m15305d;
            if (m15305d.startsWith("v")) {
                str = m15305d.substring(1);
            }
            String[] split = str.split("\\.");
            z = (split.length >= 2 && Integer.parseInt(split[0]) > 2) || (Integer.parseInt(split[0]) >= 2 && Integer.parseInt(split[1]) >= 4);
        }
        return z;
    }

    /* renamed from: c */
    public static AsyncTaskC2115l m15307c(C2191m c2191m) {
        C2084y.m15410c(c2191m, "requests");
        AsyncTaskC2115l asyncTaskC2115l = new AsyncTaskC2115l(c2191m);
        asyncTaskC2115l.executeOnExecutor(C2095j.m15362f(), new Void[0]);
        return asyncTaskC2115l;
    }

    /* renamed from: d */
    static final void m15304d(C2191m c2191m) {
        Iterator<C2102k> it = c2191m.iterator();
        while (it.hasNext()) {
            C2102k next = it.next();
            if (EnumC2195o.GET.equals(next.m15308c()) && m15313b(next)) {
                Bundle m15302e = next.m15302e();
                if (!m15302e.containsKey("fields") || C2079x.m15472a(m15302e.getString("fields"))) {
                    C2063r.m15551a(EnumC2197q.DEVELOPER_ERRORS, 5, "Request", "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter.", next.m15314b());
                }
            }
        }
    }

    /* renamed from: d */
    private static boolean m15303d(Object obj) {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof C2112f);
    }

    /* renamed from: e */
    private static boolean m15301e(C2191m c2191m) {
        boolean z;
        Iterator<C2191m.AbstractC2192a> it = c2191m.m14995e().iterator();
        while (true) {
            if (!it.hasNext()) {
                Iterator<C2102k> it2 = c2191m.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z = false;
                        break;
                    } else if (it2.next().m15296g() instanceof AbstractC2111e) {
                        z = true;
                        break;
                    }
                }
            } else if (it.next() instanceof C2191m.AbstractC2193b) {
                z = true;
                break;
            }
        }
        return z;
    }

    /* renamed from: e */
    public static boolean m15300e(Object obj) {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    /* renamed from: f */
    public static String m15297f(Object obj) {
        String obj2;
        if (obj instanceof String) {
            obj2 = (String) obj;
        } else if ((obj instanceof Boolean) || (obj instanceof Number)) {
            obj2 = obj.toString();
        } else if (!(obj instanceof Date)) {
            throw new IllegalArgumentException("Unsupported parameter type.");
        } else {
            obj2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(obj);
        }
        return obj2;
    }

    /* renamed from: f */
    private static boolean m15298f(C2191m c2191m) {
        boolean z;
        Iterator<C2102k> it = c2191m.iterator();
        loop0: while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            }
            C2102k next = it.next();
            for (String str : next.f6199l.keySet()) {
                if (m15303d(next.f6199l.get(str))) {
                    z = false;
                    break loop0;
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    private static String m15295g(C2191m c2191m) {
        String m15356l;
        if (!C2079x.m15472a(c2191m.m14994f())) {
            m15356l = c2191m.m14994f();
        } else {
            Iterator<C2102k> it = c2191m.iterator();
            while (true) {
                if (it.hasNext()) {
                    C1803a c1803a = it.next().f6192e;
                    if (c1803a != null) {
                        m15356l = c1803a.m16242l();
                        if (m15356l != null) {
                            break;
                        }
                    }
                } else {
                    m15356l = !C2079x.m15472a(f6189c) ? f6189c : C2095j.m15356l();
                }
            }
        }
        return m15356l;
    }

    /* renamed from: n */
    private void m15288n() {
        if (this.f6192e != null) {
            if (!this.f6199l.containsKey("access_token")) {
                String m16250d = this.f6192e.m16250d();
                C2063r.m15548a(m16250d);
                this.f6199l.putString("access_token", m16250d);
            }
        } else if (!this.f6204q && !this.f6199l.containsKey("access_token")) {
            String m15356l = C2095j.m15356l();
            String m15354n = C2095j.m15354n();
            if (C2079x.m15472a(m15356l) || C2079x.m15472a(m15354n)) {
                C2079x.m15449b(f6187a, "Warning: Request without access token missing application ID or client token.");
            } else {
                this.f6199l.putString("access_token", m15356l + "|" + m15354n);
            }
        }
        this.f6199l.putString("sdk", "android");
        this.f6199l.putString("format", "json");
        if (C2095j.m15370a(EnumC2197q.GRAPH_API_DEBUG_INFO)) {
            this.f6199l.putString("debug", "info");
        } else if (!C2095j.m15370a(EnumC2197q.GRAPH_API_DEBUG_WARNING)) {
        } else {
            this.f6199l.putString("debug", "warning");
        }
    }

    /* renamed from: o */
    private String m15287o() {
        return f6190d.matcher(this.f6194g).matches() ? this.f6194g : String.format("%s/%s", this.f6203p, this.f6194g);
    }

    /* renamed from: p */
    private static String m15286p() {
        return String.format("multipart/form-data; boundary=%s", f6188b);
    }

    /* renamed from: q */
    private static String m15285q() {
        if (f6191r == null) {
            f6191r = String.format("%s.%s", "FBAndroidSDK", "5.15.3");
            String m15558a = C2060p.m15558a();
            if (!C2079x.m15472a(m15558a)) {
                f6191r = String.format(Locale.ROOT, "%s/%s", f6191r, m15558a);
            }
        }
        return f6191r;
    }

    /* renamed from: a */
    public final JSONObject m15342a() {
        return this.f6195h;
    }

    /* renamed from: a */
    public final void m15341a(Bundle bundle) {
        this.f6199l = bundle;
    }

    /* renamed from: a */
    public final void m15336a(final AbstractC2108b abstractC2108b) {
        if (C2095j.m15370a(EnumC2197q.GRAPH_API_DEBUG_INFO) || C2095j.m15370a(EnumC2197q.GRAPH_API_DEBUG_WARNING)) {
            this.f6200m = new AbstractC2108b() { // from class: com.facebook.k.2
                @Override // com.facebook.C2102k.AbstractC2108b
                /* renamed from: a */
                public void mo15229a(C2194n c2194n) {
                    JSONObject m14980b = c2194n.m14980b();
                    JSONObject optJSONObject = m14980b != null ? m14980b.optJSONObject("__debug__") : null;
                    JSONArray optJSONArray = optJSONObject != null ? optJSONObject.optJSONArray("messages") : null;
                    if (optJSONArray != null) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                            String optString = optJSONObject2 != null ? optJSONObject2.optString("message") : null;
                            String optString2 = optJSONObject2 != null ? optJSONObject2.optString("type") : null;
                            String optString3 = optJSONObject2 != null ? optJSONObject2.optString("link") : null;
                            if (optString != null && optString2 != null) {
                                EnumC2197q enumC2197q = EnumC2197q.GRAPH_API_DEBUG_INFO;
                                if (optString2.equals("warning")) {
                                    enumC2197q = EnumC2197q.GRAPH_API_DEBUG_WARNING;
                                }
                                String str = optString;
                                if (!C2079x.m15472a(optString3)) {
                                    str = optString + " Link: " + optString3;
                                }
                                C2063r.m15550a(enumC2197q, C2102k.f6187a, str);
                            }
                        }
                    }
                    if (abstractC2108b != null) {
                        abstractC2108b.mo15229a(c2194n);
                    }
                }
            };
        } else {
            this.f6200m = abstractC2108b;
        }
    }

    /* renamed from: a */
    public final void m15329a(EnumC2195o enumC2195o) {
        if (this.f6201n == null || enumC2195o == EnumC2195o.GET) {
            if (enumC2195o == null) {
                enumC2195o = EnumC2195o.GET;
            }
            this.f6193f = enumC2195o;
            return;
        }
        throw new FacebookException("Can't change HTTP method on request with overridden URL.");
    }

    /* renamed from: a */
    public final void m15328a(Object obj) {
        this.f6202o = obj;
    }

    /* renamed from: a */
    public final void m15318a(JSONObject jSONObject) {
        this.f6195h = jSONObject;
    }

    /* renamed from: a */
    public final void m15316a(boolean z) {
        this.f6204q = z;
    }

    /* renamed from: b */
    public final String m15314b() {
        return this.f6194g;
    }

    /* renamed from: c */
    public final EnumC2195o m15308c() {
        return this.f6193f;
    }

    /* renamed from: d */
    public final String m15305d() {
        return this.f6203p;
    }

    /* renamed from: e */
    public final Bundle m15302e() {
        return this.f6199l;
    }

    /* renamed from: f */
    public final C1803a m15299f() {
        return this.f6192e;
    }

    /* renamed from: g */
    public final AbstractC2108b m15296g() {
        return this.f6200m;
    }

    /* renamed from: h */
    public final Object m15294h() {
        return this.f6202o;
    }

    /* renamed from: i */
    public final C2194n m15293i() {
        return m15334a(this);
    }

    /* renamed from: j */
    public final AsyncTaskC2115l m15292j() {
        return m15309b(this);
    }

    /* renamed from: k */
    final String m15291k() {
        if (this.f6201n != null) {
            throw new FacebookException("Can't override URL for a batch request");
        }
        String format = String.format("%s/%s", C2077v.m15497b(), m15287o());
        m15288n();
        Uri parse = Uri.parse(m15326a(format, (Boolean) true));
        return String.format("%s?%s", parse.getPath(), parse.getQuery());
    }

    /* renamed from: l */
    final String m15290l() {
        String m15326a;
        if (this.f6201n != null) {
            m15326a = this.f6201n.toString();
        } else {
            String format = String.format("%s/%s", (m15308c() != EnumC2195o.POST || this.f6194g == null || !this.f6194g.endsWith("/videos")) ? C2077v.m15497b() : C2077v.m15496c(), m15287o());
            m15288n();
            m15326a = m15326a(format, (Boolean) false);
        }
        return m15326a;
    }

    public String toString() {
        return "{Request:  accessToken: " + (this.f6192e == null ? "null" : this.f6192e) + ", graphPath: " + this.f6194g + ", graphObject: " + this.f6195h + ", httpMethod: " + this.f6193f + ", parameters: " + this.f6199l + "}";
    }
}
