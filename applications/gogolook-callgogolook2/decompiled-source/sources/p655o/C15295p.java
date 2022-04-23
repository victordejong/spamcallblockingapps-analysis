package p655o;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.io.IOException;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import p645m.AbstractC15173d;
import p645m.C15170c;
/* renamed from: o.p */
/* loaded from: classes3-dex2jar.jar:o/p.class */
public final class C15295p {

    /* renamed from: l */
    public static final char[] f33349l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: m */
    public static final Pattern f33350m = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    /* renamed from: a */
    public final String f33351a;

    /* renamed from: b */
    public final HttpUrl f33352b;
    @Nullable

    /* renamed from: c */
    public String f33353c;
    @Nullable

    /* renamed from: d */
    public HttpUrl.Builder f33354d;

    /* renamed from: e */
    public final Request.Builder f33355e = new Request.Builder();

    /* renamed from: f */
    public final Headers.Builder f33356f;
    @Nullable

    /* renamed from: g */
    public MediaType f33357g;

    /* renamed from: h */
    public final boolean f33358h;
    @Nullable

    /* renamed from: i */
    public MultipartBody.Builder f33359i;
    @Nullable

    /* renamed from: j */
    public FormBody.Builder f33360j;
    @Nullable

    /* renamed from: k */
    public RequestBody f33361k;

    /* renamed from: o.p$a */
    /* loaded from: classes3-dex2jar.jar:o/p$a.class */
    public static class C15296a extends RequestBody {

        /* renamed from: a */
        public final RequestBody f33362a;

        /* renamed from: b */
        public final MediaType f33363b;

        public C15296a(RequestBody requestBody, MediaType mediaType) {
            this.f33362a = requestBody;
            this.f33363b = mediaType;
        }

        @Override // okhttp3.RequestBody
        public long contentLength() throws IOException {
            return this.f33362a.contentLength();
        }

        @Override // okhttp3.RequestBody
        public MediaType contentType() {
            return this.f33363b;
        }

        @Override // okhttp3.RequestBody
        public void writeTo(AbstractC15173d dVar) throws IOException {
            this.f33362a.writeTo(dVar);
        }
    }

    public C15295p(String str, HttpUrl httpUrl, @Nullable String str2, @Nullable Headers headers, @Nullable MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.f33351a = str;
        this.f33352b = httpUrl;
        this.f33353c = str2;
        this.f33357g = mediaType;
        this.f33358h = z;
        if (headers != null) {
            this.f33356f = headers.newBuilder();
        } else {
            this.f33356f = new Headers.Builder();
        }
        if (z2) {
            this.f33360j = new FormBody.Builder();
        } else if (z3) {
            this.f33359i = new MultipartBody.Builder();
            this.f33359i.setType(MultipartBody.FORM);
        }
    }

    /* renamed from: a */
    public static String m114a(String str, boolean z) {
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
        C15170c cVar = new C15170c();
        cVar.m362a(str, 0, i);
        m113a(cVar, str, i, length, z);
        str2 = cVar.mo289y();
        return str2;
    }

    /* renamed from: a */
    public static void m113a(C15170c cVar, String str, int i, int i2, boolean z) {
        C15170c cVar2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (z) {
                cVar2 = cVar2;
                if (codePointAt != 9) {
                    cVar2 = cVar2;
                    if (codePointAt != 10) {
                        cVar2 = cVar2;
                        if (codePointAt != 12) {
                            if (codePointAt == 13) {
                                cVar2 = cVar2;
                            }
                        }
                    }
                }
                i += Character.charCount(codePointAt);
            }
            if (codePointAt < 32 || codePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                C15170c cVar3 = cVar2;
                if (cVar2 == null) {
                    cVar3 = new C15170c();
                }
                cVar3.m356c(codePointAt);
                while (true) {
                    cVar2 = cVar3;
                    if (!cVar3.mo292v()) {
                        int readByte = cVar3.readByte() & 255;
                        cVar.writeByte(37);
                        cVar.writeByte((int) f33349l[(readByte >> 4) & 15]);
                        cVar.writeByte((int) f33349l[readByte & 15]);
                    }
                }
            } else {
                cVar.m356c(codePointAt);
                cVar2 = cVar2;
            }
            i += Character.charCount(codePointAt);
        }
    }

    /* renamed from: a */
    public Request.Builder m118a() {
        HttpUrl httpUrl;
        HttpUrl.Builder builder = this.f33354d;
        if (builder != null) {
            httpUrl = builder.build();
        } else {
            httpUrl = this.f33352b.resolve(this.f33353c);
            if (httpUrl == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f33352b + ", Relative: " + this.f33353c);
            }
        }
        RequestBody requestBody = this.f33361k;
        RequestBody requestBody2 = requestBody;
        if (requestBody == null) {
            FormBody.Builder builder2 = this.f33360j;
            if (builder2 != null) {
                requestBody2 = builder2.build();
            } else {
                MultipartBody.Builder builder3 = this.f33359i;
                if (builder3 != null) {
                    requestBody2 = builder3.build();
                } else {
                    requestBody2 = requestBody;
                    if (this.f33358h) {
                        requestBody2 = RequestBody.create((MediaType) null, new byte[0]);
                    }
                }
            }
        }
        MediaType mediaType = this.f33357g;
        RequestBody requestBody3 = requestBody2;
        if (mediaType != null) {
            if (requestBody2 != null) {
                requestBody3 = new C15296a(requestBody2, mediaType);
            } else {
                this.f33356f.add("Content-Type", mediaType.toString());
                requestBody3 = requestBody2;
            }
        }
        Request.Builder builder4 = this.f33355e;
        builder4.url(httpUrl);
        builder4.headers(this.f33356f.build());
        builder4.method(this.f33351a, requestBody3);
        return builder4;
    }

    /* renamed from: a */
    public void m117a(Object obj) {
        this.f33353c = obj.toString();
    }

    /* renamed from: a */
    public void m116a(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                this.f33357g = MediaType.get(str2);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Malformed content type: " + str2, e);
            }
        } else {
            this.f33356f.add(str, str2);
        }
    }

    /* renamed from: a */
    public void m115a(String str, String str2, boolean z) {
        if (z) {
            this.f33360j.addEncoded(str, str2);
        } else {
            this.f33360j.add(str, str2);
        }
    }

    /* renamed from: a */
    public void m112a(Headers headers, RequestBody requestBody) {
        this.f33359i.addPart(headers, requestBody);
    }

    /* renamed from: a */
    public void m111a(MultipartBody.Part part) {
        this.f33359i.addPart(part);
    }

    /* renamed from: a */
    public void m110a(RequestBody requestBody) {
        this.f33361k = requestBody;
    }

    /* renamed from: b */
    public void m109b(String str, String str2, boolean z) {
        if (this.f33353c != null) {
            String a = m114a(str2, z);
            String str3 = this.f33353c;
            String replace = str3.replace(CssParser.BLOCK_START + str + CssParser.BLOCK_END, a);
            if (!f33350m.matcher(replace).matches()) {
                this.f33353c = replace;
                return;
            }
            throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): " + str2);
        }
        throw new AssertionError();
    }

    /* renamed from: c */
    public void m108c(String str, @Nullable String str2, boolean z) {
        String str3 = this.f33353c;
        if (str3 != null) {
            this.f33354d = this.f33352b.newBuilder(str3);
            if (this.f33354d != null) {
                this.f33353c = null;
            } else {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f33352b + ", Relative: " + this.f33353c);
            }
        }
        if (z) {
            this.f33354d.addEncodedQueryParameter(str, str2);
        } else {
            this.f33354d.addQueryParameter(str, str2);
        }
    }
}
