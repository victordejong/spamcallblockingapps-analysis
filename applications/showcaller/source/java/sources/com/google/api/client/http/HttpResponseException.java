package com.google.api.client.http;

import com.google.api.client.util.C8688a0;
import com.google.api.client.util.C8731w;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/HttpResponseException.class */
public class HttpResponseException extends IOException {
    private static final long serialVersionUID = -1875819453475890043L;
    private final String content;

    /* renamed from: d */
    private final transient C8650n f38283d;
    private final int statusCode;
    private final String statusMessage;

    /* renamed from: com.google.api.client.http.HttpResponseException$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/http/HttpResponseException$a.class */
    public static class C8613a {

        /* renamed from: a */
        int f38284a;

        /* renamed from: b */
        String f38285b;

        /* renamed from: c */
        C8650n f38286c;

        /* renamed from: d */
        String f38287d;

        /* renamed from: e */
        String f38288e;

        public C8613a(int i, String str, C8650n c8650n) {
            m3243d(i);
            m3242e(str);
            m3245b(c8650n);
        }

        public C8613a(C8658t c8658t) {
            this(c8658t.m3065h(), c8658t.m3064i(), c8658t.m3067f());
            try {
                String m3059n = c8658t.m3059n();
                this.f38287d = m3059n;
                if (m3059n.length() == 0) {
                    this.f38287d = null;
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
            }
            StringBuilder computeMessageBuffer = HttpResponseException.computeMessageBuffer(c8658t);
            if (this.f38287d != null) {
                computeMessageBuffer.append(C8688a0.f38484a);
                computeMessageBuffer.append(this.f38287d);
            }
            this.f38288e = computeMessageBuffer.toString();
        }

        /* renamed from: a */
        public C8613a m3246a(String str) {
            this.f38287d = str;
            return this;
        }

        /* renamed from: b */
        public C8613a m3245b(C8650n c8650n) {
            this.f38286c = (C8650n) C8731w.m2836d(c8650n);
            return this;
        }

        /* renamed from: c */
        public C8613a m3244c(String str) {
            this.f38288e = str;
            return this;
        }

        /* renamed from: d */
        public C8613a m3243d(int i) {
            C8731w.m2839a(i >= 0);
            this.f38284a = i;
            return this;
        }

        /* renamed from: e */
        public C8613a m3242e(String str) {
            this.f38285b = str;
            return this;
        }
    }

    public HttpResponseException(C8613a c8613a) {
        super(c8613a.f38288e);
        this.statusCode = c8613a.f38284a;
        this.statusMessage = c8613a.f38285b;
        this.f38283d = c8613a.f38286c;
        this.content = c8613a.f38287d;
    }

    public HttpResponseException(C8658t c8658t) {
        this(new C8613a(c8658t));
    }

    public static StringBuilder computeMessageBuffer(C8658t c8658t) {
        StringBuilder sb = new StringBuilder();
        int m3065h = c8658t.m3065h();
        if (m3065h != 0) {
            sb.append(m3065h);
        }
        String m3064i = c8658t.m3064i();
        if (m3064i != null) {
            if (m3065h != 0) {
                sb.append(' ');
            }
            sb.append(m3064i);
        }
        C8655q m3066g = c8658t.m3066g();
        if (m3066g != null) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            String m3096j = m3066g.m3096j();
            if (m3096j != null) {
                sb.append(m3096j);
                sb.append(' ');
            }
            sb.append(m3066g.m3089q());
        }
        return sb;
    }

    public final String getContent() {
        return this.content;
    }

    public C8650n getHeaders() {
        return this.f38283d;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public final String getStatusMessage() {
        return this.statusMessage;
    }

    public final boolean isSuccessStatusCode() {
        return C8660v.m3055b(this.statusCode);
    }
}
