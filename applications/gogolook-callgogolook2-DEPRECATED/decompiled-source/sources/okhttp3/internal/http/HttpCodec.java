package okhttp3.internal.http;

import java.io.IOException;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p645m.AbstractC15192r;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/http/HttpCodec.class */
public interface HttpCodec {
    void cancel();

    AbstractC15192r createRequestBody(Request request, long j);

    void finishRequest() throws IOException;

    void flushRequest() throws IOException;

    ResponseBody openResponseBody(Response response) throws IOException;

    Response.Builder readResponseHeaders(boolean z) throws IOException;

    void writeRequestHeaders(Request request) throws IOException;
}
