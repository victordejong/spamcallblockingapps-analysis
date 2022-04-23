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
import com.facebook.i;
import com.facebook.internal.ac;
import com.facebook.internal.ae;
import com.facebook.internal.af;
import com.facebook.internal.x;
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

    /* renamed from: a  reason: collision with root package name */
    public static final String f19370a = "GraphRequest";
    private static final String i;
    private static String j;
    private static Pattern k = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
    private static volatile String r;

    /* renamed from: b  reason: collision with root package name */
    AccessToken f19371b;

    /* renamed from: c  reason: collision with root package name */
    public JSONObject f19372c;

    /* renamed from: d  reason: collision with root package name */
    public Bundle f19373d;
    b e;
    public Object f;
    public String g;
    public boolean h;
    private k l;
    private String m;
    private String n;
    private String o;
    private boolean p;
    private String q;

    /* renamed from: com.facebook.GraphRequest$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$1.class */
    static final class AnonymousClass1 implements b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GraphJSONObjectCallback f19374a;

        AnonymousClass1(GraphJSONObjectCallback graphJSONObjectCallback) {
            this.f19374a = graphJSONObjectCallback;
        }

        @Override // com.facebook.GraphRequest.b
        public final void a(j jVar) {
            GraphJSONObjectCallback graphJSONObjectCallback = this.f19374a;
            if (graphJSONObjectCallback != null) {
                graphJSONObjectCallback.onCompleted(jVar.f20036a, jVar);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$GraphJSONArrayCallback.class */
    public interface GraphJSONArrayCallback {
        void onCompleted(JSONArray jSONArray, j jVar);
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$GraphJSONObjectCallback.class */
    public interface GraphJSONObjectCallback {
        void onCompleted(JSONObject jSONObject, j jVar);
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$ParcelableResourceWithMimeType.class */
    public static class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new Parcelable.Creator<ParcelableResourceWithMimeType>() { // from class: com.facebook.GraphRequest.ParcelableResourceWithMimeType.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ ParcelableResourceWithMimeType createFromParcel(Parcel parcel) {
                return new ParcelableResourceWithMimeType(parcel, (AnonymousClass1) null);
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
            this.resource = (RESOURCE) parcel.readParcelable(g.i().getClassLoader());
        }

        /* synthetic */ ParcelableResourceWithMimeType(Parcel parcel, AnonymousClass1 r5) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final GraphRequest f19381a;

        /* renamed from: b  reason: collision with root package name */
        final Object f19382b;

        public a(GraphRequest graphRequest, Object obj) {
            this.f19381a = graphRequest;
            this.f19382b = obj;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$b.class */
    public interface b {
        void a(j jVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$c.class */
    public interface c {
        void a(String str, String str2) throws IOException;
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$d.class */
    public interface d extends b {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/GraphRequest$e.class */
    public static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        private final OutputStream f19383a;

        /* renamed from: b  reason: collision with root package name */
        private final x f19384b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f19385c = true;

        /* renamed from: d  reason: collision with root package name */
        private boolean f19386d;

        public e(OutputStream outputStream, x xVar, boolean z) {
            this.f19386d = false;
            this.f19383a = outputStream;
            this.f19384b = xVar;
            this.f19386d = z;
        }

        private static RuntimeException a() {
            return new IllegalArgumentException("value is not a supported type.");
        }

        private void a(String str, Bitmap bitmap) throws IOException {
            a(str, str, "image/png");
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.f19383a);
            b("", new Object[0]);
            b();
            x xVar = this.f19384b;
            if (xVar != null) {
                xVar.a("    ".concat(String.valueOf(str)), "<Image>");
            }
        }

        private void a(String str, Uri uri, String str2) throws IOException {
            int i;
            String str3 = str2;
            if (str2 == null) {
                str3 = "content/unknown";
            }
            a(str, str, str3);
            if (this.f19383a instanceof p) {
                ((p) this.f19383a).a(ae.d(uri));
                i = 0;
            } else {
                i = ae.a(g.i().getContentResolver().openInputStream(uri), this.f19383a) + 0;
            }
            b("", new Object[0]);
            b();
            x xVar = this.f19384b;
            if (xVar != null) {
                xVar.a("    ".concat(String.valueOf(str)), String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(i)));
            }
        }

        private void a(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) throws IOException {
            int i;
            String str3 = str2;
            if (str2 == null) {
                str3 = "content/unknown";
            }
            a(str, str, str3);
            OutputStream outputStream = this.f19383a;
            if (outputStream instanceof p) {
                ((p) outputStream).a(parcelFileDescriptor.getStatSize());
                i = 0;
            } else {
                i = ae.a((InputStream) new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.f19383a) + 0;
            }
            b("", new Object[0]);
            b();
            x xVar = this.f19384b;
            if (xVar != null) {
                xVar.a("    ".concat(String.valueOf(str)), String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(i)));
            }
        }

        private void a(String str, String str2, String str3) throws IOException {
            if (!this.f19386d) {
                a("Content-Disposition: form-data; name=\"%s\"", str);
                if (str2 != null) {
                    a("; filename=\"%s\"", str2);
                }
                b("", new Object[0]);
                if (str3 != null) {
                    b("%s: %s", "Content-Type", str3);
                }
                b("", new Object[0]);
                return;
            }
            this.f19383a.write(String.format("%s=", str).getBytes());
        }

        private void a(String str, byte[] bArr) throws IOException {
            a(str, str, "content/unknown");
            this.f19383a.write(bArr);
            b("", new Object[0]);
            b();
            x xVar = this.f19384b;
            if (xVar != null) {
                xVar.a("    ".concat(String.valueOf(str)), String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(bArr.length)));
            }
        }

        private void a(String str, Object... objArr) throws IOException {
            if (!this.f19386d) {
                if (this.f19385c) {
                    this.f19383a.write("--".getBytes());
                    this.f19383a.write(GraphRequest.i.getBytes());
                    this.f19383a.write("\r\n".getBytes());
                    this.f19385c = false;
                }
                this.f19383a.write(String.format(str, objArr).getBytes());
                return;
            }
            this.f19383a.write(URLEncoder.encode(String.format(Locale.US, str, objArr), "UTF-8").getBytes());
        }

        private void b() throws IOException {
            if (!this.f19386d) {
                b("--%s", GraphRequest.i);
            } else {
                this.f19383a.write("&".getBytes());
            }
        }

        private void b(String str, Object... objArr) throws IOException {
            a(str, objArr);
            if (!this.f19386d) {
                a("\r\n", new Object[0]);
            }
        }

        public final void a(String str, Object obj, GraphRequest graphRequest) throws IOException {
            OutputStream outputStream = this.f19383a;
            if (outputStream instanceof r) {
                ((r) outputStream).a(graphRequest);
            }
            if (GraphRequest.d(obj)) {
                a(str, GraphRequest.e(obj));
            } else if (obj instanceof Bitmap) {
                a(str, (Bitmap) obj);
            } else if (obj instanceof byte[]) {
                a(str, (byte[]) obj);
            } else if (obj instanceof Uri) {
                a(str, (Uri) obj, (String) null);
            } else if (obj instanceof ParcelFileDescriptor) {
                a(str, (ParcelFileDescriptor) obj, (String) null);
            } else if (obj instanceof ParcelableResourceWithMimeType) {
                ParcelableResourceWithMimeType parcelableResourceWithMimeType = (ParcelableResourceWithMimeType) obj;
                Parcelable resource = parcelableResourceWithMimeType.getResource();
                String mimeType = parcelableResourceWithMimeType.getMimeType();
                if (resource instanceof ParcelFileDescriptor) {
                    a(str, (ParcelFileDescriptor) resource, mimeType);
                } else if (resource instanceof Uri) {
                    a(str, (Uri) resource, mimeType);
                } else {
                    throw a();
                }
            } else {
                throw a();
            }
        }

        @Override // com.facebook.GraphRequest.c
        public final void a(String str, String str2) throws IOException {
            a(str, (String) null, (String) null);
            b("%s", str2);
            b();
            x xVar = this.f19384b;
            if (xVar != null) {
                xVar.a("    ".concat(String.valueOf(str)), str2);
            }
        }

        public final void a(String str, JSONArray jSONArray, Collection<GraphRequest> collection) throws IOException, JSONException {
            OutputStream outputStream = this.f19383a;
            if (!(outputStream instanceof r)) {
                a(str, jSONArray.toString());
                return;
            }
            r rVar = (r) outputStream;
            a(str, (String) null, (String) null);
            a("[", new Object[0]);
            int i = 0;
            for (GraphRequest graphRequest : collection) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                rVar.a(graphRequest);
                if (i > 0) {
                    a(",%s", jSONObject.toString());
                } else {
                    a("%s", jSONObject.toString());
                }
                i++;
            }
            a("]", new Object[0]);
            x xVar = this.f19384b;
            if (xVar != null) {
                xVar.a("    ".concat(String.valueOf(str)), jSONArray.toString());
            }
        }
    }

    static {
        char[] charArray = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        int nextInt = secureRandom.nextInt(11);
        for (int i2 = 0; i2 < nextInt + 30; i2++) {
            sb.append(charArray[secureRandom.nextInt(charArray.length)]);
        }
        i = sb.toString();
    }

    public GraphRequest() {
        this(null, null, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String str) {
        this(accessToken, str, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, k kVar) {
        this(accessToken, str, bundle, kVar, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, k kVar, b bVar) {
        this(accessToken, str, bundle, kVar, bVar, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, k kVar, b bVar, String str2) {
        this.p = true;
        this.h = false;
        this.f19371b = accessToken;
        this.m = str;
        this.g = str2;
        a(bVar);
        a(kVar);
        if (bundle != null) {
            this.f19373d = new Bundle(bundle);
        } else {
            this.f19373d = new Bundle();
        }
        if (this.g == null) {
            this.g = g.j();
        }
    }

    GraphRequest(AccessToken accessToken, URL url) {
        this.p = true;
        this.h = false;
        this.f19371b = accessToken;
        this.q = url.toString();
        a(k.GET);
        this.f19373d = new Bundle();
    }

    public static GraphRequest a(AccessToken accessToken, String str, JSONObject jSONObject, b bVar) {
        GraphRequest graphRequest = new GraphRequest(accessToken, str, null, k.POST, bVar);
        graphRequest.f19372c = jSONObject;
        return graphRequest;
    }

    public static GraphRequest a(String str) {
        return new GraphRequest(null, str, null, null, null);
    }

    public static j a(GraphRequest graphRequest) {
        List<j> a2 = a(graphRequest);
        if (a2 != null && a2.size() == 1) {
            return a2.get(0);
        }
        throw new FacebookException("invalid state: expected a single response");
    }

    private String a(String str, Boolean bool) {
        if (!bool.booleanValue() && this.l == k.POST) {
            return str;
        }
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        for (String str2 : this.f19373d.keySet()) {
            Object obj = this.f19373d.get(str2);
            Object obj2 = obj;
            if (obj == null) {
                obj2 = "";
            }
            if (d(obj2)) {
                buildUpon.appendQueryParameter(str2, e(obj2).toString());
            } else if (this.l == k.GET) {
                throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", obj2.getClass().getSimpleName()));
            }
        }
        return buildUpon.toString();
    }

    public static List<j> a(i iVar) {
        af.a((Collection) iVar, "requests");
        HttpURLConnection httpURLConnection = null;
        try {
            return a(c(iVar), iVar);
        } catch (Exception e2) {
            List<j> a2 = j.a(iVar.f19792b, (HttpURLConnection) null, new FacebookException(e2));
            a(iVar, a2);
            httpURLConnection = null;
            return a2;
        } finally {
            ae.a(httpURLConnection);
        }
    }

    public static List<j> a(HttpURLConnection httpURLConnection, i iVar) {
        List<j> a2 = j.a(httpURLConnection, iVar);
        ae.a(httpURLConnection);
        int size = iVar.size();
        if (size == a2.size()) {
            a(iVar, a2);
            com.facebook.b.a().b();
            return a2;
        }
        throw new FacebookException(String.format(Locale.US, "Received %d responses while expecting %d", Integer.valueOf(a2.size()), Integer.valueOf(size)));
    }

    private static List<j> a(Collection<GraphRequest> collection) {
        return a(new i(collection));
    }

    private static List<j> a(GraphRequest... graphRequestArr) {
        af.a(graphRequestArr, "requests");
        return a((Collection<GraphRequest>) Arrays.asList(graphRequestArr));
    }

    private static void a(Bundle bundle, e eVar, GraphRequest graphRequest) throws IOException {
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (d(obj)) {
                eVar.a(str, obj, graphRequest);
            }
        }
    }

    private static void a(e eVar, Collection<GraphRequest> collection, Map<String, a> map) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (GraphRequest graphRequest : collection) {
            graphRequest.a(jSONArray, map);
        }
        eVar.a("batch", jSONArray, collection);
    }

    private static void a(i iVar, x xVar, int i2, URL url, OutputStream outputStream, boolean z) throws IOException, JSONException {
        e eVar = new e(outputStream, xVar, z);
        if (i2 == 1) {
            GraphRequest a2 = iVar.get(0);
            HashMap hashMap = new HashMap();
            for (String str : a2.f19373d.keySet()) {
                Object obj = a2.f19373d.get(str);
                if (c(obj)) {
                    hashMap.put(str, new a(a2, obj));
                }
            }
            if (xVar != null) {
                xVar.a("  Parameters:\n");
            }
            a(a2.f19373d, eVar, a2);
            if (xVar != null) {
                xVar.a("  Attachments:\n");
            }
            a(hashMap, eVar);
            JSONObject jSONObject = a2.f19372c;
            if (jSONObject != null) {
                a(jSONObject, url.getPath(), eVar);
                return;
            }
            return;
        }
        String f = f(iVar);
        if (!ae.a(f)) {
            eVar.a("batch_app_id", f);
            HashMap hashMap2 = new HashMap();
            a(eVar, iVar, hashMap2);
            if (xVar != null) {
                xVar.a("  Attachments:\n");
            }
            a(hashMap2, eVar);
            return;
        }
        throw new FacebookException("App ID was not specified at the request or Settings.");
    }

    private static void a(final i iVar, List<j> list) {
        int size = iVar.size();
        final ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < size; i2++) {
            GraphRequest a2 = iVar.get(i2);
            if (a2.e != null) {
                arrayList.add(new Pair(a2.e, list.get(i2)));
            }
        }
        if (arrayList.size() > 0) {
            Runnable runnable = new Runnable() { // from class: com.facebook.GraphRequest.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        try {
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                Pair pair = (Pair) it2.next();
                                ((b) pair.first).a((j) pair.second);
                            }
                            for (i.a aVar : iVar.e) {
                                aVar.a();
                            }
                        } catch (Throwable th) {
                            com.facebook.internal.b.b.a.a(th, this);
                        }
                    }
                }
            };
            Handler handler = iVar.f19791a;
            if (handler == null) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    private void a(k kVar) {
        if (this.q == null || kVar == k.GET) {
            if (kVar == null) {
                kVar = k.GET;
            }
            this.l = kVar;
            return;
        }
        throw new FacebookException("Can't change HTTP method on request with overridden URL.");
    }

    private static void a(String str, Object obj, c cVar, boolean z) throws IOException {
        while (true) {
            Class<?> cls = obj.getClass();
            if (JSONObject.class.isAssignableFrom(cls)) {
                JSONObject jSONObject = (JSONObject) obj;
                if (z) {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        a(String.format("%s[%s]", str, next), jSONObject.opt(next), cVar, z);
                    }
                    return;
                } else if (jSONObject.has("id")) {
                    a(str, jSONObject.optString("id"), cVar, z);
                    return;
                } else if (jSONObject.has("url")) {
                    a(str, jSONObject.optString("url"), cVar, z);
                    return;
                } else if (jSONObject.has("fbsdk:create_object")) {
                    obj = jSONObject.toString();
                } else {
                    return;
                }
            } else if (JSONArray.class.isAssignableFrom(cls)) {
                JSONArray jSONArray = (JSONArray) obj;
                int length = jSONArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    a(String.format(Locale.ROOT, "%s[%d]", str, Integer.valueOf(i2)), jSONArray.opt(i2), cVar, z);
                }
                return;
            } else if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
                cVar.a(str, obj.toString());
                return;
            } else if (Date.class.isAssignableFrom(cls)) {
                cVar.a(str, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj));
                return;
            } else {
                return;
            }
        }
    }

    private static void a(Map<String, a> map, e eVar) throws IOException {
        for (String str : map.keySet()) {
            a aVar = map.get(str);
            if (c(aVar.f19382b)) {
                eVar.a(str, aVar.f19382b, aVar.f19381a);
            }
        }
    }

    private void a(JSONArray jSONArray, Map<String, a> map) throws JSONException, IOException {
        JSONObject jSONObject = new JSONObject();
        String str = this.n;
        if (str != null) {
            jSONObject.put("name", str);
            jSONObject.put("omit_response_on_success", this.p);
        }
        String str2 = this.o;
        if (str2 != null) {
            jSONObject.put("depends_on", str2);
        }
        String f = f();
        jSONObject.put("relative_url", f);
        jSONObject.put("method", this.l);
        AccessToken accessToken = this.f19371b;
        if (accessToken != null) {
            x.b(accessToken.getToken());
        }
        ArrayList arrayList = new ArrayList();
        for (String str3 : this.f19373d.keySet()) {
            Object obj = this.f19373d.get(str3);
            if (c(obj)) {
                String format = String.format(Locale.ROOT, "%s%d", "file", Integer.valueOf(map.size()));
                arrayList.add(format);
                map.put(format, new a(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put("attached_files", TextUtils.join(",", arrayList));
        }
        if (this.f19372c != null) {
            final ArrayList arrayList2 = new ArrayList();
            a(this.f19372c, f, new c() { // from class: com.facebook.GraphRequest.4
                @Override // com.facebook.GraphRequest.c
                public final void a(String str4, String str5) throws IOException {
                    arrayList2.add(String.format(Locale.US, "%s=%s", str4, URLEncoder.encode(str5, "UTF-8")));
                }
            });
            jSONObject.put("body", TextUtils.join("&", arrayList2));
        }
        jSONArray.put(jSONObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(org.json.JSONObject r5, java.lang.String r6, com.facebook.GraphRequest.c r7) throws java.io.IOException {
        /*
            java.util.regex.Pattern r0 = com.facebook.GraphRequest.k
            r1 = r6
            java.util.regex.Matcher r0 = r0.matcher(r1)
            r8 = r0
            r0 = r8
            boolean r0 = r0.matches()
            if (r0 == 0) goto L_0x0018
            r0 = r8
            r1 = 1
            java.lang.String r0 = r0.group(r1)
            r8 = r0
            goto L_0x001a
        L_0x0018:
            r0 = r6
            r8 = r0
        L_0x001a:
            r0 = r8
            java.lang.String r1 = "me/"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x0037
            r0 = r8
            java.lang.String r1 = "/me/"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x0031
            goto L_0x0037
        L_0x0031:
            r0 = 0
            r9 = r0
            goto L_0x003a
        L_0x0037:
            r0 = 1
            r9 = r0
        L_0x003a:
            r0 = r9
            if (r0 == 0) goto L_0x006a
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
            if (r0 <= r1) goto L_0x006a
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L_0x0064
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L_0x006a
        L_0x0064:
            r0 = 1
            r9 = r0
            goto L_0x006d
        L_0x006a:
            r0 = 0
            r9 = r0
        L_0x006d:
            r0 = r5
            java.util.Iterator r0 = r0.keys()
            r11 = r0
        L_0x0073:
            r0 = r11
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00b1
            r0 = r11
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r8 = r0
            r0 = r5
            r1 = r8
            java.lang.Object r0 = r0.opt(r1)
            r6 = r0
            r0 = r9
            if (r0 == 0) goto L_0x00a3
            r0 = r8
            java.lang.String r1 = "image"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x00a3
            r0 = 1
            r12 = r0
            goto L_0x00a6
        L_0x00a3:
            r0 = 0
            r12 = r0
        L_0x00a6:
            r0 = r8
            r1 = r6
            r2 = r7
            r3 = r12
            a(r0, r1, r2, r3)
            goto L_0x0073
        L_0x00b1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.a(org.json.JSONObject, java.lang.String, com.facebook.GraphRequest$c):void");
    }

    public static h b(i iVar) {
        af.a((Collection) iVar, "requests");
        h hVar = new h(iVar);
        hVar.executeOnExecutor(g.f(), new Void[0]);
        return hVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0005 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.net.HttpURLConnection c(com.facebook.i r8) {
        /*
            Method dump skipped, instructions count: 953
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.c(com.facebook.i):java.net.HttpURLConnection");
    }

    private static boolean c(Object obj) {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelableResourceWithMimeType);
    }

    private static boolean d(i iVar) {
        for (i.a aVar : iVar.e) {
            if (aVar instanceof i.b) {
                return true;
            }
        }
        Iterator<GraphRequest> it2 = iVar.iterator();
        while (it2.hasNext()) {
            if (it2.next().e instanceof d) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(Object obj) {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String e(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if ((obj instanceof Boolean) || (obj instanceof Number)) {
            return obj.toString();
        }
        if (obj instanceof Date) {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(obj);
        }
        throw new IllegalArgumentException("Unsupported parameter type.");
    }

    private void e() {
        if (this.f19371b != null) {
            if (!this.f19373d.containsKey(AccessToken.ACCESS_TOKEN_KEY)) {
                String token = this.f19371b.getToken();
                x.b(token);
                this.f19373d.putString(AccessToken.ACCESS_TOKEN_KEY, token);
            }
        } else if (!this.h && !this.f19373d.containsKey(AccessToken.ACCESS_TOKEN_KEY)) {
            String m = g.m();
            String o = g.o();
            if (ae.a(m) || ae.a(o)) {
                ae.a();
            } else {
                this.f19373d.putString(AccessToken.ACCESS_TOKEN_KEY, m + "|" + o);
            }
        }
        this.f19373d.putString("sdk", Constants.ANDROID_PLATFORM);
        this.f19373d.putString("format", "json");
        if (g.b(m.GRAPH_API_DEBUG_INFO)) {
            this.f19373d.putString("debug", "info");
        } else if (g.b(m.GRAPH_API_DEBUG_WARNING)) {
            this.f19373d.putString("debug", "warning");
        }
    }

    private static boolean e(i iVar) {
        Iterator<GraphRequest> it2 = iVar.iterator();
        while (it2.hasNext()) {
            GraphRequest next = it2.next();
            for (String str : next.f19373d.keySet()) {
                if (c(next.f19373d.get(str))) {
                    return false;
                }
            }
        }
        return true;
    }

    private String f() {
        if (this.q == null) {
            String format = String.format("%s/%s", ac.f(), g());
            e();
            Uri parse = Uri.parse(a(format, Boolean.TRUE));
            return String.format("%s?%s", parse.getPath(), parse.getQuery());
        }
        throw new FacebookException("Can't override URL for a batch request");
    }

    private static String f(i iVar) {
        String applicationId;
        if (!ae.a(iVar.f)) {
            return iVar.f;
        }
        Iterator<GraphRequest> it2 = iVar.iterator();
        while (it2.hasNext()) {
            AccessToken accessToken = it2.next().f19371b;
            if (accessToken != null && (applicationId = accessToken.getApplicationId()) != null) {
                return applicationId;
            }
        }
        return !ae.a(j) ? j : g.m();
    }

    private String g() {
        return k.matcher(this.m).matches() ? this.m : String.format("%s/%s", this.g, this.m);
    }

    public final void a() {
        this.h = true;
    }

    public final void a(Bundle bundle) {
        this.f19373d = bundle;
    }

    public final void a(final b bVar) {
        if (g.b(m.GRAPH_API_DEBUG_INFO) || g.b(m.GRAPH_API_DEBUG_WARNING)) {
            this.e = new b() { // from class: com.facebook.GraphRequest.2
                @Override // com.facebook.GraphRequest.b
                public final void a(j jVar) {
                    JSONObject jSONObject = jVar.f20036a;
                    JSONObject optJSONObject = jSONObject != null ? jSONObject.optJSONObject("__debug__") : null;
                    JSONArray optJSONArray = optJSONObject != null ? optJSONObject.optJSONArray("messages") : null;
                    if (optJSONArray != null) {
                        for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                            JSONObject optJSONObject2 = optJSONArray.optJSONObject(i2);
                            String optString = optJSONObject2 != null ? optJSONObject2.optString("message") : null;
                            String optString2 = optJSONObject2 != null ? optJSONObject2.optString("type") : null;
                            String optString3 = optJSONObject2 != null ? optJSONObject2.optString("link") : null;
                            if (!(optString == null || optString2 == null)) {
                                m mVar = m.GRAPH_API_DEBUG_INFO;
                                if (optString2.equals("warning")) {
                                    mVar = m.GRAPH_API_DEBUG_WARNING;
                                }
                                String str = optString;
                                if (!ae.a(optString3)) {
                                    str = optString + " Link: " + optString3;
                                }
                                x.a(mVar, GraphRequest.f19370a, str);
                            }
                        }
                    }
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.a(jVar);
                    }
                }
            };
        } else {
            this.e = bVar;
        }
    }

    public final j b() {
        return a(this);
    }

    public final h c() {
        GraphRequest[] graphRequestArr = {this};
        af.a(graphRequestArr, "requests");
        return b(new i(Arrays.asList(graphRequestArr)));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{Request:  accessToken: ");
        AccessToken accessToken = this.f19371b;
        Object obj = accessToken;
        if (accessToken == null) {
            obj = JsonReaderKt.NULL;
        }
        sb.append(obj);
        sb.append(", graphPath: ");
        sb.append(this.m);
        sb.append(", graphObject: ");
        sb.append(this.f19372c);
        sb.append(", httpMethod: ");
        sb.append(this.l);
        sb.append(", parameters: ");
        sb.append(this.f19373d);
        sb.append("}");
        return sb.toString();
    }
}
