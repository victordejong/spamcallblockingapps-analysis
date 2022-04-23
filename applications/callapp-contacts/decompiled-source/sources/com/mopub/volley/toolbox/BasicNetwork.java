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

    /* renamed from: a  reason: collision with root package name */
    protected static final boolean f34816a = VolleyLog.DEBUG;

    /* renamed from: b  reason: collision with root package name */
    protected final ByteArrayPool f34817b;

    /* renamed from: c  reason: collision with root package name */
    private final BaseHttpStack f34818c;

    public BasicNetwork(BaseHttpStack baseHttpStack) {
        this(baseHttpStack, new ByteArrayPool(4096));
    }

    public BasicNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.f34818c = baseHttpStack;
        this.f34817b = byteArrayPool;
    }

    private static List<Header> a(List<Header> list, Cache.Entry entry) {
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

    private static void a(String str, Request<?> request, VolleyError volleyError) throws VolleyError {
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
    private byte[] a(InputStream inputStream, int i) throws IOException, ServerError {
        byte[] bArr;
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(this.f34817b, i);
        try {
            if (inputStream != null) {
                byte[] buf = this.f34817b.getBuf(1024);
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
                        VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.f34817b.returnBuf(buf);
                poolingByteArrayOutputStream.close();
                return byteArray;
            }
            throw new ServerError();
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f34817b.returnBuf(bArr);
            poolingByteArrayOutputStream.close();
            throw th;
        }
    }

    @Override // com.mopub.volley.Network
    public NetworkResponse performRequest(Request<?> request) throws VolleyError {
        IOException e;
        List list;
        Map<String, String> map;
        HttpResponse executeRequest;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            List emptyList = Collections.emptyList();
            HttpResponse httpResponse = null;
            byte[] bArr = null;
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
                            map.put("If-Modified-Since", HttpHeaderParser.a(cacheEntry.lastModified));
                        }
                    }
                    executeRequest = this.f34818c.executeRequest(request, map);
                    list = emptyList;
                } catch (IOException e2) {
                    e = e2;
                    list = emptyList;
                    bArr = null;
                }
                try {
                    int statusCode = executeRequest.getStatusCode();
                    List<Header> headers = executeRequest.getHeaders();
                    if (statusCode == 304) {
                        Cache.Entry cacheEntry2 = request.getCacheEntry();
                        return cacheEntry2 == null ? new NetworkResponse(304, (byte[]) null, true, SystemClock.elapsedRealtime() - elapsedRealtime, headers) : new NetworkResponse(304, cacheEntry2.data, true, SystemClock.elapsedRealtime() - elapsedRealtime, a(headers, cacheEntry2));
                    }
                    InputStream content = executeRequest.getContent();
                    byte[] a2 = content != null ? a(content, executeRequest.getContentLength()) : new byte[0];
                    long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                    if (f34816a || elapsedRealtime2 > 3000) {
                        VolleyLog.d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", request, Long.valueOf(elapsedRealtime2), a2 != null ? Integer.valueOf(a2.length) : JsonReaderKt.NULL, Integer.valueOf(statusCode), Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount()));
                    }
                    if (statusCode >= 200 && statusCode <= 299) {
                        return new NetworkResponse(statusCode, a2, false, SystemClock.elapsedRealtime() - elapsedRealtime, headers);
                    }
                    throw new IOException();
                } catch (IOException e3) {
                    e = e3;
                    httpResponse = executeRequest;
                    if (httpResponse != null) {
                        int statusCode2 = httpResponse.getStatusCode();
                        VolleyLog.e("Unexpected response code %d for %s", Integer.valueOf(statusCode2), request.getUrl());
                        if (bArr != null) {
                            NetworkResponse networkResponse = new NetworkResponse(statusCode2, bArr, false, SystemClock.elapsedRealtime() - elapsedRealtime, (List<Header>) list);
                            if (statusCode2 == 401 || statusCode2 == 403) {
                                a("auth", request, new AuthFailureError(networkResponse));
                            } else if (statusCode2 >= 400 && statusCode2 <= 499) {
                                throw new ClientError(networkResponse);
                            } else if (statusCode2 < 500 || statusCode2 > 599) {
                                throw new ServerError(networkResponse);
                            } else if (request.shouldRetryServerErrors()) {
                                a("server", request, new ServerError(networkResponse));
                            } else {
                                throw new ServerError(networkResponse);
                            }
                        } else {
                            a("network", request, new NetworkError());
                        }
                    } else {
                        throw new NoConnectionError(e);
                    }
                }
            } catch (MalformedURLException e4) {
                throw new RuntimeException("Bad URL " + request.getUrl(), e4);
            } catch (SocketTimeoutException e5) {
                a("socket", request, new TimeoutError());
            }
        }
    }
}
