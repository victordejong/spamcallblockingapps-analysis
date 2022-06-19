package okhttp3.internal.http;

import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http/RealResponseBody.class */
public final class RealResponseBody extends ResponseBody {
    private final long contentLength;
    private final String contentTypeString;
    private final BufferedSource source;

    public RealResponseBody(String str, long j, BufferedSource bufferedSource) {
        this.contentTypeString = str;
        this.contentLength = j;
        this.source = bufferedSource;
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        String str = this.contentTypeString;
        return str != null ? MediaType.parse(str) : null;
    }

    @Override // okhttp3.ResponseBody
    public BufferedSource source() {
        return this.source;
    }
}
