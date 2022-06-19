package com.yanzhenjie.nohttp;

import android.content.Context;
import com.yanzhenjie.nohttp.cache.CacheEntity;
import com.yanzhenjie.nohttp.cache.DBCacheStore;
import com.yanzhenjie.nohttp.cookie.DBCookieStore;
import com.yanzhenjie.nohttp.rest.Interceptor;
import com.yanzhenjie.nohttp.ssl.SSLUtils;
import com.yanzhenjie.nohttp.tools.CacheStore;
import com.yanzhenjie.nohttp.tools.LinkedMultiValueMap;
import com.yanzhenjie.nohttp.tools.MultiValueMap;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.CookieStore;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/InitializationConfig.class */
public final class InitializationConfig {
    private CacheStore<CacheEntity> mCacheStore;
    private int mConnectTimeout;
    private Context mContext;
    private CookieManager mCookieManager;
    private CookieStore mCookieStore;
    private MultiValueMap<String, String> mHeaders;
    private HostnameVerifier mHostnameVerifier;
    private Interceptor mInterceptor;
    private NetworkExecutor mNetworkExecutor;
    private MultiValueMap<String, String> mParams;
    private int mReadTimeout;
    private int mRetryCount;
    private SSLSocketFactory mSSLSocketFactory;

    /* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/InitializationConfig$Builder.class */
    public static final class Builder {
        private CacheStore<CacheEntity> mCacheStore;
        private int mConnectTimeout;
        private Context mContext;
        private CookieStore mCookieStore;
        private MultiValueMap<String, String> mHeaders;
        private HostnameVerifier mHostnameVerifier;
        private Interceptor mInterceptor;
        private NetworkExecutor mNetworkExecutor;
        private MultiValueMap<String, String> mParams;
        private int mReadTimeout;
        private int mRetryCount;
        private SSLSocketFactory mSSLSocketFactory;

        private Builder(Context context) {
            this.mConnectTimeout = 10000;
            this.mReadTimeout = 10000;
            this.mHeaders = new LinkedMultiValueMap();
            this.mParams = new LinkedMultiValueMap();
            this.mContext = context.getApplicationContext();
        }

        public Builder addHeader(String str, String str2) {
            this.mHeaders.add((MultiValueMap<String, String>) str, str2);
            return this;
        }

        public Builder addParam(String str, String str2) {
            this.mParams.add((MultiValueMap<String, String>) str, str2);
            return this;
        }

        public InitializationConfig build() {
            return new InitializationConfig(this);
        }

        public Builder cacheStore(CacheStore<CacheEntity> cacheStore) {
            this.mCacheStore = cacheStore;
            return this;
        }

        public Builder connectionTimeout(int i) {
            this.mConnectTimeout = i;
            return this;
        }

        public Builder cookieStore(CookieStore cookieStore) {
            this.mCookieStore = cookieStore;
            return this;
        }

        public Builder hostnameVerifier(HostnameVerifier hostnameVerifier) {
            this.mHostnameVerifier = hostnameVerifier;
            return this;
        }

        public Builder interceptor(Interceptor interceptor) {
            this.mInterceptor = interceptor;
            return this;
        }

        public Builder networkExecutor(NetworkExecutor networkExecutor) {
            this.mNetworkExecutor = networkExecutor;
            return this;
        }

        public Builder readTimeout(int i) {
            this.mReadTimeout = i;
            return this;
        }

        public Builder retry(int i) {
            this.mRetryCount = i;
            return this;
        }

        public Builder sslSocketFactory(SSLSocketFactory sSLSocketFactory) {
            this.mSSLSocketFactory = sSLSocketFactory;
            return this;
        }
    }

    private InitializationConfig(Builder builder) {
        this.mContext = builder.mContext;
        this.mConnectTimeout = builder.mConnectTimeout;
        this.mReadTimeout = builder.mReadTimeout;
        this.mRetryCount = builder.mRetryCount;
        SSLSocketFactory sSLSocketFactory = builder.mSSLSocketFactory;
        this.mSSLSocketFactory = sSLSocketFactory;
        if (sSLSocketFactory == null) {
            this.mSSLSocketFactory = SSLUtils.defaultSSLSocketFactory();
        }
        HostnameVerifier hostnameVerifier = builder.mHostnameVerifier;
        this.mHostnameVerifier = hostnameVerifier;
        if (hostnameVerifier == null) {
            this.mHostnameVerifier = SSLUtils.defaultHostnameVerifier();
        }
        this.mHeaders = builder.mHeaders;
        this.mParams = builder.mParams;
        CookieStore cookieStore = builder.mCookieStore;
        this.mCookieStore = cookieStore;
        if (cookieStore == null) {
            this.mCookieStore = new DBCookieStore(this.mContext);
        }
        this.mCookieManager = new CookieManager(this.mCookieStore, CookiePolicy.ACCEPT_ALL);
        CacheStore<CacheEntity> cacheStore = builder.mCacheStore;
        this.mCacheStore = cacheStore;
        if (cacheStore == null) {
            this.mCacheStore = new DBCacheStore(this.mContext);
        }
        NetworkExecutor networkExecutor = builder.mNetworkExecutor;
        this.mNetworkExecutor = networkExecutor;
        if (networkExecutor == null) {
            this.mNetworkExecutor = new URLConnectionNetworkExecutor();
        }
        this.mInterceptor = builder.mInterceptor;
    }

    public static Builder newBuilder(Context context) {
        return new Builder(context);
    }

    public CacheStore<CacheEntity> getCacheStore() {
        return this.mCacheStore;
    }

    public int getConnectTimeout() {
        return this.mConnectTimeout;
    }

    public Context getContext() {
        return this.mContext;
    }

    public CookieManager getCookieManager() {
        return this.mCookieManager;
    }

    public CookieStore getCookieStore() {
        return this.mCookieStore;
    }

    public MultiValueMap<String, String> getHeaders() {
        return this.mHeaders;
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.mHostnameVerifier;
    }

    public Interceptor getInterceptor() {
        return this.mInterceptor;
    }

    public NetworkExecutor getNetworkExecutor() {
        return this.mNetworkExecutor;
    }

    public MultiValueMap<String, String> getParams() {
        return this.mParams;
    }

    public int getReadTimeout() {
        return this.mReadTimeout;
    }

    public int getRetryCount() {
        return this.mRetryCount;
    }

    public SSLSocketFactory getSSLSocketFactory() {
        return this.mSSLSocketFactory;
    }
}
