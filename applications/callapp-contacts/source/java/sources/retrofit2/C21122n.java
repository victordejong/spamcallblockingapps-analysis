package retrofit2;

import java.io.IOException;
import java.util.regex.Pattern;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import p092c.AbstractC3206g;
import p092c.C3202f;
/* renamed from: retrofit2.n */
/* loaded from: classes5-dex2jar.jar:retrofit2/n.class */
public final class C21122n {

    /* renamed from: b */
    String f67778b;

    /* renamed from: c */
    final Request.Builder f67779c = new Request.Builder();

    /* renamed from: d */
    final Headers.Builder f67780d;

    /* renamed from: e */
    MultipartBody.Builder f67781e;

    /* renamed from: f */
    RequestBody f67782f;

    /* renamed from: h */
    private final String f67783h;

    /* renamed from: i */
    private final HttpUrl f67784i;

    /* renamed from: j */
    private HttpUrl.Builder f67785j;

    /* renamed from: k */
    private MediaType f67786k;

    /* renamed from: l */
    private final boolean f67787l;

    /* renamed from: m */
    private FormBody.Builder f67788m;

    /* renamed from: g */
    private static final char[] f67777g = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    static final Pattern f67776a = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    /* renamed from: retrofit2.n$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/n$a.class */
    public static final class C21123a extends RequestBody {

        /* renamed from: a */
        private final RequestBody f67789a;

        /* renamed from: b */
        private final MediaType f67790b;

        C21123a(RequestBody requestBody, MediaType mediaType) {
            this.f67789a = requestBody;
            this.f67790b = mediaType;
        }

        @Override // okhttp3.RequestBody
        public final long contentLength() throws IOException {
            return this.f67789a.contentLength();
        }

        @Override // okhttp3.RequestBody
        public final MediaType contentType() {
            return this.f67790b;
        }

        @Override // okhttp3.RequestBody
        public final void writeTo(AbstractC3206g abstractC3206g) throws IOException {
            this.f67789a.writeTo(abstractC3206g);
        }
    }

    public C21122n(String str, HttpUrl httpUrl, String str2, Headers headers, MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.f67783h = str;
        this.f67784i = httpUrl;
        this.f67778b = str2;
        this.f67786k = mediaType;
        this.f67787l = z;
        if (headers != null) {
            this.f67780d = headers.newBuilder();
        } else {
            this.f67780d = new Headers.Builder();
        }
        if (z2) {
            this.f67788m = new FormBody.Builder();
        } else if (!z3) {
        } else {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            this.f67781e = builder;
            builder.setType(MultipartBody.FORM);
        }
    }

    /* renamed from: a */
    public static String m29a(String str, boolean z) {
        int i;
        String str2;
        C3202f c3202f;
        int length = str.length();
        int i2 = 0;
        while (true) {
            i = i2;
            str2 = str;
            if (i >= length) {
                break;
            }
            int codePointAt = str.codePointAt(i);
            if (codePointAt < 32 || codePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                break;
            }
            i2 = i + Character.charCount(codePointAt);
        }
        C3202f c3202f2 = new C3202f();
        c3202f2.m39213a(str, 0, i);
        C3202f c3202f3 = null;
        while (true) {
            C3202f c3202f4 = c3202f3;
            if (i >= length) {
                break;
            }
            int codePointAt2 = str.codePointAt(i);
            if (z) {
                c3202f = c3202f4;
                if (codePointAt2 != 9) {
                    c3202f = c3202f4;
                    if (codePointAt2 != 10) {
                        c3202f = c3202f4;
                        if (codePointAt2 != 12) {
                            c3202f = c3202f4;
                            if (codePointAt2 == 13) {
                            }
                        }
                    }
                }
                i += Character.charCount(codePointAt2);
                c3202f3 = c3202f;
            }
            if (codePointAt2 < 32 || codePointAt2 >= 127 || " \"<>^`{}|\\?#".indexOf(codePointAt2) != -1 || (!z && (codePointAt2 == 47 || codePointAt2 == 37))) {
                C3202f c3202f5 = c3202f4;
                if (c3202f4 == null) {
                    c3202f5 = new C3202f();
                }
                c3202f5.m39221a(codePointAt2);
                while (true) {
                    c3202f = c3202f5;
                    if (!c3202f5.mo39119e()) {
                        int mo39113i = c3202f5.mo39113i() & 255;
                        c3202f2.mo39141c(37);
                        char[] cArr = f67777g;
                        c3202f2.mo39141c((int) cArr[(mo39113i >> 4) & 15]);
                        c3202f2.mo39141c((int) cArr[mo39113i & 15]);
                    }
                }
            } else {
                c3202f2.m39221a(codePointAt2);
                c3202f = c3202f4;
            }
            i += Character.charCount(codePointAt2);
            c3202f3 = c3202f;
        }
        str2 = c3202f2.m39193r();
        return str2;
    }

    /* renamed from: a */
    public final Request.Builder m32a() {
        HttpUrl httpUrl;
        HttpUrl.Builder builder = this.f67785j;
        if (builder != null) {
            httpUrl = builder.build();
        } else {
            httpUrl = this.f67784i.resolve(this.f67778b);
            if (httpUrl == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f67784i + ", Relative: " + this.f67778b);
            }
        }
        RequestBody requestBody = this.f67782f;
        MultipartBody multipartBody = requestBody;
        if (requestBody == null) {
            FormBody.Builder builder2 = this.f67788m;
            if (builder2 != null) {
                multipartBody = builder2.build();
            } else {
                MultipartBody.Builder builder3 = this.f67781e;
                if (builder3 != null) {
                    multipartBody = builder3.build();
                } else {
                    multipartBody = requestBody;
                    if (this.f67787l) {
                        multipartBody = RequestBody.create((MediaType) null, new byte[0]);
                    }
                }
            }
        }
        MediaType mediaType = this.f67786k;
        C21123a c21123a = multipartBody;
        if (mediaType != null) {
            if (multipartBody != null) {
                c21123a = new C21123a(multipartBody, mediaType);
            } else {
                this.f67780d.add("Content-Type", mediaType.toString());
                c21123a = multipartBody;
            }
        }
        return this.f67779c.url(httpUrl).headers(this.f67780d.build()).method(this.f67783h, c21123a);
    }

    /* renamed from: a */
    public final void m31a(String str, String str2) {
        if (!"Content-Type".equalsIgnoreCase(str)) {
            this.f67780d.add(str, str2);
            return;
        }
        try {
            this.f67786k = MediaType.get(str2);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Malformed content type: ".concat(String.valueOf(str2)), e);
        }
    }

    /* renamed from: a */
    public final void m30a(String str, String str2, boolean z) {
        String str3 = this.f67778b;
        if (str3 != null) {
            HttpUrl.Builder newBuilder = this.f67784i.newBuilder(str3);
            this.f67785j = newBuilder;
            if (newBuilder == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f67784i + ", Relative: " + this.f67778b);
            }
            this.f67778b = null;
        }
        if (z) {
            this.f67785j.addEncodedQueryParameter(str, str2);
        } else {
            this.f67785j.addQueryParameter(str, str2);
        }
    }

    /* renamed from: a */
    public final void m28a(Headers headers, RequestBody requestBody) {
        this.f67781e.addPart(headers, requestBody);
    }

    /* renamed from: b */
    public final void m27b(String str, String str2, boolean z) {
        if (z) {
            this.f67788m.addEncoded(str, str2);
        } else {
            this.f67788m.add(str, str2);
        }
    }
}
