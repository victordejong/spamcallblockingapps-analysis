package com.google.android.exoplayer2.p325c.p326a;

import android.net.Uri;
import com.google.android.exoplayer2.C11257p;
import com.google.android.exoplayer2.upstream.AbstractC11562d;
import com.google.android.exoplayer2.upstream.C11570j;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.common.base.AbstractC15392n;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* renamed from: com.google.android.exoplayer2.c.a.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/c/a/a.class */
public final class C10922a extends AbstractC11562d implements HttpDataSource {

    /* renamed from: b */
    private static final byte[] f35315b = new byte[4096];

    /* renamed from: c */
    private final Call.Factory f35316c;

    /* renamed from: d */
    private final HttpDataSource.C11524c f35317d;

    /* renamed from: e */
    private final String f35318e;

    /* renamed from: f */
    private final CacheControl f35319f;

    /* renamed from: g */
    private final HttpDataSource.C11524c f35320g;

    /* renamed from: h */
    private AbstractC15392n<String> f35321h;

    /* renamed from: i */
    private C11570j f35322i;

    /* renamed from: j */
    private Response f35323j;

    /* renamed from: k */
    private InputStream f35324k;

    /* renamed from: l */
    private boolean f35325l;

    /* renamed from: m */
    private long f35326m;

    /* renamed from: n */
    private long f35327n;

    /* renamed from: o */
    private long f35328o;

    /* renamed from: p */
    private long f35329p;

    static {
        C11257p.m21031a("goog.exo.okhttp");
    }

    @Deprecated
    public C10922a(Call.Factory factory) {
        this(factory, null);
    }

    @Deprecated
    public C10922a(Call.Factory factory, String str) {
        this(factory, str, null, null);
    }

    @Deprecated
    public C10922a(Call.Factory factory, String str, CacheControl cacheControl, HttpDataSource.C11524c c11524c) {
        this(factory, str, cacheControl, c11524c, null);
    }

    private C10922a(Call.Factory factory, String str, CacheControl cacheControl, HttpDataSource.C11524c c11524c, AbstractC15392n<String> abstractC15392n) {
        super(true);
        this.f35316c = (Call.Factory) C11593a.m20020b(factory);
        this.f35318e = str;
        this.f35319f = cacheControl;
        this.f35320g = c11524c;
        this.f35321h = abstractC15392n;
        this.f35317d = new HttpDataSource.C11524c();
    }

    /* renamed from: f */
    private void m21941f() {
        Response response = this.f35323j;
        if (response != null) {
            ((ResponseBody) C11593a.m20020b(response.body())).close();
            this.f35323j = null;
        }
        this.f35324k = null;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        byte[] bArr2;
        try {
            if (this.f35328o != this.f35326m) {
                while (true) {
                    long j = this.f35328o;
                    long j2 = this.f35326m;
                    if (j == j2) {
                        break;
                    }
                    int read = ((InputStream) C11599af.m19974a(this.f35324k)).read(f35315b, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f35328o += read;
                    m20084a(read);
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.f35327n;
            int i3 = i2;
            if (j3 != -1) {
                long j4 = j3 - this.f35329p;
                if (j4 == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j4);
            }
            int read2 = ((InputStream) C11599af.m19974a(this.f35324k)).read(bArr, i, i3);
            if (read2 == -1) {
                if (this.f35327n != -1) {
                    throw new EOFException();
                }
                return -1;
            }
            this.f35329p += read2;
            m20084a(read2);
            return read2;
        } catch (IOException e) {
            throw new HttpDataSource.HttpDataSourceException(e, (C11570j) C11593a.m20020b(this.f35322i), 2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws HttpDataSource.HttpDataSourceException {
        byte[] bArr;
        char c;
        this.f35322i = c11570j;
        this.f35329p = 0L;
        this.f35328o = 0L;
        m20082d();
        long j = c11570j.f38518g;
        long j2 = c11570j.f38519h;
        HttpUrl parse = HttpUrl.parse(c11570j.f38512a.toString());
        if (parse != null) {
            Request.Builder url = new Request.Builder().url(parse);
            CacheControl cacheControl = this.f35319f;
            if (cacheControl != null) {
                url.cacheControl(cacheControl);
            }
            HashMap hashMap = new HashMap();
            HttpDataSource.C11524c c11524c = this.f35320g;
            if (c11524c != null) {
                hashMap.putAll(c11524c.m20209a());
            }
            hashMap.putAll(this.f35317d.m20209a());
            hashMap.putAll(c11570j.f38516e);
            for (Map.Entry entry : hashMap.entrySet()) {
                url.header((String) entry.getKey(), (String) entry.getValue());
            }
            if (j != 0 || j2 != -1) {
                String str = "bytes=" + j + VerificationLanguage.REGION_PREFIX;
                String str2 = str;
                if (j2 != -1) {
                    str2 = str + ((j + j2) - 1);
                }
                url.addHeader("Range", str2);
            }
            String str3 = this.f35318e;
            if (str3 != null) {
                url.addHeader("User-Agent", str3);
            }
            if (!c11570j.m20074b(1)) {
                url.addHeader("Accept-Encoding", "identity");
            }
            RequestBody requestBody = null;
            if (c11570j.f38515d != null) {
                requestBody = RequestBody.create((MediaType) null, c11570j.f38515d);
            } else if (c11570j.f38514c == 2) {
                requestBody = RequestBody.create((MediaType) null, C11599af.f38653f);
            }
            url.method(C11570j.m20075a(c11570j.f38514c), requestBody);
            try {
                Response execute = this.f35316c.newCall(url.build()).execute();
                this.f35323j = execute;
                ResponseBody responseBody = (ResponseBody) C11593a.m20020b(execute.body());
                this.f35324k = responseBody.byteStream();
                int code = execute.code();
                if (!execute.isSuccessful()) {
                    try {
                        bArr = C11599af.m19976a((InputStream) C11593a.m20020b(this.f35324k));
                    } catch (IOException e) {
                        bArr = C11599af.f38653f;
                    }
                    Map<String, List<String>> multimap = execute.headers().toMultimap();
                    m21941f();
                    HttpDataSource.InvalidResponseCodeException invalidResponseCodeException = new HttpDataSource.InvalidResponseCodeException(code, execute.message(), multimap, c11570j, bArr);
                    if (code == 416) {
                        invalidResponseCodeException.initCause(new DataSourceException(0));
                    }
                    throw invalidResponseCodeException;
                }
                MediaType contentType = responseBody.contentType();
                String mediaType = contentType != null ? contentType.toString() : "";
                AbstractC15392n<String> abstractC15392n = this.f35321h;
                if (abstractC15392n != null && !abstractC15392n.apply(mediaType)) {
                    m21941f();
                    throw new HttpDataSource.InvalidContentTypeException(mediaType, c11570j);
                }
                char c2 = 0;
                if (code == 200) {
                    c2 = 0;
                    if (c11570j.f38518g != 0) {
                        c2 = c11570j.f38518g;
                    }
                }
                this.f35326m = c2;
                if (c11570j.f38519h != -1) {
                    c = c11570j.f38519h;
                } else {
                    long contentLength = responseBody.contentLength();
                    c = 65535;
                    if (contentLength != -1) {
                        c = contentLength - this.f35326m;
                    }
                }
                this.f35327n = c;
                this.f35325l = true;
                m20083b(c11570j);
                return this.f35327n;
            } catch (IOException e2) {
                String message = e2.getMessage();
                if (message != null && C11599af.m19927d(message).matches("cleartext communication.*not permitted.*")) {
                    throw new HttpDataSource.CleartextNotPermittedException(e2, c11570j);
                }
                throw new HttpDataSource.HttpDataSourceException("Unable to connect", e2, c11570j, 1);
            }
        }
        throw new HttpDataSource.HttpDataSourceException("Malformed URL", c11570j, 1);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        Response response = this.f35323j;
        if (response == null) {
            return null;
        }
        return Uri.parse(response.request().url().toString());
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11562d, com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: b */
    public final Map<String, List<String>> mo20032b() {
        Response response = this.f35323j;
        return response == null ? Collections.emptyMap() : response.headers().toMultimap();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() throws HttpDataSource.HttpDataSourceException {
        if (this.f35325l) {
            this.f35325l = false;
            m20081e();
            m21941f();
        }
    }
}
