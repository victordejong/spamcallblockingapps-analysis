package retrofit2;

import com.facebook.stetho.server.http.HttpHeaders;
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
import okio.Buffer;
import okio.BufferedSink;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:retrofit2/RequestBuilder.class */
public final class RequestBuilder {
    private static final String PATH_SEGMENT_ALWAYS_ENCODE_SET = " \"<>^`{}|\\?#";
    private final HttpUrl baseUrl;
    @Nullable
    private RequestBody body;
    @Nullable
    private MediaType contentType;
    @Nullable
    private FormBody.Builder formBuilder;
    private final boolean hasBody;
    private final Headers.Builder headersBuilder;
    private final String method;
    @Nullable
    private MultipartBody.Builder multipartBuilder;
    @Nullable
    private String relativeUrl;
    private final Request.Builder requestBuilder = new Request.Builder();
    @Nullable
    private HttpUrl.Builder urlBuilder;
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final Pattern PATH_TRAVERSAL = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    /* loaded from: classes2-dex2jar.jar:retrofit2/RequestBuilder$ContentTypeOverridingRequestBody.class */
    private static class ContentTypeOverridingRequestBody extends RequestBody {
        private final MediaType contentType;
        private final RequestBody delegate;

        ContentTypeOverridingRequestBody(RequestBody requestBody, MediaType mediaType) {
            this.delegate = requestBody;
            this.contentType = mediaType;
        }

        @Override // okhttp3.RequestBody
        public long contentLength() throws IOException {
            return this.delegate.contentLength();
        }

        @Override // okhttp3.RequestBody
        public MediaType contentType() {
            return this.contentType;
        }

        @Override // okhttp3.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            this.delegate.writeTo(bufferedSink);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestBuilder(String str, HttpUrl httpUrl, @Nullable String str2, @Nullable Headers headers, @Nullable MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.method = str;
        this.baseUrl = httpUrl;
        this.relativeUrl = str2;
        this.contentType = mediaType;
        this.hasBody = z;
        if (headers != null) {
            this.headersBuilder = headers.newBuilder();
        } else {
            this.headersBuilder = new Headers.Builder();
        }
        if (z2) {
            this.formBuilder = new FormBody.Builder();
        } else if (z3) {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            this.multipartBuilder = builder;
            builder.setType(MultipartBody.FORM);
        }
    }

    private static String canonicalizeForPath(String str, boolean z) {
        String str2;
        int length = str.length();
        int i = 0;
        while (true) {
            str2 = str;
            if (i >= length) {
                break;
            }
            int codePointAt = str.codePointAt(i);
            if (codePointAt < 32 || codePointAt >= 127 || PATH_SEGMENT_ALWAYS_ENCODE_SET.indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                break;
            }
            i += Character.charCount(codePointAt);
        }
        Buffer buffer = new Buffer();
        buffer.m208N0(str, 0, i);
        canonicalizeForPath(buffer, str, i, length, z);
        str2 = buffer.m199e0();
        return str2;
    }

    private static void canonicalizeForPath(Buffer buffer, String str, int i, int i2, boolean z) {
        Buffer buffer2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (z) {
                buffer2 = buffer2;
                if (codePointAt != 9) {
                    buffer2 = buffer2;
                    if (codePointAt != 10) {
                        buffer2 = buffer2;
                        if (codePointAt != 12) {
                            if (codePointAt == 13) {
                                buffer2 = buffer2;
                            }
                        }
                    }
                }
                i += Character.charCount(codePointAt);
            }
            if (codePointAt < 32 || codePointAt >= 127 || PATH_SEGMENT_ALWAYS_ENCODE_SET.indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                Buffer buffer3 = buffer2;
                if (buffer2 == null) {
                    buffer3 = new Buffer();
                }
                buffer3.m207O0(codePointAt);
                while (true) {
                    buffer2 = buffer3;
                    if (!buffer3.mo60z()) {
                        int readByte = buffer3.readByte() & 255;
                        buffer.m222D0(37);
                        buffer.m222D0(HEX_DIGITS[(readByte >> 4) & 15]);
                        buffer.m222D0(HEX_DIGITS[readByte & 15]);
                    }
                }
            } else {
                buffer.m207O0(codePointAt);
                buffer2 = buffer2;
            }
            i += Character.charCount(codePointAt);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addFormField(String str, String str2, boolean z) {
        if (z) {
            this.formBuilder.addEncoded(str, str2);
        } else {
            this.formBuilder.add(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addHeader(String str, String str2) {
        if (HttpHeaders.CONTENT_TYPE.equalsIgnoreCase(str)) {
            try {
                this.contentType = MediaType.get(str2);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Malformed content type: " + str2, e);
            }
        } else {
            this.headersBuilder.add(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addHeaders(Headers headers) {
        this.headersBuilder.addAll(headers);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addPart(Headers headers, RequestBody requestBody) {
        this.multipartBuilder.addPart(headers, requestBody);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addPart(MultipartBody.Part part) {
        this.multipartBuilder.addPart(part);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addPathParam(String str, String str2, boolean z) {
        if (this.relativeUrl != null) {
            String canonicalizeForPath = canonicalizeForPath(str2, z);
            String str3 = this.relativeUrl;
            String replace = str3.replace("{" + str + "}", canonicalizeForPath);
            if (!PATH_TRAVERSAL.matcher(replace).matches()) {
                this.relativeUrl = replace;
                return;
            }
            throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): " + str2);
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addQueryParam(String str, @Nullable String str2, boolean z) {
        String str3 = this.relativeUrl;
        if (str3 != null) {
            HttpUrl.Builder newBuilder = this.baseUrl.newBuilder(str3);
            this.urlBuilder = newBuilder;
            if (newBuilder != null) {
                this.relativeUrl = null;
            } else {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.baseUrl + ", Relative: " + this.relativeUrl);
            }
        }
        if (z) {
            this.urlBuilder.addEncodedQueryParameter(str, str2);
        } else {
            this.urlBuilder.addQueryParameter(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> void addTag(Class<T> cls, @Nullable T t) {
        this.requestBuilder.tag(cls, t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Request.Builder get() {
        HttpUrl httpUrl;
        HttpUrl.Builder builder = this.urlBuilder;
        if (builder != null) {
            httpUrl = builder.build();
        } else {
            httpUrl = this.baseUrl.resolve(this.relativeUrl);
            if (httpUrl == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.baseUrl + ", Relative: " + this.relativeUrl);
            }
        }
        RequestBody requestBody = this.body;
        RequestBody requestBody2 = requestBody;
        if (requestBody == null) {
            FormBody.Builder builder2 = this.formBuilder;
            if (builder2 != null) {
                requestBody2 = builder2.build();
            } else {
                MultipartBody.Builder builder3 = this.multipartBuilder;
                if (builder3 != null) {
                    requestBody2 = builder3.build();
                } else {
                    requestBody2 = requestBody;
                    if (this.hasBody) {
                        requestBody2 = RequestBody.create((MediaType) null, new byte[0]);
                    }
                }
            }
        }
        MediaType mediaType = this.contentType;
        RequestBody requestBody3 = requestBody2;
        if (mediaType != null) {
            if (requestBody2 != null) {
                requestBody3 = new ContentTypeOverridingRequestBody(requestBody2, mediaType);
            } else {
                this.headersBuilder.add(HttpHeaders.CONTENT_TYPE, mediaType.toString());
                requestBody3 = requestBody2;
            }
        }
        return this.requestBuilder.url(httpUrl).headers(this.headersBuilder.build()).method(this.method, requestBody3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBody(RequestBody requestBody) {
        this.body = requestBody;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRelativeUrl(Object obj) {
        this.relativeUrl = obj.toString();
    }
}
