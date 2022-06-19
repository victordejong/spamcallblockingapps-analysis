package com.bytedance.sdk.adnet.core;

import android.text.TextUtils;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.adnet.err.C4239a;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.IHttpStack;
import com.bytedance.sdk.p127a.p129b.AbstractC4100ab;
import com.bytedance.sdk.p127a.p129b.AbstractC4148z;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4132r;
import com.bytedance.sdk.p127a.p129b.C4139u;
import com.bytedance.sdk.p127a.p129b.C4140v;
import com.bytedance.sdk.p127a.p129b.C4146y;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4030k;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.adnet.core.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/j.class */
public class C4212j implements IHttpStack {

    /* renamed from: a */
    private final C4140v f15455a = new C4140v.C4142a().m36358a(10000, TimeUnit.MILLISECONDS).m36356b(10000, TimeUnit.MILLISECONDS).m36354c(10000, TimeUnit.MILLISECONDS).m36359a();

    /* renamed from: com.bytedance.sdk.adnet.core.j$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/j$a.class */
    static class C4213a extends FilterInputStream {

        /* renamed from: a */
        private final AbstractC4100ab f15456a;

        C4213a(AbstractC4100ab abstractC4100ab) {
            super(C4212j.m36132b(abstractC4100ab));
            this.f15456a = abstractC4100ab;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            try {
                this.f15456a.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    private static List<Header> m36135a(C4132r c4132r) {
        if (c4132r == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(c4132r.m36471a());
        int m36471a = c4132r.m36471a();
        for (int i = 0; i < m36471a; i++) {
            String m36470a = c4132r.m36470a(i);
            String m36466b = c4132r.m36466b(i);
            if (m36470a != null) {
                arrayList.add(new Header(m36470a, m36466b));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m36134a(C4146y.C4147a c4147a, Request<?> request) throws IOException, C4239a {
        switch (request.getMethod()) {
            case -1:
                byte[] postBody = request.getPostBody();
                if (postBody == null) {
                    return;
                }
                c4147a.m36330a(AbstractC4148z.m36316a(C4139u.m36399a(request.getBodyContentType()), postBody));
                return;
            case 0:
                c4147a.m36333a();
                return;
            case 1:
                c4147a.m36330a(m36129d(request));
                return;
            case 2:
                c4147a.m36320c(m36129d(request));
                return;
            case 3:
                c4147a.m36321c();
                return;
            case 4:
                c4147a.m36325b();
                return;
            case 5:
                c4147a.m36328a("OPTIONS", (AbstractC4148z) null);
                return;
            case 6:
                c4147a.m36328a("TRACE", (AbstractC4148z) null);
                return;
            case 7:
                c4147a.m36318d(m36129d(request));
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    /* renamed from: a */
    private void m36133a(Request<?> request) {
        if (request != null) {
            request.setIpAddrStr(m36131b(request));
        }
    }

    /* renamed from: a */
    private static boolean m36137a(int i, int i2) {
        if (i != 4) {
            return ((100 <= i2 && i2 < 200) || i2 == 204 || i2 == 304) ? false : true;
        }
        return false;
    }

    /* renamed from: b */
    public static InputStream m36132b(AbstractC4100ab abstractC4100ab) {
        if (abstractC4100ab == null) {
            return null;
        }
        return abstractC4100ab.m36581c();
    }

    /* renamed from: b */
    private String m36131b(Request<?> request) {
        String str = "";
        if (request != null) {
            if (request.getUrl() == null) {
                str = "";
            } else {
                try {
                    str = InetAddress.getByName(new URL(request.getUrl()).getHost()).getHostAddress();
                } catch (Exception e) {
                    str = "";
                }
            }
        }
        return str;
    }

    /* renamed from: c */
    private C4146y.C4147a m36130c(Request request) throws IOException {
        if (request == null || request.getUrl() == null) {
            return null;
        }
        C4146y.C4147a c4147a = new C4146y.C4147a();
        URL url = new URL(request.getUrl());
        String host = url.getHost();
        String str = null;
        if (C4151a.f15229a != null) {
            str = C4151a.f15229a.m36109a(host);
        }
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            try {
                c4147a.m36326a(new URL(url.toString().replaceFirst(host, str))).m36322b("Host", host);
                z = true;
            } catch (Exception e) {
                z = false;
            }
        }
        if (!z) {
            c4147a.m36326a(url);
        }
        return c4147a;
    }

    /* renamed from: d */
    private static AbstractC4148z m36129d(Request request) throws C4239a {
        byte[] body = request.getBody();
        byte[] bArr = body;
        if (body == null) {
            if (request.getMethod() != 1) {
                return null;
            }
            bArr = "".getBytes();
        }
        return AbstractC4148z.m36316a(C4139u.m36399a(request.getBodyContentType()), bArr);
    }

    @Override // com.bytedance.sdk.adnet.face.IHttpStack
    public HttpResponse performRequest(Request<?> request, Map<String, String> map) throws IOException, VAdError {
        Throwable th;
        long timeoutMs = request.getTimeoutMs();
        boolean z = true;
        C4140v m36359a = this.f15455a.m36371y().m36358a(timeoutMs, TimeUnit.MILLISECONDS).m36356b(timeoutMs, TimeUnit.MILLISECONDS).m36354c(timeoutMs, TimeUnit.MILLISECONDS).m36355b(true).m36357a(true).m36359a();
        C4146y.C4147a m36130c = m36130c(request);
        if (m36130c != null) {
            m36133a(request);
            if (!TextUtils.isEmpty(request.getUserAgent())) {
                m36130c.m36323b("User-Agent").m36322b("User-Agent", request.getUserAgent());
            }
            Map<String, String> headers = request.getHeaders();
            if (headers != null) {
                for (String str : headers.keySet()) {
                    m36130c.m36322b(str, headers.get(str));
                }
            }
            if (map != null) {
                for (String str2 : map.keySet()) {
                    m36130c.m36327a(str2, map.get(str2));
                }
            }
            m36134a(m36130c, request);
            C4098aa mo36352a = m36359a.m36396a(m36130c.m36319d()).mo36352a();
            C4030k m36853a = C4030k.m36853a(mo36352a);
            AbstractC4100ab m36605h = mo36352a.m36605h();
            try {
                int i = m36853a.f14622b;
                if (i == -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (!m36137a(request.getMethod(), i)) {
                    HttpResponse httpResponse = new HttpResponse(i, m36135a(mo36352a.m36606g()));
                    m36605h.close();
                    return httpResponse;
                }
                try {
                    return new HttpResponse(i, m36135a(mo36352a.m36606g()), (int) m36605h.mo36577b(), new C4213a(m36605h));
                } catch (Throwable th2) {
                    th = th2;
                    if (!z) {
                        m36605h.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                z = false;
            }
        } else {
            throw new IllegalArgumentException("request params maybe null");
        }
    }
}
