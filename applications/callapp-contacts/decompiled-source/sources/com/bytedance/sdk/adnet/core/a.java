package com.bytedance.sdk.adnet.core;

import com.bytedance.sdk.adnet.d.c;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.err.f;
import com.bytedance.sdk.adnet.face.IHttpStack;
import com.bytedance.sdk.adnet.face.a;
import com.bytedance.sdk.adnet.face.b;
import com.bytedance.sdk.adnet.face.d;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/a.class */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    protected static final boolean f8280a = o.f8336a;

    /* renamed from: b  reason: collision with root package name */
    protected final IHttpStack f8281b;

    /* renamed from: c  reason: collision with root package name */
    protected final b f8282c;

    public a(IHttpStack iHttpStack) {
        this(iHttpStack, new b(4096));
    }

    public a(IHttpStack iHttpStack, b bVar) {
        this.f8281b = iHttpStack;
        this.f8282c = bVar;
    }

    private static List<Header> a(List<Header> list, a.C0159a aVar) {
        ArrayList arrayList = new ArrayList();
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (list != null && !list.isEmpty()) {
            for (Header header : list) {
                treeSet.add(header.getName());
                arrayList.add(header);
            }
        }
        if (aVar != null) {
            if (aVar.i != null) {
                if (!aVar.i.isEmpty()) {
                    for (Header header2 : aVar.i) {
                        if (!treeSet.contains(header2.getName())) {
                            arrayList.add(header2);
                        }
                    }
                }
            } else if (!aVar.h.isEmpty()) {
                for (Map.Entry<String, String> entry : aVar.h.entrySet()) {
                    if (!treeSet.contains(entry.getKey())) {
                        arrayList.add(new Header(entry.getKey(), entry.getValue()));
                    }
                }
            }
        }
        return arrayList;
    }

    private Map<String, String> a(a.C0159a aVar) {
        if (aVar == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        if (aVar.f8364c != null) {
            hashMap.put("If-None-Match", aVar.f8364c);
        }
        if (aVar.e > 0) {
            hashMap.put("If-Modified-Since", c.a(aVar.e));
        }
        return hashMap;
    }

    private void a(long j, Request<?> request, byte[] bArr, int i) {
        if (f8280a || j > 3000) {
            o.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", request, Long.valueOf(j), bArr != null ? Integer.valueOf(bArr.length) : JsonReaderKt.NULL, Integer.valueOf(i), Integer.valueOf(request.getRetryPolicy().b()));
        }
    }

    private static void a(String str, Request<?> request, VAdError vAdError) throws VAdError {
        d retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.a(vAdError);
            request.addMarker(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(timeoutMs)));
        } catch (VAdError e) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(timeoutMs)));
            throw e;
        }
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x00ac: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:34:0x00a8 */
    private byte[] a(InputStream inputStream, int i) throws IOException, f {
        byte[] bArr;
        c cVar = new c(this.f8282c, i);
        try {
            if (inputStream != null) {
                byte[] a2 = this.f8282c.a(1024);
                while (true) {
                    int read = inputStream.read(a2);
                    if (read == -1) {
                        break;
                    }
                    cVar.write(a2, 0, read);
                }
                byte[] byteArray = cVar.toByteArray();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        o.a("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.f8282c.a(a2);
                cVar.close();
                return byteArray;
            }
            throw new f(606);
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    o.a("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f8282c.a(bArr);
            cVar.close();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0278, code lost:
        throw new com.bytedance.sdk.adnet.err.f(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x012d, code lost:
        throw new java.io.IOException();
     */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0376 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x02d7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0181  */
    @Override // com.bytedance.sdk.adnet.face.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.adnet.core.i a(com.bytedance.sdk.adnet.core.Request<?> r11) throws com.bytedance.sdk.adnet.err.VAdError {
        /*
            Method dump skipped, instructions count: 935
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.core.a.a(com.bytedance.sdk.adnet.core.Request):com.bytedance.sdk.adnet.core.i");
    }

    protected byte[] a(Request<?> request, HttpResponse httpResponse) throws IOException, f {
        if (request instanceof com.bytedance.sdk.adnet.b.c) {
            return ((com.bytedance.sdk.adnet.b.c) request).a(httpResponse);
        }
        InputStream content = httpResponse.getContent();
        return content != null ? a(content, httpResponse.getContentLength()) : new byte[0];
    }
}
