package com.google.api.client.googleapis.batch;

import com.google.api.client.http.a;
import com.google.api.client.http.j;
import com.google.api.client.http.n;
import com.google.api.client.http.q;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/HttpRequestContent.class */
class HttpRequestContent extends a {
    private static final String HTTP_VERSION = "HTTP/1.1";
    static final String NEWLINE = "\r\n";
    private final q request;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HttpRequestContent(q qVar) {
        super("application/http");
        this.request = qVar;
    }

    @Override // com.google.api.client.http.j, com.google.api.client.a.ad
    public void writeTo(OutputStream outputStream) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, getCharset());
        outputStreamWriter.write(this.request.b());
        outputStreamWriter.write(StringUtils.SPACE);
        outputStreamWriter.write(this.request.c().b());
        outputStreamWriter.write(StringUtils.SPACE);
        outputStreamWriter.write(HTTP_VERSION);
        outputStreamWriter.write(NEWLINE);
        n nVar = new n();
        nVar.a(this.request.g());
        nVar.a().f(null).b(null).d(null).a((Long) null);
        j d2 = this.request.d();
        if (d2 != null) {
            nVar.d(d2.getType());
            long length = d2.getLength();
            if (length != -1) {
                nVar.a(Long.valueOf(length));
            }
        }
        n.a(nVar, outputStreamWriter);
        outputStreamWriter.write(NEWLINE);
        outputStreamWriter.flush();
        if (d2 != null) {
            d2.writeTo(outputStream);
        }
    }
}
