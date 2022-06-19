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
import com.facebook.C10193i;
import com.facebook.internal.C10210ac;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10218af;
import com.facebook.internal.C10336x;
import com.facebook.internal.p299b.p301b.C10249a;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
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
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest.class */
public class GraphRequest {

    /* renamed from: a */
    public static final String f33071a = "GraphRequest";

    /* renamed from: i */
    private static final String f33072i;

    /* renamed from: j */
    private static String f33073j;

    /* renamed from: k */
    private static Pattern f33074k = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");

    /* renamed from: r */
    private static volatile String f33075r;

    /* renamed from: b */
    AccessToken f33076b;

    /* renamed from: c */
    public JSONObject f33077c;

    /* renamed from: d */
    public Bundle f33078d;

    /* renamed from: e */
    AbstractC9933b f33079e;

    /* renamed from: f */
    public Object f33080f;

    /* renamed from: g */
    public String f33081g;

    /* renamed from: h */
    public boolean f33082h;

    /* renamed from: l */
    private EnumC10352k f33083l;

    /* renamed from: m */
    private String f33084m;

    /* renamed from: n */
    private String f33085n;

    /* renamed from: o */
    private String f33086o;

    /* renamed from: p */
    private boolean f33087p;

    /* renamed from: q */
    private String f33088q;

    /* renamed from: com.facebook.GraphRequest$1 */
    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$1.class */
    static final class C99271 implements AbstractC9933b {

        /* renamed from: a */
        final /* synthetic */ GraphJSONObjectCallback f33089a;

        C99271(GraphJSONObjectCallback graphJSONObjectCallback) {
            this.f33089a = graphJSONObjectCallback;
        }

        @Override // com.facebook.GraphRequest.AbstractC9933b
        /* renamed from: a */
        public final void mo22725a(C10351j c10351j) {
            GraphJSONObjectCallback graphJSONObjectCallback = this.f33089a;
            if (graphJSONObjectCallback != null) {
                graphJSONObjectCallback.onCompleted(c10351j.f33959a, c10351j);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$GraphJSONArrayCallback.class */
    public interface GraphJSONArrayCallback {
        void onCompleted(JSONArray jSONArray, C10351j c10351j);
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$GraphJSONObjectCallback.class */
    public interface GraphJSONObjectCallback {
        void onCompleted(JSONObject jSONObject, C10351j c10351j);
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$ParcelableResourceWithMimeType.class */
    public static class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new Parcelable.Creator<ParcelableResourceWithMimeType>() { // from class: com.facebook.GraphRequest.ParcelableResourceWithMimeType.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ ParcelableResourceWithMimeType createFromParcel(Parcel parcel) {
                return new ParcelableResourceWithMimeType(parcel, (C99271) null);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ ParcelableResourceWithMimeType[] newArray(int i) {
                return new ParcelableResourceWithMimeType[i];
            }
        };
        private final String mimeType;
        private final RESOURCE resource;

        private ParcelableResourceWithMimeType(Parcel parcel) {
            this.mimeType = parcel.readString();
            this.resource = (RESOURCE) parcel.readParcelable(C10181g.m23290i().getClassLoader());
        }

        /* synthetic */ ParcelableResourceWithMimeType(Parcel parcel, C99271 c99271) {
            this(parcel);
        }

        public ParcelableResourceWithMimeType(RESOURCE resource, String str) {
            this.mimeType = str;
            this.resource = resource;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        public String getMimeType() {
            return this.mimeType;
        }

        public RESOURCE getResource() {
            return this.resource;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.mimeType);
            parcel.writeParcelable(this.resource, i);
        }
    }

    /* renamed from: com.facebook.GraphRequest$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$a.class */
    public static final class C9932a {

        /* renamed from: a */
        final GraphRequest f33096a;

        /* renamed from: b */
        final Object f33097b;

        public C9932a(GraphRequest graphRequest, Object obj) {
            this.f33096a = graphRequest;
            this.f33097b = obj;
        }
    }

    /* renamed from: com.facebook.GraphRequest$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$b.class */
    public interface AbstractC9933b {
        /* renamed from: a */
        void mo22725a(C10351j c10351j);
    }

    /* renamed from: com.facebook.GraphRequest$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$c.class */
    public interface AbstractC9934c {
        /* renamed from: a */
        void mo23761a(String str, String str2) throws IOException;
    }

    /* renamed from: com.facebook.GraphRequest$d */
    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$d.class */
    public interface AbstractC9935d extends AbstractC9933b {
    }

    /* renamed from: com.facebook.GraphRequest$e */
    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$e.class */
    public static final class C9936e implements AbstractC9934c {

        /* renamed from: a */
        private final OutputStream f33098a;

        /* renamed from: b */
        private final C10336x f33099b;

        /* renamed from: c */
        private boolean f33100c = true;

        /* renamed from: d */
        private boolean f33101d;

        public C9936e(OutputStream outputStream, C10336x c10336x, boolean z) {
            this.f33101d = false;
            this.f33098a = outputStream;
            this.f33099b = c10336x;
            this.f33101d = z;
        }

        /* renamed from: a */
        private static RuntimeException m23766a() {
            return new IllegalArgumentException("value is not a supported type.");
        }

        /* renamed from: a */
        private void m23765a(String str, Bitmap bitmap) throws IOException {
            m23760a(str, str, "image/png");
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.f33098a);
            m23755b("", new Object[0]);
            m23756b();
            C10336x c10336x = this.f33099b;
            if (c10336x != null) {
                c10336x.m22990a("    ".concat(String.valueOf(str)), "<Image>");
            }
        }

        /* renamed from: a */
        private void m23764a(String str, Uri uri, String str2) throws IOException {
            int i;
            String str3 = str2;
            if (str2 == null) {
                str3 = "content/unknown";
            }
            m23760a(str, str, str3);
            if (this.f33098a instanceof C10399p) {
                ((C10399p) this.f33098a).m22867a(C10213ae.m23196d(uri));
                i = 0;
            } else {
                i = C10213ae.m23235a(C10181g.m23290i().getContentResolver().openInputStream(uri), this.f33098a) + 0;
            }
            m23755b("", new Object[0]);
            m23756b();
            C10336x c10336x = this.f33099b;
            if (c10336x != null) {
                c10336x.m22990a("    ".concat(String.valueOf(str)), String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(i)));
            }
        }

        /* renamed from: a */
        private void m23763a(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) throws IOException {
            int i;
            String str3 = str2;
            if (str2 == null) {
                str3 = "content/unknown";
            }
            m23760a(str, str, str3);
            OutputStream outputStream = this.f33098a;
            if (outputStream instanceof C10399p) {
                ((C10399p) outputStream).m22867a(parcelFileDescriptor.getStatSize());
                i = 0;
            } else {
                i = C10213ae.m23235a((InputStream) new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.f33098a) + 0;
            }
            m23755b("", new Object[0]);
            m23756b();
            C10336x c10336x = this.f33099b;
            if (c10336x != null) {
                c10336x.m22990a("    ".concat(String.valueOf(str)), String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(i)));
            }
        }

        /* renamed from: a */
        private void m23760a(String str, String str2, String str3) throws IOException {
            if (this.f33101d) {
                this.f33098a.write(String.format("%s=", str).getBytes());
                return;
            }
            m23757a("Content-Disposition: form-data; name=\"%s\"", str);
            if (str2 != null) {
                m23757a("; filename=\"%s\"", str2);
            }
            m23755b("", new Object[0]);
            if (str3 != null) {
                m23755b("%s: %s", "Content-Type", str3);
            }
            m23755b("", new Object[0]);
        }

        /* renamed from: a */
        private void m23758a(String str, byte[] bArr) throws IOException {
            m23760a(str, str, "content/unknown");
            this.f33098a.write(bArr);
            m23755b("", new Object[0]);
            m23756b();
            C10336x c10336x = this.f33099b;
            if (c10336x != null) {
                c10336x.m22990a("    ".concat(String.valueOf(str)), String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(bArr.length)));
            }
        }

        /* renamed from: a */
        private void m23757a(String str, Object... objArr) throws IOException {
            if (this.f33101d) {
                this.f33098a.write(URLEncoder.encode(String.format(Locale.US, str, objArr), "UTF-8").getBytes());
                return;
            }
            if (this.f33100c) {
                this.f33098a.write("--".getBytes());
                this.f33098a.write(GraphRequest.f33072i.getBytes());
                this.f33098a.write("\r\n".getBytes());
                this.f33100c = false;
            }
            this.f33098a.write(String.format(str, objArr).getBytes());
        }

        /* renamed from: b */
        private void m23756b() throws IOException {
            if (!this.f33101d) {
                m23755b("--%s", GraphRequest.f33072i);
            } else {
                this.f33098a.write("&".getBytes());
            }
        }

        /* renamed from: b */
        private void m23755b(String str, Object... objArr) throws IOException {
            m23757a(str, objArr);
            if (!this.f33101d) {
                m23757a("\r\n", new Object[0]);
            }
        }

        /* renamed from: a */
        public final void m23762a(String str, Object obj, GraphRequest graphRequest) throws IOException {
            OutputStream outputStream = this.f33098a;
            if (outputStream instanceof AbstractC10405r) {
                ((AbstractC10405r) outputStream).mo22858a(graphRequest);
            }
            if (GraphRequest.m23773d(obj)) {
                mo23761a(str, GraphRequest.m23770e(obj));
            } else if (obj instanceof Bitmap) {
                m23765a(str, (Bitmap) obj);
            } else if (obj instanceof byte[]) {
                m23758a(str, (byte[]) obj);
            } else if (obj instanceof Uri) {
                m23764a(str, (Uri) obj, (String) null);
            } else if (obj instanceof ParcelFileDescriptor) {
                m23763a(str, (ParcelFileDescriptor) obj, (String) null);
            } else if (!(obj instanceof ParcelableResourceWithMimeType)) {
                throw m23766a();
            } else {
                ParcelableResourceWithMimeType parcelableResourceWithMimeType = (ParcelableResourceWithMimeType) obj;
                Parcelable resource = parcelableResourceWithMimeType.getResource();
                String mimeType = parcelableResourceWithMimeType.getMimeType();
                if (resource instanceof ParcelFileDescriptor) {
                    m23763a(str, (ParcelFileDescriptor) resource, mimeType);
                } else if (!(resource instanceof Uri)) {
                    throw m23766a();
                } else {
                    m23764a(str, (Uri) resource, mimeType);
                }
            }
        }

        @Override // com.facebook.GraphRequest.AbstractC9934c
        /* renamed from: a */
        public final void mo23761a(String str, String str2) throws IOException {
            m23760a(str, (String) null, (String) null);
            m23755b("%s", str2);
            m23756b();
            C10336x c10336x = this.f33099b;
            if (c10336x != null) {
                c10336x.m22990a("    ".concat(String.valueOf(str)), str2);
            }
        }

        /* renamed from: a */
        public final void m23759a(String str, JSONArray jSONArray, Collection<GraphRequest> collection) throws IOException, JSONException {
            OutputStream outputStream = this.f33098a;
            if (!(outputStream instanceof AbstractC10405r)) {
                mo23761a(str, jSONArray.toString());
                return;
            }
            AbstractC10405r abstractC10405r = (AbstractC10405r) outputStream;
            m23760a(str, (String) null, (String) null);
            m23757a("[", new Object[0]);
            int i = 0;
            for (GraphRequest graphRequest : collection) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                abstractC10405r.mo22858a(graphRequest);
                if (i > 0) {
                    m23757a(",%s", jSONObject.toString());
                } else {
                    m23757a("%s", jSONObject.toString());
                }
                i++;
            }
            m23757a("]", new Object[0]);
            C10336x c10336x = this.f33099b;
            if (c10336x == null) {
                return;
            }
            c10336x.m22990a("    ".concat(String.valueOf(str)), jSONArray.toString());
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
        f33072i = sb.toString();
    }

    public GraphRequest() {
        this(null, null, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String str) {
        this(accessToken, str, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, EnumC10352k enumC10352k) {
        this(accessToken, str, bundle, enumC10352k, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, EnumC10352k enumC10352k, AbstractC9933b abstractC9933b) {
        this(accessToken, str, bundle, enumC10352k, abstractC9933b, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, EnumC10352k enumC10352k, AbstractC9933b abstractC9933b, String str2) {
        this.f33087p = true;
        this.f33082h = false;
        this.f33076b = accessToken;
        this.f33084m = str;
        this.f33081g = str2;
        m23798a(abstractC9933b);
        m23792a(enumC10352k);
        if (bundle != null) {
            this.f33078d = new Bundle(bundle);
        } else {
            this.f33078d = new Bundle();
        }
        if (this.f33081g == null) {
            this.f33081g = C10181g.m23289j();
        }
    }

    GraphRequest(AccessToken accessToken, URL url) {
        this.f33087p = true;
        this.f33082h = false;
        this.f33076b = accessToken;
        this.f33088q = url.toString();
        m23792a(EnumC10352k.GET);
        this.f33078d = new Bundle();
    }

    /* renamed from: a */
    public static GraphRequest m23799a(AccessToken accessToken, String str, JSONObject jSONObject, AbstractC9933b abstractC9933b) {
        GraphRequest graphRequest = new GraphRequest(accessToken, str, null, EnumC10352k.POST, abstractC9933b);
        graphRequest.f33077c = jSONObject;
        return graphRequest;
    }

    /* renamed from: a */
    public static GraphRequest m23790a(String str) {
        return new GraphRequest(null, str, null, null, null);
    }

    /* renamed from: a */
    public static C10351j m23796a(GraphRequest graphRequest) {
        List<C10351j> m23782a = m23782a(graphRequest);
        if (m23782a == null || m23782a.size() != 1) {
            throw new FacebookException("invalid state: expected a single response");
        }
        return m23782a.get(0);
    }

    /* renamed from: a */
    private String m23789a(String str, Boolean bool) {
        if (bool.booleanValue() || this.f33083l != EnumC10352k.POST) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            for (String str2 : this.f33078d.keySet()) {
                Object obj = this.f33078d.get(str2);
                Object obj2 = obj;
                if (obj == null) {
                    obj2 = "";
                }
                if (m23773d(obj2)) {
                    buildUpon.appendQueryParameter(str2, m23770e(obj2).toString());
                } else if (this.f33083l == EnumC10352k.GET) {
                    throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", obj2.getClass().getSimpleName()));
                }
            }
            return buildUpon.toString();
        }
        return str;
    }

    /* renamed from: a */
    public static List<C10351j> m23795a(C10193i c10193i) {
        C10218af.m23177a((Collection) c10193i, "requests");
        HttpURLConnection httpURLConnection = null;
        try {
            return m23787a(m23777c(c10193i), c10193i);
        } catch (Exception e) {
            List<C10351j> m22933a = C10351j.m22933a(c10193i.f33628b, (HttpURLConnection) null, new FacebookException(e));
            m23793a(c10193i, m22933a);
            httpURLConnection = null;
            return m22933a;
        } finally {
            C10213ae.m23223a(httpURLConnection);
        }
    }

    /* renamed from: a */
    public static List<C10351j> m23787a(HttpURLConnection httpURLConnection, C10193i c10193i) {
        List<C10351j> m22935a = C10351j.m22935a(httpURLConnection, c10193i);
        C10213ae.m23223a(httpURLConnection);
        int size = c10193i.size();
        if (size == m22935a.size()) {
            m23793a(c10193i, m22935a);
            C10107b.m23388a().m23381b();
            return m22935a;
        }
        throw new FacebookException(String.format(Locale.US, "Received %d responses while expecting %d", Integer.valueOf(m22935a.size()), Integer.valueOf(size)));
    }

    /* renamed from: a */
    private static List<C10351j> m23786a(Collection<GraphRequest> collection) {
        return m23795a(new C10193i(collection));
    }

    /* renamed from: a */
    private static List<C10351j> m23782a(GraphRequest... graphRequestArr) {
        C10218af.m23179a(graphRequestArr, "requests");
        return m23786a((Collection<GraphRequest>) Arrays.asList(graphRequestArr));
    }

    /* renamed from: a */
    private static void m23800a(Bundle bundle, C9936e c9936e, GraphRequest graphRequest) throws IOException {
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (m23773d(obj)) {
                c9936e.m23762a(str, obj, graphRequest);
            }
        }
    }

    /* renamed from: a */
    private static void m23797a(C9936e c9936e, Collection<GraphRequest> collection, Map<String, C9932a> map) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (GraphRequest graphRequest : collection) {
            graphRequest.m23784a(jSONArray, map);
        }
        c9936e.m23759a("batch", jSONArray, collection);
    }

    /* renamed from: a */
    private static void m23794a(C10193i c10193i, C10336x c10336x, int i, URL url, OutputStream outputStream, boolean z) throws IOException, JSONException {
        C9936e c9936e = new C9936e(outputStream, c10336x, z);
        if (i != 1) {
            String m23768f = m23768f(c10193i);
            if (C10213ae.m23230a(m23768f)) {
                throw new FacebookException("App ID was not specified at the request or Settings.");
            }
            c9936e.mo23761a("batch_app_id", m23768f);
            HashMap hashMap = new HashMap();
            m23797a(c9936e, c10193i, hashMap);
            if (c10336x != null) {
                c10336x.m22991a("  Attachments:\n");
            }
            m23785a(hashMap, c9936e);
            return;
        }
        GraphRequest graphRequest = c10193i.get(0);
        HashMap hashMap2 = new HashMap();
        for (String str : graphRequest.f33078d.keySet()) {
            Object obj = graphRequest.f33078d.get(str);
            if (m23776c(obj)) {
                hashMap2.put(str, new C9932a(graphRequest, obj));
            }
        }
        if (c10336x != null) {
            c10336x.m22991a("  Parameters:\n");
        }
        m23800a(graphRequest.f33078d, c9936e, graphRequest);
        if (c10336x != null) {
            c10336x.m22991a("  Attachments:\n");
        }
        m23785a(hashMap2, c9936e);
        JSONObject jSONObject = graphRequest.f33077c;
        if (jSONObject == null) {
            return;
        }
        m23783a(jSONObject, url.getPath(), c9936e);
    }

    /* renamed from: a */
    private static void m23793a(final C10193i c10193i, List<C10351j> list) {
        int size = c10193i.size();
        final ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            GraphRequest graphRequest = c10193i.get(i);
            if (graphRequest.f33079e != null) {
                arrayList.add(new Pair(graphRequest.f33079e, list.get(i)));
            }
        }
        if (arrayList.size() > 0) {
            Runnable runnable = new Runnable() { // from class: com.facebook.GraphRequest.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            Pair pair = (Pair) it2.next();
                            ((AbstractC9933b) pair.first).mo22725a((C10351j) pair.second);
                        }
                        for (C10193i.AbstractC10194a abstractC10194a : c10193i.f33631e) {
                            abstractC10194a.mo22729a();
                        }
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            };
            Handler handler = c10193i.f33627a;
            if (handler == null) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    /* renamed from: a */
    private void m23792a(EnumC10352k enumC10352k) {
        if (this.f33088q == null || enumC10352k == EnumC10352k.GET) {
            if (enumC10352k == null) {
                enumC10352k = EnumC10352k.GET;
            }
            this.f33083l = enumC10352k;
            return;
        }
        throw new FacebookException("Can't change HTTP method on request with overridden URL.");
    }

    /* renamed from: a */
    private static void m23788a(String str, Object obj, AbstractC9934c abstractC9934c, boolean z) throws IOException {
        while (true) {
            Class<?> cls = obj.getClass();
            if (!JSONObject.class.isAssignableFrom(cls)) {
                if (JSONArray.class.isAssignableFrom(cls)) {
                    JSONArray jSONArray = (JSONArray) obj;
                    int length = jSONArray.length();
                    for (int i = 0; i < length; i++) {
                        m23788a(String.format(Locale.ROOT, "%s[%d]", str, Integer.valueOf(i)), jSONArray.opt(i), abstractC9934c, z);
                    }
                    return;
                } else if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
                    abstractC9934c.mo23761a(str, obj.toString());
                    return;
                } else if (!Date.class.isAssignableFrom(cls)) {
                    return;
                } else {
                    abstractC9934c.mo23761a(str, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj));
                    return;
                }
            }
            JSONObject jSONObject = (JSONObject) obj;
            if (z) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    m23788a(String.format("%s[%s]", str, next), jSONObject.opt(next), abstractC9934c, z);
                }
                return;
            } else if (jSONObject.has("id")) {
                m23788a(str, jSONObject.optString("id"), abstractC9934c, z);
                return;
            } else if (jSONObject.has("url")) {
                m23788a(str, jSONObject.optString("url"), abstractC9934c, z);
                return;
            } else if (!jSONObject.has("fbsdk:create_object")) {
                return;
            } else {
                obj = jSONObject.toString();
            }
        }
    }

    /* renamed from: a */
    private static void m23785a(Map<String, C9932a> map, C9936e c9936e) throws IOException {
        for (String str : map.keySet()) {
            C9932a c9932a = map.get(str);
            if (m23776c(c9932a.f33097b)) {
                c9936e.m23762a(str, c9932a.f33097b, c9932a.f33096a);
            }
        }
    }

    /* renamed from: a */
    private void m23784a(JSONArray jSONArray, Map<String, C9932a> map) throws JSONException, IOException {
        JSONObject jSONObject = new JSONObject();
        String str = this.f33085n;
        if (str != null) {
            jSONObject.put("name", str);
            jSONObject.put("omit_response_on_success", this.f33087p);
        }
        String str2 = this.f33086o;
        if (str2 != null) {
            jSONObject.put("depends_on", str2);
        }
        String m23769f = m23769f();
        jSONObject.put("relative_url", m23769f);
        jSONObject.put("method", this.f33083l);
        AccessToken accessToken = this.f33076b;
        if (accessToken != null) {
            C10336x.m22985b(accessToken.getToken());
        }
        ArrayList arrayList = new ArrayList();
        for (String str3 : this.f33078d.keySet()) {
            Object obj = this.f33078d.get(str3);
            if (m23776c(obj)) {
                String format = String.format(Locale.ROOT, "%s%d", "file", Integer.valueOf(map.size()));
                arrayList.add(format);
                map.put(format, new C9932a(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put("attached_files", TextUtils.join(",", arrayList));
        }
        if (this.f33077c != null) {
            final ArrayList arrayList2 = new ArrayList();
            m23783a(this.f33077c, m23769f, new AbstractC9934c() { // from class: com.facebook.GraphRequest.4
                @Override // com.facebook.GraphRequest.AbstractC9934c
                /* renamed from: a */
                public final void mo23761a(String str4, String str5) throws IOException {
                    arrayList2.add(String.format(Locale.US, "%s=%s", str4, URLEncoder.encode(str5, "UTF-8")));
                }
            });
            jSONObject.put("body", TextUtils.join("&", arrayList2));
        }
        jSONArray.put(jSONObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m23783a(org.json.JSONObject r5, java.lang.String r6, com.facebook.GraphRequest.AbstractC9934c r7) throws java.io.IOException {
        /*
            java.util.regex.Pattern r0 = com.facebook.GraphRequest.f33074k
            r1 = r6
            java.util.regex.Matcher r0 = r0.matcher(r1)
            r8 = r0
            r0 = r8
            boolean r0 = r0.matches()
            if (r0 == 0) goto L18
            r0 = r8
            r1 = 1
            java.lang.String r0 = r0.group(r1)
            r8 = r0
            goto L1a
        L18:
            r0 = r6
            r8 = r0
        L1a:
            r0 = r8
            java.lang.String r1 = "me/"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L37
            r0 = r8
            java.lang.String r1 = "/me/"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L31
            goto L37
        L31:
            r0 = 0
            r9 = r0
            goto L3a
        L37:
            r0 = 1
            r9 = r0
        L3a:
            r0 = r9
            if (r0 == 0) goto L6a
            r0 = r6
            java.lang.String r1 = ":"
            int r0 = r0.indexOf(r1)
            r10 = r0
            r0 = r6
            java.lang.String r1 = "?"
            int r0 = r0.indexOf(r1)
            r9 = r0
            r0 = r10
            r1 = 3
            if (r0 <= r1) goto L6a
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L64
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L6a
        L64:
            r0 = 1
            r9 = r0
            goto L6d
        L6a:
            r0 = 0
            r9 = r0
        L6d:
            r0 = r5
            java.util.Iterator r0 = r0.keys()
            r11 = r0
        L73:
            r0 = r11
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto Lb1
            r0 = r11
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r8 = r0
            r0 = r5
            r1 = r8
            java.lang.Object r0 = r0.opt(r1)
            r6 = r0
            r0 = r9
            if (r0 == 0) goto La3
            r0 = r8
            java.lang.String r1 = "image"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto La3
            r0 = 1
            r12 = r0
            goto La6
        La3:
            r0 = 0
            r12 = r0
        La6:
            r0 = r8
            r1 = r6
            r2 = r7
            r3 = r12
            m23788a(r0, r1, r2, r3)
            goto L73
        Lb1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.m23783a(org.json.JSONObject, java.lang.String, com.facebook.GraphRequest$c):void");
    }

    /* renamed from: b */
    public static AsyncTaskC10192h m23780b(C10193i c10193i) {
        C10218af.m23177a((Collection) c10193i, "requests");
        AsyncTaskC10192h asyncTaskC10192h = new AsyncTaskC10192h(c10193i);
        asyncTaskC10192h.executeOnExecutor(C10181g.m23293f(), new Void[0]);
        return asyncTaskC10192h;
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0005 A[SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.net.HttpURLConnection m23777c(com.facebook.C10193i r8) {
        /*
            Method dump skipped, instructions count: 953
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.m23777c(com.facebook.i):java.net.HttpURLConnection");
    }

    /* renamed from: c */
    private static boolean m23776c(Object obj) {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelableResourceWithMimeType);
    }

    /* renamed from: d */
    private static boolean m23774d(C10193i c10193i) {
        for (C10193i.AbstractC10194a abstractC10194a : c10193i.f33631e) {
            if (abstractC10194a instanceof C10193i.AbstractC10195b) {
                return true;
            }
        }
        Iterator<GraphRequest> it2 = c10193i.iterator();
        while (it2.hasNext()) {
            if (it2.next().f33079e instanceof AbstractC9935d) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static boolean m23773d(Object obj) {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    /* renamed from: e */
    public static String m23770e(Object obj) {
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

    /* renamed from: e */
    private void m23772e() {
        if (this.f33076b != null) {
            if (!this.f33078d.containsKey(AccessToken.ACCESS_TOKEN_KEY)) {
                String token = this.f33076b.getToken();
                C10336x.m22985b(token);
                this.f33078d.putString(AccessToken.ACCESS_TOKEN_KEY, token);
            }
        } else if (!this.f33082h && !this.f33078d.containsKey(AccessToken.ACCESS_TOKEN_KEY)) {
            String m23286m = C10181g.m23286m();
            String m23284o = C10181g.m23284o();
            if (C10213ae.m23230a(m23286m) || C10213ae.m23230a(m23284o)) {
                C10213ae.m23250a();
            } else {
                this.f33078d.putString(AccessToken.ACCESS_TOKEN_KEY, m23286m + "|" + m23284o);
            }
        }
        this.f33078d.putString("sdk", Constants.ANDROID_PLATFORM);
        this.f33078d.putString("format", "json");
        if (C10181g.m23298b(EnumC10396m.GRAPH_API_DEBUG_INFO)) {
            this.f33078d.putString("debug", "info");
        } else if (!C10181g.m23298b(EnumC10396m.GRAPH_API_DEBUG_WARNING)) {
        } else {
            this.f33078d.putString("debug", "warning");
        }
    }

    /* renamed from: e */
    private static boolean m23771e(C10193i c10193i) {
        Iterator<GraphRequest> it2 = c10193i.iterator();
        while (it2.hasNext()) {
            GraphRequest next = it2.next();
            for (String str : next.f33078d.keySet()) {
                if (m23776c(next.f33078d.get(str))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: f */
    private String m23769f() {
        if (this.f33088q == null) {
            String format = String.format("%s/%s", C10210ac.m23253f(), m23767g());
            m23772e();
            Uri parse = Uri.parse(m23789a(format, Boolean.TRUE));
            return String.format("%s?%s", parse.getPath(), parse.getQuery());
        }
        throw new FacebookException("Can't override URL for a batch request");
    }

    /* renamed from: f */
    private static String m23768f(C10193i c10193i) {
        String applicationId;
        if (!C10213ae.m23230a(c10193i.f33632f)) {
            return c10193i.f33632f;
        }
        Iterator<GraphRequest> it2 = c10193i.iterator();
        while (it2.hasNext()) {
            AccessToken accessToken = it2.next().f33076b;
            if (accessToken != null && (applicationId = accessToken.getApplicationId()) != null) {
                return applicationId;
            }
        }
        return !C10213ae.m23230a(f33073j) ? f33073j : C10181g.m23286m();
    }

    /* renamed from: g */
    private String m23767g() {
        return f33074k.matcher(this.f33084m).matches() ? this.f33084m : String.format("%s/%s", this.f33081g, this.f33084m);
    }

    /* renamed from: a */
    public final void m23802a() {
        this.f33082h = true;
    }

    /* renamed from: a */
    public final void m23801a(Bundle bundle) {
        this.f33078d = bundle;
    }

    /* renamed from: a */
    public final void m23798a(final AbstractC9933b abstractC9933b) {
        if (C10181g.m23298b(EnumC10396m.GRAPH_API_DEBUG_INFO) || C10181g.m23298b(EnumC10396m.GRAPH_API_DEBUG_WARNING)) {
            this.f33079e = new AbstractC9933b() { // from class: com.facebook.GraphRequest.2
                @Override // com.facebook.GraphRequest.AbstractC9933b
                /* renamed from: a */
                public final void mo22725a(C10351j c10351j) {
                    JSONObject jSONObject = c10351j.f33959a;
                    JSONObject optJSONObject = jSONObject != null ? jSONObject.optJSONObject("__debug__") : null;
                    JSONArray optJSONArray = optJSONObject != null ? optJSONObject.optJSONArray("messages") : null;
                    if (optJSONArray != null) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                            String optString = optJSONObject2 != null ? optJSONObject2.optString("message") : null;
                            String optString2 = optJSONObject2 != null ? optJSONObject2.optString("type") : null;
                            String optString3 = optJSONObject2 != null ? optJSONObject2.optString("link") : null;
                            if (optString != null && optString2 != null) {
                                EnumC10396m enumC10396m = EnumC10396m.GRAPH_API_DEBUG_INFO;
                                if (optString2.equals("warning")) {
                                    enumC10396m = EnumC10396m.GRAPH_API_DEBUG_WARNING;
                                }
                                String str = optString;
                                if (!C10213ae.m23230a(optString3)) {
                                    str = optString + " Link: " + optString3;
                                }
                                C10336x.m22993a(enumC10396m, GraphRequest.f33071a, str);
                            }
                        }
                    }
                    AbstractC9933b abstractC9933b2 = abstractC9933b;
                    if (abstractC9933b2 != null) {
                        abstractC9933b2.mo22725a(c10351j);
                    }
                }
            };
        } else {
            this.f33079e = abstractC9933b;
        }
    }

    /* renamed from: b */
    public final C10351j m23781b() {
        return m23796a(this);
    }

    /* renamed from: c */
    public final AsyncTaskC10192h m23778c() {
        GraphRequest[] graphRequestArr = {this};
        C10218af.m23179a(graphRequestArr, "requests");
        return m23780b(new C10193i(Arrays.asList(graphRequestArr)));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{Request:  accessToken: ");
        AccessToken accessToken = this.f33076b;
        AccessToken accessToken2 = accessToken;
        if (accessToken == null) {
            accessToken2 = JsonReaderKt.NULL;
        }
        sb.append(accessToken2);
        sb.append(", graphPath: ");
        sb.append(this.f33084m);
        sb.append(", graphObject: ");
        sb.append(this.f33077c);
        sb.append(", httpMethod: ");
        sb.append(this.f33083l);
        sb.append(", parameters: ");
        sb.append(this.f33078d);
        sb.append("}");
        return sb.toString();
    }
}
