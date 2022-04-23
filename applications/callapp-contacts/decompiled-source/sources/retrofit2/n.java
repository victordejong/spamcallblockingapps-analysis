package retrofit2;

import c.f;
import c.g;
import java.io.IOException;
import java.util.regex.Pattern;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:retrofit2/n.class */
public final class n {

    /* renamed from: b  reason: collision with root package name */
    String f39532b;

    /* renamed from: c  reason: collision with root package name */
    final Request.Builder f39533c = new Request.Builder();

    /* renamed from: d  reason: collision with root package name */
    final Headers.Builder f39534d;
    MultipartBody.Builder e;
    RequestBody f;
    private final String h;
    private final HttpUrl i;
    private HttpUrl.Builder j;
    private MediaType k;
    private final boolean l;
    private FormBody.Builder m;
    private static final char[] g = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a  reason: collision with root package name */
    static final Pattern f39531a = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/n$a.class */
    public static final class a extends RequestBody {

        /* renamed from: a  reason: collision with root package name */
        private final RequestBody f39535a;

        /* renamed from: b  reason: collision with root package name */
        private final MediaType f39536b;

        a(RequestBody requestBody, MediaType mediaType) {
            this.f39535a = requestBody;
            this.f39536b = mediaType;
        }

        @Override // okhttp3.RequestBody
        public final long contentLength() throws IOException {
            return this.f39535a.contentLength();
        }

        @Override // okhttp3.RequestBody
        public final MediaType contentType() {
            return this.f39536b;
        }

        @Override // okhttp3.RequestBody
        public final void writeTo(g gVar) throws IOException {
            this.f39535a.writeTo(gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(String str, HttpUrl httpUrl, String str2, Headers headers, MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.h = str;
        this.i = httpUrl;
        this.f39532b = str2;
        this.k = mediaType;
        this.l = z;
        if (headers != null) {
            this.f39534d = headers.newBuilder();
        } else {
            this.f39534d = new Headers.Builder();
        }
        if (z2) {
            this.m = new FormBody.Builder();
        } else if (z3) {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            this.e = builder;
            builder.setType(MultipartBody.FORM);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, boolean z) {
        String str2;
        int length = str.length();
        int i = 0;
        while (true) {
            str2 = str;
            if (i >= length) {
                break;
            }
            int codePointAt = str.codePointAt(i);
            if (codePointAt < 32 || codePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                break;
            }
            i += Character.charCount(codePointAt);
        }
        f fVar = new f();
        fVar.a(str, 0, i);
        f fVar2 = null;
        while (i < length) {
            int codePointAt2 = str.codePointAt(i);
            if (z) {
                fVar2 = fVar2;
                if (codePointAt2 != 9) {
                    fVar2 = fVar2;
                    if (codePointAt2 != 10) {
                        fVar2 = fVar2;
                        if (codePointAt2 != 12) {
                            fVar2 = fVar2;
                            if (codePointAt2 == 13) {
                            }
                        }
                    }
                }
                i += Character.charCount(codePointAt2);
            }
            if (codePointAt2 < 32 || codePointAt2 >= 127 || " \"<>^`{}|\\?#".indexOf(codePointAt2) != -1 || (!z && (codePointAt2 == 47 || codePointAt2 == 37))) {
                f fVar3 = fVar2;
                if (fVar2 == null) {
                    fVar3 = new f();
                }
                fVar3.a(codePointAt2);
                while (true) {
                    fVar2 = fVar3;
                    if (!fVar3.e()) {
                        int i2 = fVar3.i() & 255;
                        fVar.c(37);
                        char[] cArr = g;
                        fVar.c((int) cArr[(i2 >> 4) & 15]);
                        fVar.c((int) cArr[i2 & 15]);
                    }
                }
            } else {
                fVar.a(codePointAt2);
                fVar2 = fVar2;
            }
            i += Character.charCount(codePointAt2);
        }
        str2 = fVar.r();
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Request.Builder a() {
        HttpUrl httpUrl;
        HttpUrl.Builder builder = this.j;
        if (builder != null) {
            httpUrl = builder.build();
        } else {
            httpUrl = this.i.resolve(this.f39532b);
            if (httpUrl == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.i + ", Relative: " + this.f39532b);
            }
        }
        RequestBody requestBody = this.f;
        RequestBody requestBody2 = requestBody;
        if (requestBody == null) {
            FormBody.Builder builder2 = this.m;
            if (builder2 != null) {
                requestBody2 = builder2.build();
            } else {
                MultipartBody.Builder builder3 = this.e;
                if (builder3 != null) {
                    requestBody2 = builder3.build();
                } else {
                    requestBody2 = requestBody;
                    if (this.l) {
                        requestBody2 = RequestBody.create((MediaType) null, new byte[0]);
                    }
                }
            }
        }
        MediaType mediaType = this.k;
        RequestBody requestBody3 = requestBody2;
        if (mediaType != null) {
            if (requestBody2 != null) {
                requestBody3 = new a(requestBody2, mediaType);
            } else {
                this.f39534d.add("Content-Type", mediaType.toString());
                requestBody3 = requestBody2;
            }
        }
        return this.f39533c.url(httpUrl).headers(this.f39534d.build()).method(this.h, requestBody3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                this.k = MediaType.get(str2);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Malformed content type: ".concat(String.valueOf(str2)), e);
            }
        } else {
            this.f39534d.add(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, String str2, boolean z) {
        String str3 = this.f39532b;
        if (str3 != null) {
            HttpUrl.Builder newBuilder = this.i.newBuilder(str3);
            this.j = newBuilder;
            if (newBuilder != null) {
                this.f39532b = null;
            } else {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.i + ", Relative: " + this.f39532b);
            }
        }
        if (z) {
            this.j.addEncodedQueryParameter(str, str2);
        } else {
            this.j.addQueryParameter(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Headers headers, RequestBody requestBody) {
        this.e.addPart(headers, requestBody);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str, String str2, boolean z) {
        if (z) {
            this.m.addEncoded(str, str2);
        } else {
            this.m.add(str, str2);
        }
    }
}
