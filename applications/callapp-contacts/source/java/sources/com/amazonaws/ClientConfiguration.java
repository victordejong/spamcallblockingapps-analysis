package com.amazonaws;

import com.amazonaws.retry.PredefinedRetryPolicies;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.util.VersionInfoUtils;
import java.net.InetAddress;
import javax.net.ssl.TrustManager;
/* loaded from: classes-dex2jar.jar:com/amazonaws/ClientConfiguration.class */
public class ClientConfiguration {
    public static final int DEFAULT_CONNECTION_TIMEOUT = 15000;
    public static final int DEFAULT_MAX_CONNECTIONS = 10;
    public static final int DEFAULT_SOCKET_TIMEOUT = 15000;
    private int connectionTimeout;
    private boolean curlLogging;
    private boolean enableGzip;
    private InetAddress localAddress;
    private int maxConnections;
    private int maxErrorRetry;
    private boolean preemptiveBasicProxyAuth;
    private Protocol protocol;
    @Deprecated
    private String proxyDomain;
    private String proxyHost;
    private String proxyPassword;
    private int proxyPort;
    private String proxyUsername;
    @Deprecated
    private String proxyWorkstation;
    private RetryPolicy retryPolicy;
    private String signerOverride;
    private int socketReceiveBufferSizeHint;
    private int socketSendBufferSizeHint;
    private int socketTimeout;
    private TrustManager trustManager;
    private String userAgent;
    private String userAgentOverride;
    public static final String DEFAULT_USER_AGENT = VersionInfoUtils.m38210b();
    public static final RetryPolicy DEFAULT_RETRY_POLICY = PredefinedRetryPolicies.f12276b;

    public ClientConfiguration() {
        this.userAgent = DEFAULT_USER_AGENT;
        this.maxErrorRetry = -1;
        this.retryPolicy = DEFAULT_RETRY_POLICY;
        this.protocol = Protocol.HTTPS;
        this.proxyHost = null;
        this.proxyPort = -1;
        this.proxyUsername = null;
        this.proxyPassword = null;
        this.proxyDomain = null;
        this.proxyWorkstation = null;
        this.maxConnections = 10;
        this.socketTimeout = 15000;
        this.connectionTimeout = 15000;
        this.socketSendBufferSizeHint = 0;
        this.socketReceiveBufferSizeHint = 0;
        this.trustManager = null;
        this.curlLogging = false;
        this.enableGzip = false;
    }

    public ClientConfiguration(ClientConfiguration clientConfiguration) {
        this.userAgent = DEFAULT_USER_AGENT;
        this.maxErrorRetry = -1;
        this.retryPolicy = DEFAULT_RETRY_POLICY;
        this.protocol = Protocol.HTTPS;
        this.proxyHost = null;
        this.proxyPort = -1;
        this.proxyUsername = null;
        this.proxyPassword = null;
        this.proxyDomain = null;
        this.proxyWorkstation = null;
        this.maxConnections = 10;
        this.socketTimeout = 15000;
        this.connectionTimeout = 15000;
        this.socketSendBufferSizeHint = 0;
        this.socketReceiveBufferSizeHint = 0;
        this.trustManager = null;
        this.curlLogging = false;
        this.enableGzip = false;
        this.connectionTimeout = clientConfiguration.connectionTimeout;
        this.maxConnections = clientConfiguration.maxConnections;
        this.maxErrorRetry = clientConfiguration.maxErrorRetry;
        this.retryPolicy = clientConfiguration.retryPolicy;
        this.localAddress = clientConfiguration.localAddress;
        this.protocol = clientConfiguration.protocol;
        this.proxyDomain = clientConfiguration.proxyDomain;
        this.proxyHost = clientConfiguration.proxyHost;
        this.proxyPassword = clientConfiguration.proxyPassword;
        this.proxyPort = clientConfiguration.proxyPort;
        this.proxyUsername = clientConfiguration.proxyUsername;
        this.proxyWorkstation = clientConfiguration.proxyWorkstation;
        this.preemptiveBasicProxyAuth = clientConfiguration.preemptiveBasicProxyAuth;
        this.socketTimeout = clientConfiguration.socketTimeout;
        this.userAgent = clientConfiguration.userAgent;
        this.userAgentOverride = clientConfiguration.userAgentOverride;
        this.socketReceiveBufferSizeHint = clientConfiguration.socketReceiveBufferSizeHint;
        this.socketSendBufferSizeHint = clientConfiguration.socketSendBufferSizeHint;
        this.signerOverride = clientConfiguration.signerOverride;
        this.trustManager = clientConfiguration.trustManager;
        this.curlLogging = clientConfiguration.curlLogging;
        this.enableGzip = clientConfiguration.enableGzip;
    }

    public int getConnectionTimeout() {
        return this.connectionTimeout;
    }

    public InetAddress getLocalAddress() {
        return this.localAddress;
    }

    public int getMaxConnections() {
        return this.maxConnections;
    }

    public int getMaxErrorRetry() {
        return this.maxErrorRetry;
    }

    public Protocol getProtocol() {
        return this.protocol;
    }

    @Deprecated
    public String getProxyDomain() {
        return this.proxyDomain;
    }

    public String getProxyHost() {
        return this.proxyHost;
    }

    public String getProxyPassword() {
        return this.proxyPassword;
    }

    public int getProxyPort() {
        return this.proxyPort;
    }

    public String getProxyUsername() {
        return this.proxyUsername;
    }

    public String getProxyWorkstation() {
        return this.proxyWorkstation;
    }

    public RetryPolicy getRetryPolicy() {
        return this.retryPolicy;
    }

    public String getSignerOverride() {
        return this.signerOverride;
    }

    public int[] getSocketBufferSizeHints() {
        return new int[]{this.socketSendBufferSizeHint, this.socketReceiveBufferSizeHint};
    }

    public int getSocketTimeout() {
        return this.socketTimeout;
    }

    public TrustManager getTrustManager() {
        return this.trustManager;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public String getUserAgentOverride() {
        return this.userAgentOverride;
    }

    public boolean isCurlLogging() {
        return this.curlLogging;
    }

    public boolean isEnableGzip() {
        return this.enableGzip;
    }

    public boolean isPreemptiveBasicProxyAuth() {
        return this.preemptiveBasicProxyAuth;
    }

    public void setConnectionTimeout(int i) {
        this.connectionTimeout = i;
    }

    public void setCurlLogging(boolean z) {
        this.curlLogging = z;
    }

    public void setEnableGzip(boolean z) {
        this.enableGzip = z;
    }

    public void setLocalAddress(InetAddress inetAddress) {
        this.localAddress = inetAddress;
    }

    public void setMaxConnections(int i) {
        this.maxConnections = i;
    }

    public void setMaxErrorRetry(int i) {
        if (i >= 0) {
            this.maxErrorRetry = i;
            return;
        }
        throw new IllegalArgumentException("maxErrorRetry shoud be non-negative");
    }

    public void setPreemptiveBasicProxyAuth(Boolean bool) {
        this.preemptiveBasicProxyAuth = bool.booleanValue();
    }

    public void setProtocol(Protocol protocol) {
        this.protocol = protocol;
    }

    @Deprecated
    public void setProxyDomain(String str) {
        this.proxyDomain = str;
    }

    public void setProxyHost(String str) {
        this.proxyHost = str;
    }

    public void setProxyPassword(String str) {
        this.proxyPassword = str;
    }

    public void setProxyPort(int i) {
        this.proxyPort = i;
    }

    public void setProxyUsername(String str) {
        this.proxyUsername = str;
    }

    @Deprecated
    public void setProxyWorkstation(String str) {
        this.proxyWorkstation = str;
    }

    public void setRetryPolicy(RetryPolicy retryPolicy) {
        this.retryPolicy = retryPolicy;
    }

    public void setSignerOverride(String str) {
        this.signerOverride = str;
    }

    public void setSocketBufferSizeHints(int i, int i2) {
        this.socketSendBufferSizeHint = i;
        this.socketReceiveBufferSizeHint = i2;
    }

    public void setSocketTimeout(int i) {
        this.socketTimeout = i;
    }

    public void setTrustManager(TrustManager trustManager) {
        this.trustManager = trustManager;
    }

    public void setUserAgent(String str) {
        this.userAgent = str;
    }

    public void setUserAgentOverride(String str) {
        this.userAgentOverride = str;
    }

    public ClientConfiguration withConnectionTimeout(int i) {
        setConnectionTimeout(i);
        return this;
    }

    public ClientConfiguration withCurlLogging(boolean z) {
        this.curlLogging = z;
        return this;
    }

    public ClientConfiguration withEnableGzip(boolean z) {
        setEnableGzip(z);
        return this;
    }

    public ClientConfiguration withLocalAddress(InetAddress inetAddress) {
        setLocalAddress(inetAddress);
        return this;
    }

    public ClientConfiguration withMaxConnections(int i) {
        setMaxConnections(i);
        return this;
    }

    public ClientConfiguration withMaxErrorRetry(int i) {
        setMaxErrorRetry(i);
        return this;
    }

    public ClientConfiguration withPreemptiveBasicProxyAuth(boolean z) {
        setPreemptiveBasicProxyAuth(Boolean.valueOf(z));
        return this;
    }

    public ClientConfiguration withProtocol(Protocol protocol) {
        setProtocol(protocol);
        return this;
    }

    @Deprecated
    public ClientConfiguration withProxyDomain(String str) {
        setProxyDomain(str);
        return this;
    }

    public ClientConfiguration withProxyHost(String str) {
        setProxyHost(str);
        return this;
    }

    public ClientConfiguration withProxyPassword(String str) {
        setProxyPassword(str);
        return this;
    }

    public ClientConfiguration withProxyPort(int i) {
        setProxyPort(i);
        return this;
    }

    public ClientConfiguration withProxyUsername(String str) {
        setProxyUsername(str);
        return this;
    }

    @Deprecated
    public ClientConfiguration withProxyWorkstation(String str) {
        setProxyWorkstation(str);
        return this;
    }

    public ClientConfiguration withRetryPolicy(RetryPolicy retryPolicy) {
        setRetryPolicy(retryPolicy);
        return this;
    }

    public ClientConfiguration withSignerOverride(String str) {
        setSignerOverride(str);
        return this;
    }

    public ClientConfiguration withSocketBufferSizeHints(int i, int i2) {
        setSocketBufferSizeHints(i, i2);
        return this;
    }

    public ClientConfiguration withSocketTimeout(int i) {
        setSocketTimeout(i);
        return this;
    }

    public ClientConfiguration withTrustManager(TrustManager trustManager) {
        setTrustManager(trustManager);
        return this;
    }

    public ClientConfiguration withUserAgent(String str) {
        setUserAgent(str);
        return this;
    }

    public ClientConfiguration withUserAgentOverride(String str) {
        setUserAgentOverride(str);
        return this;
    }
}
