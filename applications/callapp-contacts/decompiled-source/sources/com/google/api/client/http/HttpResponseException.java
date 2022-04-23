package com.google.api.client.http;

import com.google.api.client.a.ae;
import com.google.common.base.m;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/HttpResponseException.class */
public class HttpResponseException extends IOException {
    private static final long serialVersionUID = -1875819453475890043L;
    private final String content;
    private final transient n headers;
    private final int statusCode;
    private final String statusMessage;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/HttpResponseException$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f31764a;

        /* renamed from: b  reason: collision with root package name */
        String f31765b;

        /* renamed from: c  reason: collision with root package name */
        n f31766c;

        /* renamed from: d  reason: collision with root package name */
        public String f31767d;
        public String e;

        public a(int i, String str, n nVar) {
            m.a(i >= 0);
            this.f31764a = i;
            this.f31765b = str;
            this.f31766c = (n) m.a(nVar);
        }

        public a(t tVar) {
            this(tVar.f31830c, tVar.f31831d, tVar.e.e);
            try {
                String k = tVar.k();
                this.f31767d = k;
                if (k.length() == 0) {
                    this.f31767d = null;
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
            }
            StringBuilder computeMessageBuffer = HttpResponseException.computeMessageBuffer(tVar);
            if (this.f31767d != null) {
                computeMessageBuffer.append(ae.f31603a);
                computeMessageBuffer.append(this.f31767d);
            }
            this.e = computeMessageBuffer.toString();
        }

        public final a a(String str) {
            this.e = str;
            return this;
        }

        public final a b(String str) {
            this.f31767d = str;
            return this;
        }
    }

    public HttpResponseException(a aVar) {
        super(aVar.e);
        this.statusCode = aVar.f31764a;
        this.statusMessage = aVar.f31765b;
        this.headers = aVar.f31766c;
        this.content = aVar.f31767d;
    }

    public HttpResponseException(t tVar) {
        this(new a(tVar));
    }

    public static StringBuilder computeMessageBuffer(t tVar) {
        StringBuilder sb = new StringBuilder();
        int i = tVar.f31830c;
        if (i != 0) {
            sb.append(i);
        }
        String str = tVar.f31831d;
        if (str != null) {
            if (i != 0) {
                sb.append(' ');
            }
            sb.append(str);
        }
        q qVar = tVar.e;
        if (qVar != null) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            String str2 = qVar.i;
            if (str2 != null) {
                sb.append(str2);
                sb.append(' ');
            }
            sb.append(qVar.j);
        }
        return sb;
    }

    public final String getContent() {
        return this.content;
    }

    public n getHeaders() {
        return this.headers;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public final String getStatusMessage() {
        return this.statusMessage;
    }

    public final boolean isSuccessStatusCode() {
        return v.a(this.statusCode);
    }
}
