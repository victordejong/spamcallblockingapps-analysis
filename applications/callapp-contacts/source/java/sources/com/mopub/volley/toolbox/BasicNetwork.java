package com.mopub.volley.toolbox;

import android.os.SystemClock;
import com.mopub.volley.AuthFailureError;
import com.mopub.volley.Cache;
import com.mopub.volley.ClientError;
import com.mopub.volley.Header;
import com.mopub.volley.Network;
import com.mopub.volley.NetworkError;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.NoConnectionError;
import com.mopub.volley.Request;
import com.mopub.volley.RetryPolicy;
import com.mopub.volley.ServerError;
import com.mopub.volley.TimeoutError;
import com.mopub.volley.VolleyError;
import com.mopub.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/BasicNetwork.class */
public class BasicNetwork implements Network {

    /* renamed from: a */
    protected static final boolean f60397a = VolleyLog.DEBUG;

    /* renamed from: b */
    protected final ByteArrayPool f60398b;

    /* renamed from: c */
    private final BaseHttpStack f60399c;

    public BasicNetwork(BaseHttpStack baseHttpStack) {
        this(baseHttpStack, new ByteArrayPool(4096));
    }

    public BasicNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.f60399c = baseHttpStack;
        this.f60398b = byteArrayPool;
    }

    /* renamed from: a */
    private static List<Header> m6023a(List<Header> list, Cache.Entry entry) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            for (Header header : list) {
                treeSet.add(header.getName());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        if (entry.allResponseHeaders != null) {
            if (!entry.allResponseHeaders.isEmpty()) {
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

    /* renamed from: a */
    private static void m6024a(String str, Request<?> request, VolleyError volleyError) throws VolleyError {
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

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x00a9: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:34:0x00a5 */
    /* renamed from: a */
    private byte[] m6025a(InputStream inputStream, int i) throws IOException, ServerError {
        byte[] bArr;
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(this.f60398b, i);
        try {
            if (inputStream == null) {
                throw new ServerError();
            }
            byte[] buf = this.f60398b.getBuf(1024);
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
                    VolleyLog.m6026v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f60398b.returnBuf(buf);
            poolingByteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    VolleyLog.m6026v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f60398b.returnBuf(bArr);
            poolingByteArrayOutputStream.close();
            throw th;
        }
    }

    @Override // com.mopub.volley.Network
    public NetworkResponse performRequest(Request<?> request) throws VolleyError {
        IOException iOException;
        List list;
        HttpResponse httpResponse;
        byte[] bArr;
        Map<String, String> map;
        HttpResponse executeRequest;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            List emptyList = Collections.emptyList();
            try {
                try {
                    Cache.Entry cacheEntry = request.getCacheEntry();
                    if (cacheEntry == null) {
                        map = Collections.emptyMap();
                    } else {
                        map = new HashMap<>();
                        if (cacheEntry.etag != null) {
                            map.put("If-None-Match", cacheEntry.etag);
                        }
                        if (cacheEntry.lastModified > 0) {
                            map.put("If-Modified-Since", HttpHeaderParser.m6002a(cacheEntry.lastModified));
                        }
                    }
                    executeRequest = this.f60399c.executeRequest(request, map);
                    list = emptyList;
                } catch (IOException e) {
                    list = emptyList;
                    bArr = null;
                    httpResponse = null;
                    iOException = e;
                }
                try {
                    int statusCode = executeRequest.getStatusCode();
                    List<Header> headers = executeRequest.getHeaders();
                    if (statusCode == 304) {
                        Cache.Entry cacheEntry2 = request.getCacheEntry();
                        return cacheEntry2 == null ? new NetworkResponse(304, (byte[]) null, true, SystemClock.elapsedRealtime() - elapsedRealtime, headers) : new NetworkResponse(304, cacheEntry2.data, true, SystemClock.elapsedRealtime() - elapsedRealtime, m6023a(headers, cacheEntry2));
                    }
                    InputStream content = executeRequest.getContent();
                    byte[] m6025a = content != null ? m6025a(content, executeRequest.getContentLength()) : new byte[0];
                    long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                    if (f60397a || elapsedRealtime2 > 3000) {
                        VolleyLog.m6029d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", request, Long.valueOf(elapsedRealtime2), m6025a != null ? Integer.valueOf(m6025a.length) : JsonReaderKt.NULL, Integer.valueOf(statusCode), Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount()));
                    }
                    if (statusCode >= 200 && statusCode <= 299) {
                        return new NetworkResponse(statusCode, m6025a, false, SystemClock.elapsedRealtime() - elapsedRealtime, headers);
                    }
                    throw new IOException();
                } catch (IOException e2) {
                    httpResponse = executeRequest;
                    iOException = e2;
                    bArr = null;
                    if (httpResponse == null) {
                        throw new NoConnectionError(iOException);
                    }
                    int statusCode2 = httpResponse.getStatusCode();
                    VolleyLog.m6028e("Unexpected response code %d for %s", Integer.valueOf(statusCode2), request.getUrl());
                    if (bArr != null) {
                        NetworkResponse networkResponse = new NetworkResponse(statusCode2, bArr, false, SystemClock.elapsedRealtime() - elapsedRealtime, (List<Header>) list);
                        if (statusCode2 == 401 || statusCode2 == 403) {
                            m6024a("auth", request, new AuthFailureError(networkResponse));
                        } else if (statusCode2 >= 400 && statusCode2 <= 499) {
                            throw new ClientError(networkResponse);
                        } else {
                            if (statusCode2 < 500 || statusCode2 > 599) {
                                throw new ServerError(networkResponse);
                            }
                            if (!request.shouldRetryServerErrors()) {
                                throw new ServerError(networkResponse);
                            }
                            m6024a("server", request, new ServerError(networkResponse));
                        }
                    } else {
                        m6024a("network", request, new NetworkError());
                    }
                }
            } catch (MalformedURLException e3) {
                throw new RuntimeException("Bad URL " + request.getUrl(), e3);
            } catch (SocketTimeoutException e4) {
                m6024a("socket", request, new TimeoutError());
            }
        }
    }
}
