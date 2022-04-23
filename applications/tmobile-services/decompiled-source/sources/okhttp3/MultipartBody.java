package okhttp3;

import com.facebook.stetho.server.http.HttpHeaders;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� +2\u00020\u0001:\u0003,+-B'\b��\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010\u0019\u001a\u00020\t\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0011¢\u0006\u0004\b)\u0010*J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0011H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0018\u0010\u000bJ!\u0010\u001e\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b!\u0010\"R\u0013\u0010\u0005\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0004R\u0016\u0010$\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010&R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010'R\u001f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00118\u0007@\u0006¢\u0006\f\n\u0004\b\u0014\u0010(\u001a\u0004\b\u0014\u0010\u0013R\u0013\u0010\u0017\u001a\u00020\f8G@\u0006¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0016R\u0019\u0010\u0019\u001a\u00020\t8\u0007@\u0006¢\u0006\f\n\u0004\b\u0019\u0010'\u001a\u0004\b\u0019\u0010\u000b¨\u0006."}, d2 = {"Lokhttp3/MultipartBody;", "Lokhttp3/RequestBody;", "", "-deprecated_boundary", "()Ljava/lang/String;", "boundary", "", "contentLength", "()J", "Lokhttp3/MediaType;", "contentType", "()Lokhttp3/MediaType;", "", FirebaseAnalytics.Param.INDEX, "Lokhttp3/MultipartBody$Part;", "part", "(I)Lokhttp3/MultipartBody$Part;", "", "-deprecated_parts", "()Ljava/util/List;", "parts", "-deprecated_size", "()I", "size", "-deprecated_type", "type", "Lokio/BufferedSink;", "sink", "", "countBytes", "writeOrCountBytes", "(Lokio/BufferedSink;Z)J", "", "writeTo", "(Lokio/BufferedSink;)V", "Lokio/ByteString;", "boundaryByteString", "Lokio/ByteString;", "J", "Lokhttp3/MediaType;", "Ljava/util/List;", "<init>", "(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V", "Companion", "Builder", "Part", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/MultipartBody.class */
public final class MultipartBody extends RequestBody {
    private static final byte[] DASHDASH;
    private final ByteString boundaryByteString;
    private long contentLength = -1;
    private final MediaType contentType;
    @NotNull
    private final List<Part> parts;
    @NotNull
    private final MediaType type;
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final MediaType MIXED = MediaType.Companion.get("multipart/mixed");
    @JvmField
    @NotNull
    public static final MediaType ALTERNATIVE = MediaType.Companion.get("multipart/alternative");
    @JvmField
    @NotNull
    public static final MediaType DIGEST = MediaType.Companion.get("multipart/digest");
    @JvmField
    @NotNull
    public static final MediaType PARALLEL = MediaType.Companion.get("multipart/parallel");
    @JvmField
    @NotNull
    public static final MediaType FORM = MediaType.Companion.get("multipart/form-data");
    private static final byte[] COLONSPACE = {(byte) 58, (byte) 32};
    private static final byte[] CRLF = {(byte) 13, (byte) 10};

    @Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0006\u0018��B\u0013\b\u0007\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0001¢\u0006\u0004\b \u0010!J\u001d\u0010\u0004\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005J'\u0010\u0004\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\tJ\u001f\u0010\f\u001a\u00020��2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\f\u001a\u00020��2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\f\u0010\u0010J\u0015\u0010\f\u001a\u00020��2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\u0011J\r\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020��2\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000e0\u001c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u001f¨\u0006\""}, d2 = {"Lokhttp3/MultipartBody$Builder;", "", "name", FirebaseAnalytics.Param.VALUE, "addFormDataPart", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;", "filename", "Lokhttp3/RequestBody;", "body", "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;", "Lokhttp3/Headers;", "headers", "addPart", "(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;", "Lokhttp3/MultipartBody$Part;", "part", "(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;", "(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;", "Lokhttp3/MultipartBody;", "build", "()Lokhttp3/MultipartBody;", "Lokhttp3/MediaType;", "type", "setType", "(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;", "Lokio/ByteString;", "boundary", "Lokio/ByteString;", "", "parts", "Ljava/util/List;", "Lokhttp3/MediaType;", "<init>", "(Ljava/lang/String;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/MultipartBody$Builder.class */
    public static final class Builder {
        private final ByteString boundary;
        private final List<Part> parts;
        private MediaType type;

        @JvmOverloads
        public Builder() {
            this(null, 1, null);
        }

        @JvmOverloads
        public Builder(@NotNull String boundary) {
            Intrinsics.m1830e(boundary, "boundary");
            this.boundary = ByteString.f24137j.m163d(boundary);
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
                if (r0 == 0) goto L_0x0013
                java.util.UUID r0 = java.util.UUID.randomUUID()
                java.lang.String r0 = r0.toString()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "UUID.randomUUID().toString()"
                kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
            L_0x0013:
                r0 = r3
                r1 = r4
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartBody.Builder.<init>(java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        @NotNull
        public final Builder addFormDataPart(@NotNull String name, @NotNull String value) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            addPart(Part.Companion.createFormData(name, value));
            return this;
        }

        @NotNull
        public final Builder addFormDataPart(@NotNull String name, @Nullable String str, @NotNull RequestBody body) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(body, "body");
            addPart(Part.Companion.createFormData(name, str, body));
            return this;
        }

        @NotNull
        public final Builder addPart(@Nullable Headers headers, @NotNull RequestBody body) {
            Intrinsics.m1830e(body, "body");
            addPart(Part.Companion.create(headers, body));
            return this;
        }

        @NotNull
        public final Builder addPart(@NotNull Part part) {
            Intrinsics.m1830e(part, "part");
            this.parts.add(part);
            return this;
        }

        @NotNull
        public final Builder addPart(@NotNull RequestBody body) {
            Intrinsics.m1830e(body, "body");
            addPart(Part.Companion.create(body));
            return this;
        }

        @NotNull
        public final MultipartBody build() {
            if (!this.parts.isEmpty()) {
                return new MultipartBody(this.boundary, this.type, Util.toImmutableList(this.parts));
            }
            throw new IllegalStateException("Multipart body must have at least one part.".toString());
        }

        @NotNull
        public final Builder setType(@NotNull MediaType type) {
            Intrinsics.m1830e(type, "type");
            if (Intrinsics.m1834a(type.type(), "multipart")) {
                this.type = type;
                return this;
            }
            throw new IllegalArgumentException(("multipart != " + type).toString());
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u000b\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\b\u001a\u00020\u0005*\u00060\u0001j\u0002`\u00022\u0006\u0010\u0004\u001a\u00020\u0003H��¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\n\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000bR\u0016\u0010\u0012\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u000bR\u0016\u0010\u0013\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u000bR\u0016\u0010\u0014\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u000b¨\u0006\u0017"}, d2 = {"Lokhttp3/MultipartBody$Companion;", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "", "key", "", "appendQuotedString$okhttp", "(Ljava/lang/StringBuilder;Ljava/lang/String;)V", "appendQuotedString", "Lokhttp3/MediaType;", "ALTERNATIVE", "Lokhttp3/MediaType;", "", "COLONSPACE", "[B", "CRLF", "DASHDASH", "DIGEST", "FORM", "MIXED", "PARALLEL", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/MultipartBody$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void appendQuotedString$okhttp(@NotNull StringBuilder appendQuotedString, @NotNull String key) {
            Intrinsics.m1830e(appendQuotedString, "$this$appendQuotedString");
            Intrinsics.m1830e(key, "key");
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

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018�� \r:\u0001\rB\u001b\b\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0004\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u0004\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\t\u001a\u0004\b\u0004\u0010\u0003R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00058\u0007@\u0006¢\u0006\f\n\u0004\b\b\u0010\n\u001a\u0004\b\b\u0010\u0007¨\u0006\u000e"}, d2 = {"Lokhttp3/MultipartBody$Part;", "Lokhttp3/RequestBody;", "-deprecated_body", "()Lokhttp3/RequestBody;", "body", "Lokhttp3/Headers;", "-deprecated_headers", "()Lokhttp3/Headers;", "headers", "Lokhttp3/RequestBody;", "Lokhttp3/Headers;", "<init>", "(Lokhttp3/Headers;Lokhttp3/RequestBody;)V", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/MultipartBody$Part.class */
    public static final class Part {
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final RequestBody body;
        @Nullable
        private final Headers headers;

        @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0006\u001a\u00020\u00052\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\bJ\u001f\u0010\f\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\rJ)\u0010\f\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\f\u0010\u000f¨\u0006\u0012"}, d2 = {"Lokhttp3/MultipartBody$Part$Companion;", "Lokhttp3/Headers;", "headers", "Lokhttp3/RequestBody;", "body", "Lokhttp3/MultipartBody$Part;", "create", "(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;", "(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;", "", "name", FirebaseAnalytics.Param.VALUE, "createFormData", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;", "filename", "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes2-dex2jar.jar:okhttp3/MultipartBody$Part$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            @NotNull
            public final Part create(@Nullable Headers headers, @NotNull RequestBody body) {
                Intrinsics.m1830e(body, "body");
                boolean z = true;
                if ((headers != null ? headers.get(HttpHeaders.CONTENT_TYPE) : null) == null) {
                    if ((headers != null ? headers.get(HttpHeaders.CONTENT_LENGTH) : null) != null) {
                        z = false;
                    }
                    if (z) {
                        return new Part(headers, body, null);
                    }
                    throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
                }
                throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
            }

            @JvmStatic
            @NotNull
            public final Part create(@NotNull RequestBody body) {
                Intrinsics.m1830e(body, "body");
                return create(null, body);
            }

            @JvmStatic
            @NotNull
            public final Part createFormData(@NotNull String name, @NotNull String value) {
                Intrinsics.m1830e(name, "name");
                Intrinsics.m1830e(value, "value");
                return createFormData(name, null, RequestBody.Companion.create$default(RequestBody.Companion, value, (MediaType) null, 1, (Object) null));
            }

            @JvmStatic
            @NotNull
            public final Part createFormData(@NotNull String name, @Nullable String str, @NotNull RequestBody body) {
                Intrinsics.m1830e(name, "name");
                Intrinsics.m1830e(body, "body");
                StringBuilder sb = new StringBuilder();
                sb.append("form-data; name=");
                MultipartBody.Companion.appendQuotedString$okhttp(sb, name);
                if (str != null) {
                    sb.append("; filename=");
                    MultipartBody.Companion.appendQuotedString$okhttp(sb, str);
                }
                String sb2 = sb.toString();
                Intrinsics.m1831d(sb2, "StringBuilder().apply(builderAction).toString()");
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

        @JvmStatic
        @NotNull
        public static final Part create(@Nullable Headers headers, @NotNull RequestBody requestBody) {
            return Companion.create(headers, requestBody);
        }

        @JvmStatic
        @NotNull
        public static final Part create(@NotNull RequestBody requestBody) {
            return Companion.create(requestBody);
        }

        @JvmStatic
        @NotNull
        public static final Part createFormData(@NotNull String str, @NotNull String str2) {
            return Companion.createFormData(str, str2);
        }

        @JvmStatic
        @NotNull
        public static final Part createFormData(@NotNull String str, @Nullable String str2, @NotNull RequestBody requestBody) {
            return Companion.createFormData(str, str2, requestBody);
        }

        @Deprecated
        @JvmName
        @NotNull
        /* renamed from: -deprecated_body  reason: not valid java name */
        public final RequestBody m24686deprecated_body() {
            return this.body;
        }

        @Deprecated
        @JvmName
        @Nullable
        /* renamed from: -deprecated_headers  reason: not valid java name */
        public final Headers m24687deprecated_headers() {
            return this.headers;
        }

        @JvmName
        @NotNull
        public final RequestBody body() {
            return this.body;
        }

        @JvmName
        @Nullable
        public final Headers headers() {
            return this.headers;
        }
    }

    static {
        byte b = (byte) 45;
        DASHDASH = new byte[]{b, b};
    }

    public MultipartBody(@NotNull ByteString boundaryByteString, @NotNull MediaType type, @NotNull List<Part> parts) {
        Intrinsics.m1830e(boundaryByteString, "boundaryByteString");
        Intrinsics.m1830e(type, "type");
        Intrinsics.m1830e(parts, "parts");
        this.boundaryByteString = boundaryByteString;
        this.type = type;
        this.parts = parts;
        MediaType.Companion companion = MediaType.Companion;
        this.contentType = companion.get(this.type + "; boundary=" + boundary());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [long] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [okio.Buffer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long writeOrCountBytes(okio.BufferedSink r6, boolean r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartBody.writeOrCountBytes(okio.BufferedSink, boolean):long");
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_boundary  reason: not valid java name */
    public final String m24681deprecated_boundary() {
        return boundary();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_parts  reason: not valid java name */
    public final List<Part> m24682deprecated_parts() {
        return this.parts;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_size  reason: not valid java name */
    public final int m24683deprecated_size() {
        return size();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_type  reason: not valid java name */
    public final MediaType m24684deprecated_type() {
        return this.type;
    }

    @JvmName
    @NotNull
    public final String boundary() {
        return this.boundaryByteString.m176F();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // okhttp3.RequestBody
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long contentLength() throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.contentLength
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001b
            r0 = r5
            r1 = 0
            r2 = 1
            long r0 = r0.writeOrCountBytes(r1, r2)
            r8 = r0
            r0 = r5
            r1 = r8
            r0.contentLength = r1
        L_0x001b:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartBody.contentLength():long");
    }

    @Override // okhttp3.RequestBody
    @NotNull
    public MediaType contentType() {
        return this.contentType;
    }

    @NotNull
    public final Part part(int i) {
        return this.parts.get(i);
    }

    @JvmName
    @NotNull
    public final List<Part> parts() {
        return this.parts;
    }

    @JvmName
    public final int size() {
        return this.parts.size();
    }

    @JvmName
    @NotNull
    public final MediaType type() {
        return this.type;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(@NotNull BufferedSink sink) throws IOException {
        Intrinsics.m1830e(sink, "sink");
        writeOrCountBytes(sink, false);
    }
}
