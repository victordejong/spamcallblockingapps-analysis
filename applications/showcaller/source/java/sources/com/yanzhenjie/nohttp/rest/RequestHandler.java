package com.yanzhenjie.nohttp.rest;

import android.os.SystemClock;
import com.yanzhenjie.nohttp.BasicRequest;
import com.yanzhenjie.nohttp.Connection;
import com.yanzhenjie.nohttp.Headers;
import com.yanzhenjie.nohttp.HttpConnection;
import com.yanzhenjie.nohttp.NetworkExecutor;
import com.yanzhenjie.nohttp.cache.CacheEntity;
import com.yanzhenjie.nohttp.error.NotFoundCacheError;
import com.yanzhenjie.nohttp.tools.CacheStore;
import com.yanzhenjie.nohttp.tools.HeaderUtils;
import com.yanzhenjie.nohttp.tools.IOUtils;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/RequestHandler.class */
public class RequestHandler {
    private CacheStore<CacheEntity> mCacheStore;
    private HttpConnection mHttpConnection;
    private Interceptor mInterceptor;

    /* renamed from: com.yanzhenjie.nohttp.rest.RequestHandler$1 */
    /* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/RequestHandler$1.class */
    public static /* synthetic */ class C94361 {
        static final /* synthetic */ int[] $SwitchMap$com$yanzhenjie$nohttp$rest$CacheMode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[CacheMode.values().length];
            $SwitchMap$com$yanzhenjie$nohttp$rest$CacheMode = iArr;
            try {
                iArr[CacheMode.ONLY_READ_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$yanzhenjie$nohttp$rest$CacheMode[CacheMode.ONLY_REQUEST_NETWORK.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$yanzhenjie$nohttp$rest$CacheMode[CacheMode.NONE_CACHE_REQUEST_NETWORK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$yanzhenjie$nohttp$rest$CacheMode[CacheMode.REQUEST_NETWORK_FAILED_READ_CACHE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$yanzhenjie$nohttp$rest$CacheMode[CacheMode.DEFAULT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/RequestHandler$Protocol.class */
    public static class Protocol {
        private byte[] body;
        private Exception exception;
        private boolean fromCache;
        private Headers headers;

        private Protocol() {
        }

        /* synthetic */ Protocol(C94361 c94361) {
            this();
        }
    }

    public RequestHandler(CacheStore<CacheEntity> cacheStore, HttpConnection httpConnection) {
        this.mCacheStore = cacheStore;
        this.mHttpConnection = httpConnection;
    }

    public RequestHandler(CacheStore<CacheEntity> cacheStore, NetworkExecutor networkExecutor) {
        this(cacheStore, new HttpConnection(networkExecutor));
    }

    public RequestHandler(CacheStore<CacheEntity> cacheStore, NetworkExecutor networkExecutor, Interceptor interceptor) {
        this.mCacheStore = cacheStore;
        this.mHttpConnection = new HttpConnection(networkExecutor);
        this.mInterceptor = interceptor;
    }

    private Protocol getHttpProtocol(BasicRequest<?> basicRequest) {
        Protocol protocol = new Protocol(null);
        Connection connection = this.mHttpConnection.getConnection(basicRequest);
        protocol.headers = connection.responseHeaders();
        protocol.exception = connection.exception();
        if (protocol.exception == null && connection.serverStream() != null) {
            try {
                protocol.body = IOUtils.toByteArray(connection.serverStream());
            } catch (IOException e) {
                protocol.exception = e;
            }
        }
        IOUtils.closeQuietly(connection);
        return protocol;
    }

    private void handleCache(String str, CacheMode cacheMode, CacheEntity cacheEntity, Protocol protocol) {
        if (protocol.exception == null) {
            if (protocol.headers.getResponseCode() == 304) {
                if (cacheEntity == null) {
                    return;
                }
                protocol.fromCache = true;
                protocol.headers = cacheEntity.getResponseHeaders();
                protocol.headers.set((Headers) Headers.HEAD_KEY_RESPONSE_CODE, "304");
                protocol.body = cacheEntity.getData();
            } else if (cacheEntity != null) {
                if (protocol.fromCache) {
                    return;
                }
                cacheEntity.setLocalExpire(HeaderUtils.getLocalExpires(protocol.headers));
                cacheEntity.getResponseHeaders().setAll(protocol.headers);
                cacheEntity.setData(protocol.body);
                this.mCacheStore.replace(str, cacheEntity);
            } else {
                int i = C94361.$SwitchMap$com$yanzhenjie$nohttp$rest$CacheMode[cacheMode.ordinal()];
                if (i == 3 || i == 4) {
                    long localExpires = HeaderUtils.getLocalExpires(protocol.headers);
                    CacheEntity cacheEntity2 = new CacheEntity();
                    cacheEntity2.setResponseHeaders(protocol.headers);
                    cacheEntity2.setData(protocol.body);
                    cacheEntity2.setLocalExpire(localExpires);
                    this.mCacheStore.replace(str, cacheEntity2);
                } else if (i != 5) {
                } else {
                    long localExpires2 = HeaderUtils.getLocalExpires(protocol.headers);
                    long lastModified = protocol.headers.getLastModified();
                    if (localExpires2 <= 0 && lastModified <= 0) {
                        return;
                    }
                    CacheEntity cacheEntity3 = new CacheEntity();
                    cacheEntity3.setResponseHeaders(protocol.headers);
                    cacheEntity3.setData(protocol.body);
                    cacheEntity3.setLocalExpire(localExpires2);
                    this.mCacheStore.replace(str, cacheEntity3);
                }
            }
        }
    }

    private Protocol requestCacheOrNetwork(CacheMode cacheMode, CacheEntity cacheEntity, Request<?> request) {
        int i = C94361.$SwitchMap$com$yanzhenjie$nohttp$rest$CacheMode[cacheMode.ordinal()];
        Protocol protocol = null;
        if (i == 1) {
            protocol = new Protocol(null);
            if (cacheEntity == null) {
                protocol.exception = new NotFoundCacheError("The cache mode is ONLY_READ_CACHE, but did not find the cache.");
            } else {
                protocol.headers = cacheEntity.getResponseHeaders();
                protocol.body = cacheEntity.getData();
                protocol.fromCache = true;
            }
        } else if (i == 2) {
            protocol = getHttpProtocol(request);
        } else if (i != 3) {
            if (i == 4) {
                setRequestCacheHeader(request, cacheEntity);
                Protocol httpProtocol = getHttpProtocol(request);
                protocol = httpProtocol;
                if (httpProtocol.exception != null) {
                    protocol = httpProtocol;
                    if (cacheEntity != null) {
                        httpProtocol.headers = cacheEntity.getResponseHeaders();
                        httpProtocol.body = cacheEntity.getData();
                        httpProtocol.fromCache = true;
                        httpProtocol.exception = null;
                        protocol = httpProtocol;
                    }
                }
            } else if (i == 5) {
                if (cacheEntity == null || cacheEntity.getLocalExpire() <= System.currentTimeMillis()) {
                    setRequestCacheHeader(request, cacheEntity);
                    protocol = getHttpProtocol(request);
                } else {
                    protocol = new Protocol(null);
                    protocol.headers = cacheEntity.getResponseHeaders();
                    protocol.body = cacheEntity.getData();
                    protocol.fromCache = true;
                }
            }
        } else if (cacheEntity != null) {
            protocol = new Protocol(null);
            protocol.headers = cacheEntity.getResponseHeaders();
            protocol.body = cacheEntity.getData();
            protocol.fromCache = true;
        } else {
            protocol = getHttpProtocol(request);
        }
        return protocol;
    }

    private void setRequestCacheHeader(BasicRequest<?> basicRequest, CacheEntity cacheEntity) {
        if (cacheEntity == null) {
            basicRequest.getHeaders().remove(Headers.HEAD_KEY_IF_NONE_MATCH);
            basicRequest.getHeaders().remove(Headers.HEAD_KEY_IF_MODIFIED_SINCE);
            return;
        }
        Headers responseHeaders = cacheEntity.getResponseHeaders();
        String eTag = responseHeaders.getETag();
        if (eTag != null) {
            basicRequest.getHeaders().set((Headers) Headers.HEAD_KEY_IF_NONE_MATCH, eTag);
        }
        long lastModified = responseHeaders.getLastModified();
        if (lastModified <= 0) {
            return;
        }
        basicRequest.getHeaders().set((Headers) Headers.HEAD_KEY_IF_MODIFIED_SINCE, HeaderUtils.formatMillisToGMT(lastModified));
    }

    public <T> Response<T> handle(Request<T> request) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.mInterceptor != null) {
            return this.mInterceptor.intercept(new RequestHandler(this.mCacheStore, this.mHttpConnection), request);
        }
        String cacheKey = request.getCacheKey();
        CacheMode cacheMode = request.getCacheMode();
        CacheEntity cacheEntity = this.mCacheStore.get(cacheKey);
        Protocol requestCacheOrNetwork = requestCacheOrNetwork(cacheMode, cacheEntity, request);
        handleCache(cacheKey, cacheMode, cacheEntity, requestCacheOrNetwork);
        T t = null;
        if (requestCacheOrNetwork.exception == null) {
            try {
                t = request.parseResponse(requestCacheOrNetwork.headers, requestCacheOrNetwork.body);
            } catch (Exception e) {
                requestCacheOrNetwork.exception = e;
                t = null;
            }
        }
        return new RestResponse(request, requestCacheOrNetwork.fromCache, requestCacheOrNetwork.headers, t, SystemClock.elapsedRealtime() - elapsedRealtime, requestCacheOrNetwork.exception);
    }
}
