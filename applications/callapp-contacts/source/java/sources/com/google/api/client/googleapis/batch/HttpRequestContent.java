package com.google.api.client.googleapis.batch;

import com.google.api.client.http.AbstractC15303a;
import com.google.api.client.http.AbstractC15331j;
import com.google.api.client.http.C15335n;
import com.google.api.client.http.C15340q;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/HttpRequestContent.class */
class HttpRequestContent extends AbstractC15303a {
    private static final String HTTP_VERSION = "HTTP/1.1";
    static final String NEWLINE = "\r\n";
    private final C15340q request;

    public HttpRequestContent(C15340q c15340q) {
        super("application/http");
        this.request = c15340q;
    }

    @Override // com.google.api.client.http.AbstractC15331j, com.google.api.client.p379a.AbstractC15211ad
    public void writeTo(OutputStream outputStream) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, getCharset());
        outputStreamWriter.write(this.request.m9044b());
        outputStreamWriter.write(StringUtils.SPACE);
        outputStreamWriter.write(this.request.m9043c().m9106b());
        outputStreamWriter.write(StringUtils.SPACE);
        outputStreamWriter.write(HTTP_VERSION);
        outputStreamWriter.write(NEWLINE);
        C15335n c15335n = new C15335n();
        c15335n.m9098a(this.request.m9039g());
        c15335n.m9100a().m9077f(null).m9085b(null).m9081d(null).m9094a((Long) null);
        AbstractC15331j m9042d = this.request.m9042d();
        if (m9042d != null) {
            c15335n.m9081d(m9042d.getType());
            long length = m9042d.getLength();
            if (length != -1) {
                c15335n.m9094a(Long.valueOf(length));
            }
        }
        C15335n.m9097a(c15335n, outputStreamWriter);
        outputStreamWriter.write(NEWLINE);
        outputStreamWriter.flush();
        if (m9042d != null) {
            m9042d.writeTo(outputStream);
        }
    }
}
