package com.bytedance.sdk.adnet.core;

import com.bytedance.sdk.adnet.err.C4244f;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.AbstractC4246a;
import com.bytedance.sdk.adnet.face.AbstractC4248b;
import com.bytedance.sdk.adnet.face.AbstractC4250d;
import com.bytedance.sdk.adnet.face.IHttpStack;
import com.bytedance.sdk.adnet.p141b.C4164c;
import com.bytedance.sdk.adnet.p143d.C4227c;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.bytedance.sdk.adnet.core.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/a.class */
public class C4196a implements AbstractC4248b {

    /* renamed from: a */
    protected static final boolean f15398a = C4221o.f15476a;

    /* renamed from: b */
    protected final IHttpStack f15399b;

    /* renamed from: c */
    protected final C4197b f15400c;

    public C4196a(IHttpStack iHttpStack) {
        this(iHttpStack, new C4197b(4096));
    }

    public C4196a(IHttpStack iHttpStack, C4197b c4197b) {
        this.f15399b = iHttpStack;
        this.f15400c = c4197b;
    }

    /* renamed from: a */
    private static List<Header> m36186a(List<Header> list, AbstractC4246a.C4247a c4247a) {
        ArrayList arrayList = new ArrayList();
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (list != null && !list.isEmpty()) {
            for (Header header : list) {
                treeSet.add(header.getName());
                arrayList.add(header);
            }
        }
        if (c4247a != null) {
            if (c4247a.f15511i != null) {
                if (!c4247a.f15511i.isEmpty()) {
                    for (Header header2 : c4247a.f15511i) {
                        if (!treeSet.contains(header2.getName())) {
                            arrayList.add(header2);
                        }
                    }
                }
            } else if (!c4247a.f15510h.isEmpty()) {
                for (Map.Entry<String, String> entry : c4247a.f15510h.entrySet()) {
                    if (!treeSet.contains(entry.getKey())) {
                        arrayList.add(new Header(entry.getKey(), entry.getValue()));
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private Map<String, String> m36189a(AbstractC4246a.C4247a c4247a) {
        if (c4247a == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        if (c4247a.f15505c != null) {
            hashMap.put("If-None-Match", c4247a.f15505c);
        }
        if (c4247a.f15507e > 0) {
            hashMap.put("If-Modified-Since", C4227c.m36095a(c4247a.f15507e));
        }
        return hashMap;
    }

    /* renamed from: a */
    private void m36191a(long j, Request<?> request, byte[] bArr, int i) {
        if (f15398a || j > 3000) {
            C4221o.m36106b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", request, Long.valueOf(j), bArr != null ? Integer.valueOf(bArr.length) : JsonReaderKt.NULL, Integer.valueOf(i), Integer.valueOf(request.getRetryPolicy().mo36057b()));
        }
    }

    /* renamed from: a */
    private static void m36187a(String str, Request<?> request, VAdError vAdError) throws VAdError {
        AbstractC4250d retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.mo36058a(vAdError);
            request.addMarker(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(timeoutMs)));
        } catch (VAdError e) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(timeoutMs)));
            throw e;
        }
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x00ac: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:34:0x00a8 */
    /* renamed from: a */
    private byte[] m36188a(InputStream inputStream, int i) throws IOException, C4244f {
        byte[] bArr;
        C4199c c4199c = new C4199c(this.f15400c, i);
        try {
            if (inputStream == null) {
                throw new C4244f(606);
            }
            byte[] m36184a = this.f15400c.m36184a(1024);
            while (true) {
                int read = inputStream.read(m36184a);
                if (read == -1) {
                    break;
                }
                c4199c.write(m36184a, 0, read);
            }
            byte[] byteArray = c4199c.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    C4221o.m36108a("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f15400c.m36183a(m36184a);
            c4199c.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    C4221o.m36108a("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f15400c.m36183a(bArr);
            c4199c.close();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x0261, code lost:
        r0 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0265, code lost:
        r0 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x026d, code lost:
        r0 = new com.bytedance.sdk.adnet.err.C4244f(r0);
        r0 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0278, code lost:
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x012d, code lost:
        throw new java.io.IOException();
     */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0376 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x02d7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0181  */
    @Override // com.bytedance.sdk.adnet.face.AbstractC4248b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.adnet.core.C4211i mo36063a(com.bytedance.sdk.adnet.core.Request<?> r11) throws com.bytedance.sdk.adnet.err.VAdError {
        /*
            Method dump skipped, instructions count: 935
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.core.C4196a.mo36063a(com.bytedance.sdk.adnet.core.Request):com.bytedance.sdk.adnet.core.i");
    }

    /* renamed from: a */
    protected byte[] m36190a(Request<?> request, HttpResponse httpResponse) throws IOException, C4244f {
        if (request instanceof C4164c) {
            return ((C4164c) request).m36270a(httpResponse);
        }
        InputStream content = httpResponse.getContent();
        return content != null ? m36188a(content, httpResponse.getContentLength()) : new byte[0];
    }
}
