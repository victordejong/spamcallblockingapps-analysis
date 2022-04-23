package com.lidroid.xutils.http;

import android.text.TextUtils;
import com.lidroid.xutils.cache.LruMemoryCache;
import com.lidroid.xutils.http.client.HttpRequest;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/HttpCache.class */
public class HttpCache {
    private static final int DEFAULT_CACHE_SIZE = 102400;
    private static final long DEFAULT_EXPIRY_TIME = 60000;
    private static long defaultExpiryTime = 60000;
    private static final ConcurrentHashMap<String, Boolean> httpMethod_enabled_map;
    private int cacheSize;
    private final LruMemoryCache<String, String> mMemoryCache;

    static {
        ConcurrentHashMap<String, Boolean> concurrentHashMap = new ConcurrentHashMap<>(10);
        httpMethod_enabled_map = concurrentHashMap;
        concurrentHashMap.put(HttpRequest.HttpMethod.GET.toString(), Boolean.TRUE);
    }

    public HttpCache() {
        this(DEFAULT_CACHE_SIZE, DEFAULT_EXPIRY_TIME);
    }

    public HttpCache(int i, long j) {
        this.cacheSize = DEFAULT_CACHE_SIZE;
        this.cacheSize = i;
        defaultExpiryTime = j;
        this.mMemoryCache = new LruMemoryCache<String, String>(i) { // from class: com.lidroid.xutils.http.HttpCache.1
            /* JADX INFO: Access modifiers changed from: protected */
            public int sizeOf(String str, String str2) {
                if (str2 == null) {
                    return 0;
                }
                return str2.length();
            }
        };
    }

    public static long getDefaultExpiryTime() {
        return defaultExpiryTime;
    }

    public static void setDefaultExpiryTime(long j) {
        defaultExpiryTime = j;
    }

    public void clear() {
        this.mMemoryCache.evictAll();
    }

    public String get(String str) {
        return str != null ? this.mMemoryCache.get(str) : null;
    }

    public boolean isEnabled(HttpRequest.HttpMethod httpMethod) {
        boolean z = false;
        if (httpMethod == null) {
            return false;
        }
        Boolean bool = httpMethod_enabled_map.get(httpMethod.toString());
        if (bool != null) {
            z = bool.booleanValue();
        }
        return z;
    }

    public boolean isEnabled(String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Boolean bool = httpMethod_enabled_map.get(str.toUpperCase());
        if (bool != null) {
            z = bool.booleanValue();
        }
        return z;
    }

    public void put(String str, String str2) {
        put(str, str2, defaultExpiryTime);
    }

    public void put(String str, String str2, long j) {
        if (str != null && str2 != null && j >= 1) {
            this.mMemoryCache.put(str, str2, System.currentTimeMillis() + j);
        }
    }

    public void setCacheSize(int i) {
        this.mMemoryCache.setMaxSize(i);
    }

    public void setEnabled(HttpRequest.HttpMethod httpMethod, boolean z) {
        httpMethod_enabled_map.put(httpMethod.toString(), Boolean.valueOf(z));
    }
}
