package okhttp3;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.internal.Util;
import p092c.AbstractC3206g;
import p092c.C3202f;
import p092c.C3208i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018�� #2\u00020\u0001:\u0003\"#$B%\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\r\u0010\n\u001a\u00020\u000bH\u0007¢\u0006\u0002\b\u0015J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0005H\u0016J\u000e\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0012J\u0013\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0007¢\u0006\u0002\b\u0018J\r\u0010\u0011\u001a\u00020\u0012H\u0007¢\u0006\u0002\b\u0019J\r\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\b\u001aJ\u001a\u0010\u001b\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u0011\u0010\n\u001a\u00020\u000b8G¢\u0006\u0006\u001a\u0004\b\n\u0010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0019\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0007¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00128G¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0013R\u0013\u0010\u0004\u001a\u00020\u00058\u0007¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\u0014¨\u0006%"}, m4298d2 = {"Lokhttp3/MultipartBody;", "Lokhttp3/RequestBody;", "boundaryByteString", "Lokio/ByteString;", "type", "Lokhttp3/MediaType;", "parts", "", "Lokhttp3/MultipartBody$Part;", "(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V", "boundary", "", "()Ljava/lang/String;", "contentLength", "", "contentType", "()Ljava/util/List;", "size", "", "()I", "()Lokhttp3/MediaType;", "-deprecated_boundary", "part", "index", "-deprecated_parts", "-deprecated_size", "-deprecated_type", "writeOrCountBytes", "sink", "Lokio/BufferedSink;", "countBytes", "", "writeTo", "", "Builder", "Companion", "Part", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/MultipartBody.class */
public final class MultipartBody extends RequestBody {
    private final C3208i boundaryByteString;
    private long contentLength = -1;
    private final MediaType contentType;
    private final List<Part> parts;
    private final MediaType type;
    public static final Companion Companion = new Companion(null);
    public static final MediaType MIXED = MediaType.Companion.get("multipart/mixed");
    public static final MediaType ALTERNATIVE = MediaType.Companion.get("multipart/alternative");
    public static final MediaType DIGEST = MediaType.Companion.get("multipart/digest");
    public static final MediaType PARALLEL = MediaType.Companion.get("multipart/parallel");
    public static final MediaType FORM = MediaType.Companion.get("multipart/form-data");
    private static final byte[] COLONSPACE = {58, 32};
    private static final byte[] CRLF = {13, 10};
    private static final byte[] DASHDASH = {45, 45};

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0011\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u000b\u001a\u00020��2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003J \u0010\u000b\u001a\u00020��2\u0006\u0010\f\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020��2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020��2\u0006\u0010\u0014\u001a\u00020\bJ\u000e\u0010\u0011\u001a\u00020��2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020��2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0018"}, m4298d2 = {"Lokhttp3/MultipartBody$Builder;", "", "boundary", "", "(Ljava/lang/String;)V", "Lokio/ByteString;", "parts", "", "Lokhttp3/MultipartBody$Part;", "type", "Lokhttp3/MediaType;", "addFormDataPart", "name", "value", "filename", "body", "Lokhttp3/RequestBody;", "addPart", "headers", "Lokhttp3/Headers;", "part", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lokhttp3/MultipartBody;", "setType", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/MultipartBody$Builder.class */
    public static final class Builder {
        private final C3208i boundary;
        private final List<Part> parts;
        private MediaType type;

        public Builder() {
            this(null, 1, null);
        }

        public Builder(String boundary) {
            C18524p.m3840d(boundary, "boundary");
            C3208i.C3209a c3209a = C3208i.f11583d;
            this.boundary = C3208i.C3209a.m39170a(boundary);
            this.type = MultipartBody.MIXED;
            this.parts = new ArrayList();
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ Builder(java.lang.String r4, int r5, kotlin.jvm.internal.DefaultConstructorMarker r6) {
            /*
                r3 = this;
                r0 = r5
                r1 = 1
                r0 = r0 & r1
                if (r0 == 0) goto L13
                java.util.UUID r0 = java.util.UUID.randomUUID()
                java.lang.String r0 = r0.toString()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "UUID.randomUUID().toString()"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            L13:
                r0 = r3
                r1 = r4
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartBody.Builder.<init>(java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        public final Builder addFormDataPart(String name, String value) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(value, "value");
            Builder builder = this;
            builder.addPart(Part.Companion.createFormData(name, value));
            return builder;
        }

        public final Builder addFormDataPart(String name, String str, RequestBody body) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(body, "body");
            Builder builder = this;
            builder.addPart(Part.Companion.createFormData(name, str, body));
            return builder;
        }

        public final Builder addPart(Headers headers, RequestBody body) {
            C18524p.m3840d(body, "body");
            Builder builder = this;
            builder.addPart(Part.Companion.create(headers, body));
            return builder;
        }

        public final Builder addPart(Part part) {
            C18524p.m3840d(part, "part");
            Builder builder = this;
            builder.parts.add(part);
            return builder;
        }

        public final Builder addPart(RequestBody body) {
            C18524p.m3840d(body, "body");
            Builder builder = this;
            builder.addPart(Part.Companion.create(body));
            return builder;
        }

        public final MultipartBody build() {
            if (!this.parts.isEmpty()) {
                return new MultipartBody(this.boundary, this.type, Util.toImmutableList(this.parts));
            }
            throw new IllegalStateException("Multipart body must have at least one part.".toString());
        }

        public final Builder setType(MediaType type) {
            C18524p.m3840d(type, "type");
            Builder builder = this;
            if (C18524p.m3850a((Object) type.type(), (Object) "multipart")) {
                builder.type = type;
                return builder;
            }
            throw new IllegalArgumentException("multipart != ".concat(String.valueOf(type)).toString());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\r\u001a\u00020\u000e*\u00060\u000fj\u0002`\u00102\u0006\u0010\u0011\u001a\u00020\u0012H��¢\u0006\u0002\b\u0013R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lokhttp3/MultipartBody$Companion;", "", "()V", "ALTERNATIVE", "Lokhttp3/MediaType;", "COLONSPACE", "", "CRLF", "DASHDASH", "DIGEST", "FORM", "MIXED", "PARALLEL", "appendQuotedString", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "key", "", "appendQuotedString$okhttp", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/MultipartBody$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void appendQuotedString$okhttp(StringBuilder appendQuotedString, String key) {
            C18524p.m3840d(appendQuotedString, "$this$appendQuotedString");
            C18524p.m3840d(key, "key");
            appendQuotedString.append('\"');
            int length = key.length();
            for (int i = 0; i < length; i++) {
                char charAt = key.charAt(i);
                if (charAt == '\n') {
                    appendQuotedString.append("%0A");
                } else if (charAt == '\r') {
                    appendQuotedString.append("%0D");
                } else if (charAt != '\"') {
                    appendQuotedString.append(charAt);
                } else {
                    appendQuotedString.append("%22");
                }
            }
            appendQuotedString.append('\"');
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u0019\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\r\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\b\tJ\u000f\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0007¢\u0006\u0002\b\nR\u0013\u0010\u0004\u001a\u00020\u00058\u0007¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\u0007R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\b¨\u0006\f"}, m4298d2 = {"Lokhttp3/MultipartBody$Part;", "", "headers", "Lokhttp3/Headers;", "body", "Lokhttp3/RequestBody;", "(Lokhttp3/Headers;Lokhttp3/RequestBody;)V", "()Lokhttp3/RequestBody;", "()Lokhttp3/Headers;", "-deprecated_body", "-deprecated_headers", "Companion", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/MultipartBody$Part.class */
    public static final class Part {
        public static final Companion Companion = new Companion(null);
        private final RequestBody body;
        private final Headers headers;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0007J\"\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\u000e"}, m4298d2 = {"Lokhttp3/MultipartBody$Part$Companion;", "", "()V", "create", "Lokhttp3/MultipartBody$Part;", "headers", "Lokhttp3/Headers;", "body", "Lokhttp3/RequestBody;", "createFormData", "name", "", "value", "filename", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
        /* loaded from: classes5-dex2jar.jar:okhttp3/MultipartBody$Part$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Part create(Headers headers, RequestBody body) {
                C18524p.m3840d(body, "body");
                if ((headers != null ? headers.get("Content-Type") : null) == null) {
                    if (!((headers != null ? headers.get("Content-Length") : null) == null)) {
                        throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
                    }
                    return new Part(headers, body, null);
                }
                throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
            }

            public final Part create(RequestBody body) {
                C18524p.m3840d(body, "body");
                return create(null, body);
            }

            public final Part createFormData(String name, String value) {
                C18524p.m3840d(name, "name");
                C18524p.m3840d(value, "value");
                return createFormData(name, null, RequestBody.Companion.create$default(RequestBody.Companion, value, (MediaType) null, 1, (Object) null));
            }

            public final Part createFormData(String name, String str, RequestBody body) {
                C18524p.m3840d(name, "name");
                C18524p.m3840d(body, "body");
                StringBuilder sb = new StringBuilder();
                sb.append("form-data; name=");
                MultipartBody.Companion.appendQuotedString$okhttp(sb, name);
                if (str != null) {
                    sb.append("; filename=");
                    MultipartBody.Companion.appendQuotedString$okhttp(sb, str);
                }
                String sb2 = sb.toString();
                C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
                return create(new Headers.Builder().addUnsafeNonAscii("Content-Disposition", sb2).build(), body);
            }
        }

        private Part(Headers headers, RequestBody requestBody) {
            this.headers = headers;
            this.body = requestBody;
        }

        public /* synthetic */ Part(Headers headers, RequestBody requestBody, DefaultConstructorMarker defaultConstructorMarker) {
            this(headers, requestBody);
        }

        public static final Part create(Headers headers, RequestBody requestBody) {
            return Companion.create(headers, requestBody);
        }

        public static final Part create(RequestBody requestBody) {
            return Companion.create(requestBody);
        }

        public static final Part createFormData(String str, String str2) {
            return Companion.createFormData(str, str2);
        }

        public static final Part createFormData(String str, String str2, RequestBody requestBody) {
            return Companion.createFormData(str, str2, requestBody);
        }

        /* renamed from: -deprecated_body */
        public final RequestBody m54281deprecated_body() {
            return this.body;
        }

        /* renamed from: -deprecated_headers */
        public final Headers m54282deprecated_headers() {
            return this.headers;
        }

        public final RequestBody body() {
            return this.body;
        }

        public final Headers headers() {
            return this.headers;
        }
    }

    public MultipartBody(C3208i boundaryByteString, MediaType type, List<Part> parts) {
        C18524p.m3840d(boundaryByteString, "boundaryByteString");
        C18524p.m3840d(type, "type");
        C18524p.m3840d(parts, "parts");
        this.boundaryByteString = boundaryByteString;
        this.type = type;
        this.parts = parts;
        MediaType.Companion companion = MediaType.Companion;
        this.contentType = companion.get(type + "; boundary=" + boundary());
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    private final long writeOrCountBytes(AbstractC3206g abstractC3206g, boolean z) throws IOException {
        C3202f c3202f;
        if (z) {
            c3202f = new C3202f();
            abstractC3206g = c3202f;
        } else {
            c3202f = null;
        }
        int size = this.parts.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            Part part = this.parts.get(i);
            Headers headers = part.headers();
            RequestBody body = part.body();
            C18524p.m3851a(abstractC3206g);
            abstractC3206g.mo39140c(DASHDASH);
            abstractC3206g.mo39144b(this.boundaryByteString);
            abstractC3206g.mo39140c(CRLF);
            if (headers != null) {
                int size2 = headers.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    abstractC3206g.mo39143b(headers.name(i2)).mo39140c(COLONSPACE).mo39143b(headers.value(i2)).mo39140c(CRLF);
                }
            }
            MediaType contentType = body.contentType();
            if (contentType != null) {
                abstractC3206g.mo39143b("Content-Type: ").mo39143b(contentType.toString()).mo39140c(CRLF);
            }
            long contentLength = body.contentLength();
            if (contentLength != -1) {
                abstractC3206g.mo39143b("Content-Length: ").mo39135k(contentLength).mo39140c(CRLF);
            } else if (z) {
                C18524p.m3851a(c3202f);
                c3202f.m39192u();
                return -1L;
            }
            byte[] bArr = CRLF;
            abstractC3206g.mo39140c(bArr);
            if (z) {
                c += contentLength;
            } else {
                body.writeTo(abstractC3206g);
            }
            abstractC3206g.mo39140c(bArr);
        }
        C18524p.m3851a(abstractC3206g);
        byte[] bArr2 = DASHDASH;
        abstractC3206g.mo39140c(bArr2);
        abstractC3206g.mo39144b(this.boundaryByteString);
        abstractC3206g.mo39140c(bArr2);
        abstractC3206g.mo39140c(CRLF);
        char c2 = c;
        if (z) {
            C18524p.m3851a(c3202f);
            c2 = c + c3202f.f11572b;
            c3202f.m39192u();
        }
        return c2;
    }

    /* renamed from: -deprecated_boundary */
    public final String m54276deprecated_boundary() {
        return boundary();
    }

    /* renamed from: -deprecated_parts */
    public final List<Part> m54277deprecated_parts() {
        return this.parts;
    }

    /* renamed from: -deprecated_size */
    public final int m54278deprecated_size() {
        return size();
    }

    /* renamed from: -deprecated_type */
    public final MediaType m54279deprecated_type() {
        return this.type;
    }

    public final String boundary() {
        return this.boundaryByteString.m39179b();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // okhttp3.RequestBody
    public final long contentLength() throws IOException {
        ?? r0 = this.contentLength;
        char c = r0;
        if (r0 == -1) {
            c = writeOrCountBytes(null, true);
            this.contentLength = c;
        }
        return c;
    }

    @Override // okhttp3.RequestBody
    public final MediaType contentType() {
        return this.contentType;
    }

    public final Part part(int i) {
        return this.parts.get(i);
    }

    public final List<Part> parts() {
        return this.parts;
    }

    public final int size() {
        return this.parts.size();
    }

    public final MediaType type() {
        return this.type;
    }

    @Override // okhttp3.RequestBody
    public final void writeTo(AbstractC3206g sink) throws IOException {
        C18524p.m3840d(sink, "sink");
        writeOrCountBytes(sink, false);
    }
}
