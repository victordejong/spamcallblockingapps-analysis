package p081h.p203i.p325c.p337n.p338d.p345k;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.CacheControl;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
/* renamed from: h.i.c.n.d.k.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/k/b.class */
public class C9766b {

    /* renamed from: f */
    public static final OkHttpClient f22167f;

    /* renamed from: a */
    public final EnumC9765a f22168a;

    /* renamed from: b */
    public final String f22169b;

    /* renamed from: c */
    public final Map<String, String> f22170c;

    /* renamed from: e */
    public MultipartBody.Builder f22172e = null;

    /* renamed from: d */
    public final Map<String, String> f22171d = new HashMap();

    static {
        OkHttpClient.Builder newBuilder = new OkHttpClient().newBuilder();
        newBuilder.callTimeout(10000L, TimeUnit.MILLISECONDS);
        f22167f = newBuilder.build();
    }

    public C9766b(EnumC9765a aVar, String str, Map<String, String> map) {
        this.f22168a = aVar;
        this.f22169b = str;
        this.f22170c = map;
    }

    /* renamed from: a */
    public C9766b m14349a(String str, String str2) {
        this.f22171d.put(str, str2);
        return this;
    }

    /* renamed from: a */
    public C9766b m14348a(String str, String str2, String str3, File file) {
        RequestBody create = RequestBody.create(MediaType.parse(str3), file);
        MultipartBody.Builder c = m14344c();
        c.addFormDataPart(str, str2, create);
        this.f22172e = c;
        return this;
    }

    /* renamed from: a */
    public C9766b m14347a(Map.Entry<String, String> entry) {
        m14349a(entry.getKey(), entry.getValue());
        return this;
    }

    /* renamed from: a */
    public final Request m14350a() {
        Request.Builder builder = new Request.Builder();
        CacheControl.Builder builder2 = new CacheControl.Builder();
        builder2.noCache();
        builder.cacheControl(builder2.build());
        HttpUrl.Builder newBuilder = HttpUrl.parse(this.f22169b).newBuilder();
        for (Map.Entry<String, String> entry : this.f22170c.entrySet()) {
            newBuilder.addEncodedQueryParameter(entry.getKey(), entry.getValue());
        }
        builder.url(newBuilder.build());
        for (Map.Entry<String, String> entry2 : this.f22171d.entrySet()) {
            builder.header(entry2.getKey(), entry2.getValue());
        }
        MultipartBody.Builder builder3 = this.f22172e;
        builder.method(this.f22168a.name(), builder3 == null ? null : builder3.build());
        return builder.build();
    }

    /* renamed from: b */
    public C9766b m14345b(String str, String str2) {
        MultipartBody.Builder c = m14344c();
        c.addFormDataPart(str, str2);
        this.f22172e = c;
        return this;
    }

    /* renamed from: b */
    public C9768d m14346b() throws IOException {
        return C9768d.m14339a(f22167f.newCall(m14350a()).execute());
    }

    /* renamed from: c */
    public final MultipartBody.Builder m14344c() {
        if (this.f22172e == null) {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            builder.setType(MultipartBody.FORM);
            this.f22172e = builder;
        }
        return this.f22172e;
    }

    /* renamed from: d */
    public String m14343d() {
        return this.f22168a.name();
    }
}
