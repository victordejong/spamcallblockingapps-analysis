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
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
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
import zi0;
/* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest.class */
public class GraphRequest {

    /* renamed from: n */
    public static final String f2481n = "GraphRequest";

    /* renamed from: o */
    public static final String f2482o;

    /* renamed from: p */
    public static String f2483p;

    /* renamed from: q */
    public static Pattern f2484q = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");

    /* renamed from: r */
    public static volatile String f2485r;

    /* renamed from: a */
    public AccessToken f2486a;

    /* renamed from: b */
    public bj0 f2487b;

    /* renamed from: c */
    public String f2488c;

    /* renamed from: d */
    public JSONObject f2489d;

    /* renamed from: e */
    public String f2490e;

    /* renamed from: f */
    public String f2491f;

    /* renamed from: g */
    public boolean f2492g;

    /* renamed from: h */
    public Bundle f2493h;

    /* renamed from: i */
    public AbstractC0343e f2494i;

    /* renamed from: j */
    public String f2495j;

    /* renamed from: k */
    public Object f2496k;

    /* renamed from: l */
    public String f2497l;

    /* renamed from: m */
    public boolean f2498m;

    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$ParcelableResourceWithMimeType.class */
    public static class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new C0340a();

        /* renamed from: a */
        public final String f2499a;

        /* renamed from: b */
        public final RESOURCE f2500b;

        /* renamed from: com.facebook.GraphRequest$ParcelableResourceWithMimeType$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$ParcelableResourceWithMimeType$a.class */
        public static final class C0340a implements Parcelable.Creator<ParcelableResourceWithMimeType> {
            /* renamed from: a */
            public ParcelableResourceWithMimeType createFromParcel(Parcel parcel) {
                return new ParcelableResourceWithMimeType(parcel, (xi0) null);
            }

            /* renamed from: b */
            public ParcelableResourceWithMimeType[] newArray(int i) {
                return new ParcelableResourceWithMimeType[i];
            }
        }

        public ParcelableResourceWithMimeType(Parcel parcel) {
            this.f2499a = parcel.readString();
            this.f2500b = (RESOURCE) parcel.readParcelable(ui0.e().getClassLoader());
        }

        public /* synthetic */ ParcelableResourceWithMimeType(Parcel parcel, xi0 xi0Var) {
            this(parcel);
        }

        public ParcelableResourceWithMimeType(RESOURCE resource, String str) {
            this.f2499a = str;
            this.f2500b = resource;
        }

        /* renamed from: a */
        public String m5142a() {
            return this.f2499a;
        }

        /* renamed from: b */
        public RESOURCE m5141b() {
            return this.f2500b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f2499a);
            parcel.writeParcelable(this.f2500b, i);
        }
    }

    /* renamed from: com.facebook.GraphRequest$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$b.class */
    public static final class RunnableC0341b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f2501a;

        /* renamed from: b */
        public final /* synthetic */ zi0 f2502b;

        public RunnableC0341b(ArrayList arrayList, zi0 zi0Var) {
            this.f2501a = arrayList;
            this.f2502b = zi0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f2501a.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                ((AbstractC0343e) pair.first).mo604b((aj0) pair.second);
            }
            for (zi0.a aVar : this.f2502b.k()) {
                aVar.a(this.f2502b);
            }
        }
    }

    /* renamed from: com.facebook.GraphRequest$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$d.class */
    public static class C0342d {

        /* renamed from: a */
        public final GraphRequest f2503a;

        /* renamed from: b */
        public final Object f2504b;

        public C0342d(GraphRequest graphRequest, Object obj) {
            this.f2503a = graphRequest;
            this.f2504b = obj;
        }

        /* renamed from: a */
        public GraphRequest m5138a() {
            return this.f2503a;
        }

        /* renamed from: b */
        public Object m5137b() {
            return this.f2504b;
        }
    }

    /* renamed from: com.facebook.GraphRequest$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$e.class */
    public interface AbstractC0343e {
        /* renamed from: b */
        void mo604b(aj0 aj0Var);
    }

    /* renamed from: com.facebook.GraphRequest$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$f.class */
    public interface AbstractC0344f {
        /* renamed from: a */
        void m5136a(String str, String str2);
    }

    static {
        char[] charArray = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        int nextInt = secureRandom.nextInt(11);
        for (int i = 0; i < nextInt + 30; i++) {
            sb.append(charArray[secureRandom.nextInt(charArray.length)]);
        }
        f2482o = sb.toString();
    }

    public GraphRequest() {
        this(null, null, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, bj0 bj0Var) {
        this(accessToken, str, bundle, bj0Var, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, bj0 bj0Var, AbstractC0343e abstractC0343e) {
        this(accessToken, str, bundle, bj0Var, abstractC0343e, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, bj0 bj0Var, AbstractC0343e abstractC0343e, String str2) {
        this.f2492g = true;
        this.f2498m = false;
        this.f2486a = accessToken;
        this.f2488c = str;
        this.f2497l = str2;
        m5179V(abstractC0343e);
        m5176Y(bj0Var);
        this.f2493h = bundle != null ? new Bundle(bundle) : new Bundle();
        if (this.f2497l == null) {
            this.f2497l = ui0.q();
        }
    }

    /* renamed from: C */
    public static String m5198C() {
        if (f2485r == null) {
            f2485r = String.format("%s.%s", "FBAndroidSDK", "5.15.3");
            String a = vm0.a();
            if (!fn0.Q(a)) {
                f2485r = String.format(Locale.ROOT, "%s/%s", f2485r, a);
            }
        }
        return f2485r;
    }

    /* renamed from: E */
    public static boolean m5196E(zi0 zi0Var) {
        for (zi0.a aVar : zi0Var.k()) {
            if (aVar instanceof zi0.b) {
                return true;
            }
        }
        Iterator it = zi0Var.iterator();
        while (it.hasNext()) {
            if (((GraphRequest) it.next()).m5150s() instanceof g) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: F */
    public static boolean m5195F(zi0 zi0Var) {
        Iterator it = zi0Var.iterator();
        while (it.hasNext()) {
            GraphRequest graphRequest = (GraphRequest) it.next();
            for (String str : graphRequest.f2493h.keySet()) {
                if (m5193H(graphRequest.f2493h.get(str))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: G */
    public static boolean m5194G(String str) {
        Matcher matcher = f2484q.matcher(str);
        if (matcher.matches()) {
            str = matcher.group(1);
        }
        return str.startsWith("me/") || str.startsWith("/me/");
    }

    /* renamed from: H */
    public static boolean m5193H(Object obj) {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelableResourceWithMimeType);
    }

    /* renamed from: I */
    public static boolean m5192I(Object obj) {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    /* renamed from: J */
    public static GraphRequest m5191J(AccessToken accessToken, String str, AbstractC0343e abstractC0343e) {
        return new GraphRequest(accessToken, str, null, null, abstractC0343e);
    }

    /* renamed from: K */
    public static GraphRequest m5190K(AccessToken accessToken, String str, JSONObject jSONObject, AbstractC0343e abstractC0343e) {
        GraphRequest graphRequest = new GraphRequest(accessToken, str, null, bj0.POST, abstractC0343e);
        graphRequest.m5177X(jSONObject);
        return graphRequest;
    }

    /* renamed from: L */
    public static String m5189L(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if ((obj instanceof Boolean) || (obj instanceof Number)) {
            return obj.toString();
        }
        if (!(obj instanceof Date)) {
            throw new IllegalArgumentException("Unsupported parameter type.");
        }
        return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m5188M(org.json.JSONObject r5, java.lang.String r6, com.facebook.GraphRequest.AbstractC0344f r7) {
        /*
            r0 = r6
            boolean r0 = m5194G(r0)
            if (r0 == 0) goto L2f
            r0 = r6
            java.lang.String r1 = ":"
            int r0 = r0.indexOf(r1)
            r8 = r0
            r0 = r6
            java.lang.String r1 = "?"
            int r0 = r0.indexOf(r1)
            r9 = r0
            r0 = r8
            r1 = 3
            if (r0 <= r1) goto L2f
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L29
            r0 = r8
            r1 = r9
            if (r0 >= r1) goto L2f
        L29:
            r0 = 1
            r9 = r0
            goto L32
        L2f:
            r0 = 0
            r9 = r0
        L32:
            r0 = r5
            java.util.Iterator r0 = r0.keys()
            r10 = r0
        L38:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L78
            r0 = r10
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r6 = r0
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.opt(r1)
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L69
            r0 = r6
            java.lang.String r1 = "image"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L69
            r0 = 1
            r12 = r0
            goto L6c
        L69:
            r0 = 0
            r12 = r0
        L6c:
            r0 = r6
            r1 = r11
            r2 = r7
            r3 = r12
            m5187N(r0, r1, r2, r3)
            goto L38
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.m5188M(org.json.JSONObject, java.lang.String, com.facebook.GraphRequest$f):void");
    }

    /* renamed from: N */
    public static void m5187N(String str, Object obj, AbstractC0344f abstractC0344f, boolean z) {
        String str2;
        String jSONObject;
        Class<?> cls = obj.getClass();
        if (!JSONObject.class.isAssignableFrom(cls)) {
            if (JSONArray.class.isAssignableFrom(cls)) {
                JSONArray jSONArray = (JSONArray) obj;
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    m5187N(String.format(Locale.ROOT, "%s[%d]", str, Integer.valueOf(i)), jSONArray.opt(i), abstractC0344f, z);
                }
                return;
            }
            if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
                str2 = obj.toString();
            } else if (!Date.class.isAssignableFrom(cls)) {
                return;
            } else {
                str2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj);
            }
            abstractC0344f.m5136a(str, str2);
            return;
        }
        JSONObject jSONObject2 = (JSONObject) obj;
        if (z) {
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                m5187N(String.format("%s[%s]", str, next), jSONObject2.opt(next), abstractC0344f, z);
            }
            return;
        }
        String str3 = "id";
        if (!jSONObject2.has("id")) {
            str3 = ImagesContract.URL;
            if (!jSONObject2.has(ImagesContract.URL)) {
                if (!jSONObject2.has("fbsdk:create_object")) {
                    return;
                }
                jSONObject = jSONObject2.toString();
                m5187N(str, jSONObject, abstractC0344f, z);
            }
        }
        jSONObject = jSONObject2.optString(str3);
        m5187N(str, jSONObject, abstractC0344f, z);
    }

    /* renamed from: O */
    public static void m5186O(zi0 zi0Var, xm0 xm0Var, int i, URL url, OutputStream outputStream, boolean z) {
        h hVar = new h(outputStream, xm0Var, z);
        if (i != 1) {
            String m5151r = m5151r(zi0Var);
            if (fn0.Q(m5151r)) {
                throw new ri0("App ID was not specified at the request or Settings.");
            }
            hVar.a("batch_app_id", m5151r);
            HashMap hashMap = new HashMap();
            m5182S(hVar, zi0Var, hashMap);
            if (xm0Var != null) {
                xm0Var.a("  Attachments:\n");
            }
            m5184Q(hashMap, hVar);
            return;
        }
        GraphRequest h = zi0Var.h(0);
        HashMap hashMap2 = new HashMap();
        for (String str : h.f2493h.keySet()) {
            Object obj = h.f2493h.get(str);
            if (m5193H(obj)) {
                hashMap2.put(str, new C0342d(h, obj));
            }
        }
        if (xm0Var != null) {
            xm0Var.a("  Parameters:\n");
        }
        m5183R(h.f2493h, hVar, h);
        if (xm0Var != null) {
            xm0Var.a("  Attachments:\n");
        }
        m5184Q(hashMap2, hVar);
        JSONObject jSONObject = h.f2489d;
        if (jSONObject == null) {
            return;
        }
        m5188M(jSONObject, url.getPath(), hVar);
    }

    /* renamed from: P */
    public static void m5185P(zi0 zi0Var, List<aj0> list) {
        int size = zi0Var.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            GraphRequest h = zi0Var.h(i);
            if (h.f2494i != null) {
                arrayList.add(new Pair(h.f2494i, list.get(i)));
            }
        }
        if (arrayList.size() > 0) {
            RunnableC0341b runnableC0341b = new RunnableC0341b(arrayList, zi0Var);
            Handler j = zi0Var.j();
            if (j == null) {
                runnableC0341b.run();
            } else {
                j.post(runnableC0341b);
            }
        }
    }

    /* renamed from: Q */
    public static void m5184Q(Map<String, C0342d> map, h hVar) {
        for (String str : map.keySet()) {
            C0342d c0342d = map.get(str);
            if (m5193H(c0342d.m5137b())) {
                hVar.j(str, c0342d.m5137b(), c0342d.m5138a());
            }
        }
    }

    /* renamed from: R */
    public static void m5183R(Bundle bundle, h hVar, GraphRequest graphRequest) {
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (m5192I(obj)) {
                hVar.j(str, obj, graphRequest);
            }
        }
    }

    /* renamed from: S */
    public static void m5182S(h hVar, Collection<GraphRequest> collection, Map<String, C0342d> map) {
        JSONArray jSONArray = new JSONArray();
        for (GraphRequest graphRequest : collection) {
            graphRequest.m5181T(jSONArray, map);
        }
        hVar.l("batch", jSONArray, collection);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0169  */
    /* renamed from: U */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m5180U(zi0 r7, java.net.HttpURLConnection r8) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.m5180U(zi0, java.net.HttpURLConnection):void");
    }

    /* renamed from: W */
    public static void m5178W(HttpURLConnection httpURLConnection, boolean z) {
        if (!z) {
            httpURLConnection.setRequestProperty("Content-Type", m5145x());
            return;
        }
        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
        if (java.lang.Integer.parseInt(r0[0]) <= 2) goto L12;
     */
    /* renamed from: d0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m5167d0(com.facebook.GraphRequest r3) {
        /*
            r0 = r3
            java.lang.String r0 = r0.m5197D()
            r4 = r0
            r0 = r4
            boolean r0 = fn0.Q(r0)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L12
            r0 = 1
            return r0
        L12:
            r0 = r4
            r3 = r0
            r0 = r4
            java.lang.String r1 = "v"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L24
            r0 = r4
            r1 = 1
            java.lang.String r0 = r0.substring(r1)
            r3 = r0
        L24:
            r0 = r3
            java.lang.String r1 = "\\."
            java.lang.String[] r0 = r0.split(r1)
            r3 = r0
            r0 = r3
            int r0 = r0.length
            r1 = 2
            if (r0 < r1) goto L3e
            r0 = r6
            r5 = r0
            r0 = r3
            r1 = 0
            r0 = r0[r1]
            int r0 = java.lang.Integer.parseInt(r0)
            r1 = 2
            if (r0 > r1) goto L59
        L3e:
            r0 = r3
            r1 = 0
            r0 = r0[r1]
            int r0 = java.lang.Integer.parseInt(r0)
            r1 = 2
            if (r0 < r1) goto L57
            r0 = r3
            r1 = 1
            r0 = r0[r1]
            int r0 = java.lang.Integer.parseInt(r0)
            r1 = 4
            if (r0 < r1) goto L57
            r0 = r6
            r5 = r0
            goto L59
        L57:
            r0 = 0
            r5 = r0
        L59:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.m5167d0(com.facebook.GraphRequest):boolean");
    }

    /* renamed from: e0 */
    public static HttpURLConnection m5165e0(zi0 zi0Var) {
        Throwable e;
        m5163f0(zi0Var);
        try {
            HttpURLConnection httpURLConnection = null;
            HttpURLConnection httpURLConnection2 = null;
            try {
                HttpURLConnection m5164f = m5164f(zi0Var.size() == 1 ? new URL(zi0Var.h(0).m5199B()) : new URL(cn0.m5289c()));
                httpURLConnection2 = m5164f;
                httpURLConnection = m5164f;
                m5180U(zi0Var, m5164f);
                return m5164f;
            } catch (IOException e2) {
                e = e2;
                fn0.o(httpURLConnection);
                throw new ri0("could not construct request body", e);
            } catch (JSONException e3) {
                e = e3;
                httpURLConnection = httpURLConnection2;
                fn0.o(httpURLConnection);
                throw new ri0("could not construct request body", e);
            }
        } catch (MalformedURLException e4) {
            throw new ri0("could not construct URL for request", e4);
        }
    }

    /* renamed from: f */
    public static HttpURLConnection m5164f(URL url) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
        httpURLConnection.setRequestProperty("User-Agent", m5198C());
        httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
        httpURLConnection.setChunkedStreamingMode(0);
        return httpURLConnection;
    }

    /* renamed from: f0 */
    public static final void m5163f0(zi0 zi0Var) {
        Iterator it = zi0Var.iterator();
        while (it.hasNext()) {
            GraphRequest graphRequest = (GraphRequest) it.next();
            if (bj0.GET.equals(graphRequest.m5146w()) && m5167d0(graphRequest)) {
                Bundle m5144y = graphRequest.m5144y();
                if (!m5144y.containsKey("fields") || fn0.Q(m5144y.getString("fields"))) {
                    xm0.f(dj0.DEVELOPER_ERRORS, 5, "Request", "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter.", new Object[]{graphRequest.m5148u()});
                }
            }
        }
    }

    /* renamed from: h */
    public static aj0 m5161h(GraphRequest graphRequest) {
        List<aj0> m5157l = m5157l(graphRequest);
        if (m5157l == null || m5157l.size() != 1) {
            throw new ri0("invalid state: expected a single response");
        }
        return m5157l.get(0);
    }

    /* renamed from: j */
    public static List<aj0> m5159j(zi0 zi0Var) {
        gn0.k(zi0Var, "requests");
        HttpURLConnection httpURLConnection = null;
        try {
            return m5153p(m5165e0(zi0Var), zi0Var);
        } catch (Exception e) {
            List<aj0> m7102a = aj0.m7102a(zi0Var.m(), null, new ri0(e));
            m5185P(zi0Var, m7102a);
            httpURLConnection = null;
            return m7102a;
        } finally {
            fn0.o(httpURLConnection);
        }
    }

    /* renamed from: k */
    public static List<aj0> m5158k(Collection<GraphRequest> collection) {
        return m5159j(new zi0(collection));
    }

    /* renamed from: l */
    public static List<aj0> m5157l(GraphRequest... graphRequestArr) {
        gn0.l(graphRequestArr, "requests");
        return m5158k(Arrays.asList(graphRequestArr));
    }

    /* renamed from: m */
    public static yi0 m5156m(zi0 zi0Var) {
        gn0.k(zi0Var, "requests");
        yi0 yi0Var = new yi0(zi0Var);
        yi0Var.executeOnExecutor(ui0.o(), new Void[0]);
        return yi0Var;
    }

    /* renamed from: n */
    public static yi0 m5155n(Collection<GraphRequest> collection) {
        return m5156m(new zi0(collection));
    }

    /* renamed from: o */
    public static yi0 m5154o(GraphRequest... graphRequestArr) {
        gn0.l(graphRequestArr, "requests");
        return m5155n(Arrays.asList(graphRequestArr));
    }

    /* renamed from: p */
    public static List<aj0> m5153p(HttpURLConnection httpURLConnection, zi0 zi0Var) {
        List<aj0> m7097f = aj0.m7097f(httpURLConnection, zi0Var);
        fn0.o(httpURLConnection);
        int size = zi0Var.size();
        if (size == m7097f.size()) {
            m5185P(zi0Var, m7097f);
            ki0.h().f();
            return m7097f;
        }
        throw new ri0(String.format(Locale.US, "Received %d responses while expecting %d", Integer.valueOf(m7097f.size()), Integer.valueOf(size)));
    }

    /* renamed from: r */
    public static String m5151r(zi0 zi0Var) {
        String m5252f;
        if (!fn0.Q(zi0Var.i())) {
            return zi0Var.i();
        }
        Iterator it = zi0Var.iterator();
        while (it.hasNext()) {
            AccessToken accessToken = ((GraphRequest) it.next()).f2486a;
            if (accessToken != null && (m5252f = accessToken.m5252f()) != null) {
                return m5252f;
            }
        }
        return !fn0.Q(f2483p) ? f2483p : ui0.f();
    }

    /* renamed from: x */
    public static String m5145x() {
        return String.format("multipart/form-data; boundary=%s", f2482o);
    }

    /* renamed from: A */
    public final Object m5200A() {
        return this.f2496k;
    }

    /* renamed from: B */
    public final String m5199B() {
        String str;
        String str2 = this.f2495j;
        if (str2 != null) {
            return str2.toString();
        }
        String format = String.format("%s/%s", (m5146w() != bj0.POST || (str = this.f2488c) == null || !str.endsWith("/videos")) ? cn0.m5289c() : cn0.m5288d(), m5147v());
        m5168d();
        return m5166e(format, Boolean.FALSE);
    }

    /* renamed from: D */
    public final String m5197D() {
        return this.f2497l;
    }

    /* renamed from: T */
    public final void m5181T(JSONArray jSONArray, Map<String, C0342d> map) {
        JSONObject jSONObject = new JSONObject();
        String str = this.f2490e;
        if (str != null) {
            jSONObject.put("name", str);
            jSONObject.put("omit_response_on_success", this.f2492g);
        }
        String str2 = this.f2491f;
        if (str2 != null) {
            jSONObject.put("depends_on", str2);
        }
        String m5143z = m5143z();
        jSONObject.put("relative_url", m5143z);
        jSONObject.put("method", this.f2487b);
        AccessToken accessToken = this.f2486a;
        if (accessToken != null) {
            xm0.j(accessToken.m5241q());
        }
        ArrayList arrayList = new ArrayList();
        for (String str3 : this.f2493h.keySet()) {
            Object obj = this.f2493h.get(str3);
            if (m5193H(obj)) {
                String format = String.format(Locale.ROOT, "%s%d", "file", Integer.valueOf(map.size()));
                arrayList.add(format);
                map.put(format, new C0342d(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put("attached_files", TextUtils.join(",", arrayList));
        }
        if (this.f2489d != null) {
            ArrayList arrayList2 = new ArrayList();
            m5188M(this.f2489d, m5143z, new c(this, arrayList2));
            jSONObject.put("body", TextUtils.join("&", arrayList2));
        }
        jSONArray.put(jSONObject);
    }

    /* renamed from: V */
    public final void m5179V(AbstractC0343e abstractC0343e) {
        if (ui0.z(dj0.GRAPH_API_DEBUG_INFO) || ui0.z(dj0.GRAPH_API_DEBUG_WARNING)) {
            this.f2494i = new a(this, abstractC0343e);
        } else {
            this.f2494i = abstractC0343e;
        }
    }

    /* renamed from: X */
    public final void m5177X(JSONObject jSONObject) {
        this.f2489d = jSONObject;
    }

    /* renamed from: Y */
    public final void m5176Y(bj0 bj0Var) {
        if (this.f2495j == null || bj0Var == bj0.GET) {
            if (bj0Var == null) {
                bj0Var = bj0.GET;
            }
            this.f2487b = bj0Var;
            return;
        }
        throw new ri0("Can't change HTTP method on request with overridden URL.");
    }

    /* renamed from: Z */
    public final void m5175Z(Bundle bundle) {
        this.f2493h = bundle;
    }

    /* renamed from: a0 */
    public final void m5173a0(boolean z) {
        this.f2498m = z;
    }

    /* renamed from: b0 */
    public final void m5171b0(Object obj) {
        this.f2496k = obj;
    }

    /* renamed from: c0 */
    public final void m5169c0(String str) {
        this.f2497l = str;
    }

    /* renamed from: d */
    public final void m5168d() {
        Bundle bundle;
        String str;
        String str2;
        if (this.f2486a != null) {
            if (!this.f2493h.containsKey("access_token")) {
                str2 = this.f2486a.m5241q();
                xm0.j(str2);
                this.f2493h.putString("access_token", str2);
            }
        } else if (!this.f2498m && !this.f2493h.containsKey("access_token")) {
            String f = ui0.f();
            String m = ui0.m();
            if (fn0.Q(f) || fn0.Q(m)) {
                fn0.W(f2481n, "Warning: Request without access token missing application ID or client token.");
            } else {
                str2 = f + "|" + m;
                this.f2493h.putString("access_token", str2);
            }
        }
        this.f2493h.putString("sdk", Constants.ANDROID_PLATFORM);
        this.f2493h.putString("format", "json");
        if (ui0.z(dj0.GRAPH_API_DEBUG_INFO)) {
            bundle = this.f2493h;
            str = "info";
        } else if (!ui0.z(dj0.GRAPH_API_DEBUG_WARNING)) {
            return;
        } else {
            bundle = this.f2493h;
            str = "warning";
        }
        bundle.putString("debug", str);
    }

    /* renamed from: e */
    public final String m5166e(String str, Boolean bool) {
        if (bool.booleanValue() || this.f2487b != bj0.POST) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            for (String str2 : this.f2493h.keySet()) {
                Object obj = this.f2493h.get(str2);
                Object obj2 = obj;
                if (obj == null) {
                    obj2 = "";
                }
                if (m5192I(obj2)) {
                    buildUpon.appendQueryParameter(str2, m5189L(obj2).toString());
                } else if (this.f2487b == bj0.GET) {
                    throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", obj2.getClass().getSimpleName()));
                }
            }
            return buildUpon.toString();
        }
        return str;
    }

    /* renamed from: g */
    public final aj0 m5162g() {
        return m5161h(this);
    }

    /* renamed from: i */
    public final yi0 m5160i() {
        return m5154o(this);
    }

    /* renamed from: q */
    public final AccessToken m5152q() {
        return this.f2486a;
    }

    /* renamed from: s */
    public final AbstractC0343e m5150s() {
        return this.f2494i;
    }

    /* renamed from: t */
    public final JSONObject m5149t() {
        return this.f2489d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{Request: ");
        sb.append(" accessToken: ");
        AccessToken accessToken = this.f2486a;
        AccessToken accessToken2 = accessToken;
        if (accessToken == null) {
            accessToken2 = "null";
        }
        sb.append(accessToken2);
        sb.append(", graphPath: ");
        sb.append(this.f2488c);
        sb.append(", graphObject: ");
        sb.append(this.f2489d);
        sb.append(", httpMethod: ");
        sb.append(this.f2487b);
        sb.append(", parameters: ");
        sb.append(this.f2493h);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: u */
    public final String m5148u() {
        return this.f2488c;
    }

    /* renamed from: v */
    public final String m5147v() {
        return f2484q.matcher(this.f2488c).matches() ? this.f2488c : String.format("%s/%s", this.f2497l, this.f2488c);
    }

    /* renamed from: w */
    public final bj0 m5146w() {
        return this.f2487b;
    }

    /* renamed from: y */
    public final Bundle m5144y() {
        return this.f2493h;
    }

    /* renamed from: z */
    public final String m5143z() {
        if (this.f2495j == null) {
            String format = String.format("%s/%s", cn0.m5289c(), m5147v());
            m5168d();
            Uri parse = Uri.parse(m5166e(format, Boolean.TRUE));
            return String.format("%s?%s", parse.getPath(), parse.getQuery());
        }
        throw new ri0("Can't override URL for a batch request");
    }
}
