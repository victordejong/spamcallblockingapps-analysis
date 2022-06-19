.class public final Lcom/yanzhenjie/nohttp/InitializationConfig;
.super Ljava/lang/Object;
.source "InitializationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    }
.end annotation


# instance fields
.field private mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/tools/CacheStore<",
            "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTimeout:I

.field private mContext:Landroid/content/Context;

.field private mCookieManager:Ljava/net/CookieManager;

.field private mCookieStore:Ljava/net/CookieStore;

.field private mHeaders:Lcom/yanzhenjie/nohttp/tools/MultiValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/tools/MultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private mInterceptor:Lcom/yanzhenjie/nohttp/rest/Interceptor;

.field private mNetworkExecutor:Lcom/yanzhenjie/nohttp/NetworkExecutor;

.field private mParams:Lcom/yanzhenjie/nohttp/tools/MultiValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/tools/MultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReadTimeout:I

.field private mRetryCount:I

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->access$100(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->access$200(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mConnectTimeout:I

    .line 5
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->access$300(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mReadTimeout:I

    .line 6
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->access$400(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mRetryCount:I

    .line 7
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->access$500(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lcom/yanzhenjie/nohttp/ssl/SSLUtils;->defaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->access$600(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Lcom/yanzhenjie/nohttp/ssl/SSLUtils;->defaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->access$700(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mHeaders:Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    .line 12
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->access$800(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mParams:Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    .line 13
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->access$900(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Ljava/net/CookieStore;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mCookieStore:Ljava/net/CookieStore;

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mCookieStore:Ljava/net/CookieStore;

    .line 15
    :cond_2
    new-instance v0, Ljava/net/CookieManager;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mCookieStore:Ljava/net/CookieStore;

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mCookieManager:Ljava/net/CookieManager;

    .line 16
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->access$1000(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Lcom/yanzhenjie/nohttp/tools/CacheStore;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;

    if-nez v0, :cond_3

    .line 17
    new-instance v0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;

    .line 18
    :cond_3
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->access$1100(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Lcom/yanzhenjie/nohttp/NetworkExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mNetworkExecutor:Lcom/yanzhenjie/nohttp/NetworkExecutor;

    if-nez v0, :cond_4

    .line 19
    new-instance v0, Lcom/yanzhenjie/nohttp/URLConnectionNetworkExecutor;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/URLConnectionNetworkExecutor;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mNetworkExecutor:Lcom/yanzhenjie/nohttp/NetworkExecutor;

    .line 20
    :cond_4
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->access$1200(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Lcom/yanzhenjie/nohttp/rest/Interceptor;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mInterceptor:Lcom/yanzhenjie/nohttp/rest/Interceptor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;Lcom/yanzhenjie/nohttp/InitializationConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yanzhenjie/nohttp/InitializationConfig;-><init>(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)V

    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;-><init>(Landroid/content/Context;Lcom/yanzhenjie/nohttp/InitializationConfig$1;)V

    return-object v0
.end method


# virtual methods
.method public getCacheStore()Lcom/yanzhenjie/nohttp/tools/CacheStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yanzhenjie/nohttp/tools/CacheStore<",
            "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mConnectTimeout:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCookieManager()Ljava/net/CookieManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mCookieManager:Ljava/net/CookieManager;

    return-object v0
.end method

.method public getCookieStore()Ljava/net/CookieStore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mCookieStore:Ljava/net/CookieStore;

    return-object v0
.end method

.method public getHeaders()Lcom/yanzhenjie/nohttp/tools/MultiValueMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yanzhenjie/nohttp/tools/MultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mHeaders:Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getInterceptor()Lcom/yanzhenjie/nohttp/rest/Interceptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mInterceptor:Lcom/yanzhenjie/nohttp/rest/Interceptor;

    return-object v0
.end method

.method public getNetworkExecutor()Lcom/yanzhenjie/nohttp/NetworkExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mNetworkExecutor:Lcom/yanzhenjie/nohttp/NetworkExecutor;

    return-object v0
.end method

.method public getParams()Lcom/yanzhenjie/nohttp/tools/MultiValueMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yanzhenjie/nohttp/tools/MultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mParams:Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mReadTimeout:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mRetryCount:I

    return v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method
