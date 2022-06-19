package com.mopub.volley.toolbox;

import com.mopub.volley.Cache;
import com.mopub.volley.Header;
import com.mopub.volley.Network;
import com.mopub.volley.Request;
import com.mopub.volley.RetryPolicy;
import com.mopub.volley.ServerError;
import com.mopub.volley.VolleyError;
import com.mopub.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/BasicNetwork.class */
public class BasicNetwork implements Network {

    /* renamed from: c */
    public static final boolean f5508c = VolleyLog.DEBUG;

    /* renamed from: a */
    public final BaseHttpStack f5509a;

    /* renamed from: b */
    public final ByteArrayPool f5510b;

    public BasicNetwork(BaseHttpStack baseHttpStack) {
        this(baseHttpStack, new ByteArrayPool(4096));
    }

    public BasicNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.f5509a = baseHttpStack;
        this.f5510b = byteArrayPool;
    }

    /* renamed from: a */
    public static void m3151a(String str, Request<?> request, VolleyError volleyError) {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.retry(volleyError);
            request.addMarker(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(timeoutMs)));
        } catch (VolleyError e) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(timeoutMs)));
            throw e;
        }
    }

    /* renamed from: b */
    public static List<Header> m3150b(List<Header> list, Cache.Entry entry) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            for (Header header : list) {
                treeSet.add(header.getName());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<Header> list2 = entry.allResponseHeaders;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (Header header2 : entry.allResponseHeaders) {
                    if (!treeSet.contains(header2.getName())) {
                        arrayList.add(header2);
                    }
                }
            }
        } else if (!entry.responseHeaders.isEmpty()) {
            for (Map.Entry<String, String> entry2 : entry.responseHeaders.entrySet()) {
                if (!treeSet.contains(entry2.getKey())) {
                    arrayList.add(new Header(entry2.getKey(), entry2.getValue()));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public final Map<String, String> m3149c(Cache.Entry entry) {
        if (entry == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        String str = entry.etag;
        if (str != null) {
            hashMap.put("If-None-Match", str);
        }
        long j = entry.lastModified;
        if (j > 0) {
            hashMap.put("If-Modified-Since", HttpHeaderParser.m3124a(j));
        }
        return hashMap;
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x00a9: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:34:0x00a5 */
    /* renamed from: d */
    public final byte[] m3148d(InputStream inputStream, int i) {
        byte[] bArr;
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(this.f5510b, i);
        try {
            if (inputStream == null) {
                throw new ServerError();
            }
            byte[] buf = this.f5510b.getBuf(1024);
            while (true) {
                int read = inputStream.read(buf);
                if (read == -1) {
                    break;
                }
                poolingByteArrayOutputStream.write(buf, 0, read);
            }
            byte[] byteArray = poolingByteArrayOutputStream.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    VolleyLog.m3153v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f5510b.returnBuf(buf);
            poolingByteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    VolleyLog.m3153v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f5510b.returnBuf(bArr);
            poolingByteArrayOutputStream.close();
            throw th;
        }
    }

    /* renamed from: e */
    public final void m3147e(long j, Request<?> request, byte[] bArr, int i) {
        if (f5508c || j > 3000) {
            VolleyLog.m3156d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", request, Long.valueOf(j), bArr != null ? Integer.valueOf(bArr.length) : "null", Integer.valueOf(i), Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00fb, code lost:
        throw new java.io.IOException();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x021d A[SYNTHETIC] */
    @Override // com.mopub.volley.Network
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mopub.volley.NetworkResponse performRequest(com.mopub.volley.Request<?> r11) {
        /*
            Method dump skipped, instructions count: 623
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.BasicNetwork.performRequest(com.mopub.volley.Request):com.mopub.volley.NetworkResponse");
    }
}
