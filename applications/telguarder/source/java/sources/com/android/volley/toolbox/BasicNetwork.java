package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.Header;
import com.android.volley.Network;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.VolleyError;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/BasicNetwork.class */
public class BasicNetwork implements Network {
    private static final int DEFAULT_POOL_SIZE = 4096;
    private final BaseHttpStack mBaseHttpStack;
    @Deprecated
    protected final HttpStack mHttpStack;
    protected final ByteArrayPool mPool;

    public BasicNetwork(BaseHttpStack baseHttpStack) {
        this(baseHttpStack, new ByteArrayPool(4096));
    }

    public BasicNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.mBaseHttpStack = baseHttpStack;
        this.mHttpStack = baseHttpStack;
        this.mPool = byteArrayPool;
    }

    @Deprecated
    public BasicNetwork(HttpStack httpStack) {
        this(httpStack, new ByteArrayPool(4096));
    }

    @Deprecated
    public BasicNetwork(HttpStack httpStack, ByteArrayPool byteArrayPool) {
        this.mHttpStack = httpStack;
        this.mBaseHttpStack = new AdaptedHttpStack(httpStack);
        this.mPool = byteArrayPool;
    }

    @Deprecated
    protected static Map<String, String> convertHeaders(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }

    @Override // com.android.volley.Network
    public NetworkResponse performRequest(Request<?> request) throws VolleyError {
        HttpResponse httpResponse;
        IOException iOException;
        byte[] bArr;
        HttpResponse executeRequest;
        int statusCode;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            try {
                executeRequest = this.mBaseHttpStack.executeRequest(request, HttpHeaderParser.getCacheHeaders(request.getCacheEntry()));
                try {
                    statusCode = executeRequest.getStatusCode();
                    break;
                } catch (IOException e) {
                    iOException = e;
                    httpResponse = executeRequest;
                    bArr = null;
                }
            } catch (IOException e2) {
                httpResponse = null;
                bArr = null;
                iOException = e2;
            }
            NetworkUtility.attemptRetryOnException(request, NetworkUtility.shouldRetryException(request, iOException, elapsedRealtime, httpResponse, bArr));
        }
        List<Header> headers = executeRequest.getHeaders();
        if (statusCode == 304) {
            return NetworkUtility.getNotModifiedNetworkResponse(request, SystemClock.elapsedRealtime() - elapsedRealtime, headers);
        }
        InputStream content = executeRequest.getContent();
        byte[] inputStreamToBytes = content != null ? NetworkUtility.inputStreamToBytes(content, executeRequest.getContentLength(), this.mPool) : new byte[0];
        byte[] bArr2 = inputStreamToBytes;
        NetworkUtility.logSlowRequests(SystemClock.elapsedRealtime() - elapsedRealtime, request, inputStreamToBytes, statusCode);
        if (statusCode >= 200 && statusCode <= 299) {
            return new NetworkResponse(statusCode, inputStreamToBytes, false, SystemClock.elapsedRealtime() - elapsedRealtime, headers);
        }
        byte[] bArr3 = inputStreamToBytes;
        byte[] bArr4 = inputStreamToBytes;
        byte[] bArr5 = inputStreamToBytes;
        throw new IOException();
    }
}
