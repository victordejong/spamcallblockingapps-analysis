package com.google.api.client.http;

import com.google.api.client.p379a.C15212ae;
import com.google.common.base.C15391m;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/HttpResponseException.class */
public class HttpResponseException extends IOException {
    private static final long serialVersionUID = -1875819453475890043L;
    private final String content;
    private final transient C15335n headers;
    private final int statusCode;
    private final String statusMessage;

    /* renamed from: com.google.api.client.http.HttpResponseException$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/HttpResponseException$a.class */
    public static final class C15302a {

        /* renamed from: a */
        int f55284a;

        /* renamed from: b */
        String f55285b;

        /* renamed from: c */
        C15335n f55286c;

        /* renamed from: d */
        public String f55287d;

        /* renamed from: e */
        public String f55288e;

        public C15302a(int i, String str, C15335n c15335n) {
            C15391m.m8943a(i >= 0);
            this.f55284a = i;
            this.f55285b = str;
            this.f55286c = (C15335n) C15391m.m8946a(c15335n);
        }

        public C15302a(C15343t c15343t) {
            this(c15343t.f55390c, c15343t.f55391d, c15343t.f55392e.f55364e);
            try {
                String m9009k = c15343t.m9009k();
                this.f55287d = m9009k;
                if (m9009k.length() == 0) {
                    this.f55287d = null;
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
            }
            StringBuilder computeMessageBuffer = HttpResponseException.computeMessageBuffer(c15343t);
            if (this.f55287d != null) {
                computeMessageBuffer.append(C15212ae.f55053a);
                computeMessageBuffer.append(this.f55287d);
            }
            this.f55288e = computeMessageBuffer.toString();
        }

        /* renamed from: a */
        public final C15302a m9145a(String str) {
            this.f55288e = str;
            return this;
        }

        /* renamed from: b */
        public final C15302a m9144b(String str) {
            this.f55287d = str;
            return this;
        }
    }

    public HttpResponseException(C15302a c15302a) {
        super(c15302a.f55288e);
        this.statusCode = c15302a.f55284a;
        this.statusMessage = c15302a.f55285b;
        this.headers = c15302a.f55286c;
        this.content = c15302a.f55287d;
    }

    public HttpResponseException(C15343t c15343t) {
        this(new C15302a(c15343t));
    }

    public static StringBuilder computeMessageBuffer(C15343t c15343t) {
        StringBuilder sb = new StringBuilder();
        int i = c15343t.f55390c;
        if (i != 0) {
            sb.append(i);
        }
        String str = c15343t.f55391d;
        if (str != null) {
            if (i != 0) {
                sb.append(' ');
            }
            sb.append(str);
        }
        C15340q c15340q = c15343t.f55392e;
        if (c15340q != null) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            String str2 = c15340q.f55368i;
            if (str2 != null) {
                sb.append(str2);
                sb.append(' ');
            }
            sb.append(c15340q.f55369j);
        }
        return sb;
    }

    public final String getContent() {
        return this.content;
    }

    public C15335n getHeaders() {
        return this.headers;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public final String getStatusMessage() {
        return this.statusMessage;
    }

    public final boolean isSuccessStatusCode() {
        return C15345v.m9005a(this.statusCode);
    }
}
