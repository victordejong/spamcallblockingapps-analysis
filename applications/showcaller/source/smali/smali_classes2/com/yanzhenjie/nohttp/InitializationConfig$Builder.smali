.class public final Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
.super Ljava/lang/Object;
.source "InitializationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/nohttp/InitializationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 3
    iput v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mConnectTimeout:I

    .line 4
    iput v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mReadTimeout:I

    .line 5
    new-instance v0, Lcom/yanzhenjie/nohttp/tools/LinkedMultiValueMap;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/tools/LinkedMultiValueMap;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mHeaders:Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    .line 6
    new-instance v0, Lcom/yanzhenjie/nohttp/tools/LinkedMultiValueMap;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/tools/LinkedMultiValueMap;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mParams:Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/yanzhenjie/nohttp/InitializationConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Lcom/yanzhenjie/nohttp/tools/CacheStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Lcom/yanzhenjie/nohttp/NetworkExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mNetworkExecutor:Lcom/yanzhenjie/nohttp/NetworkExecutor;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Lcom/yanzhenjie/nohttp/rest/Interceptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mInterceptor:Lcom/yanzhenjie/nohttp/rest/Interceptor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mConnectTimeout:I

    return p0
.end method

.method static synthetic access$300(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mReadTimeout:I

    return p0
.end method

.method static synthetic access$400(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mRetryCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Lcom/yanzhenjie/nohttp/tools/MultiValueMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mHeaders:Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Lcom/yanzhenjie/nohttp/tools/MultiValueMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mParams:Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;)Ljava/net/CookieStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mCookieStore:Ljava/net/CookieStore;

    return-object p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mHeaders:Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/nohttp/tools/MultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mParams:Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/nohttp/tools/MultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public build()Lcom/yanzhenjie/nohttp/InitializationConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/InitializationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yanzhenjie/nohttp/InitializationConfig;-><init>(Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;Lcom/yanzhenjie/nohttp/InitializationConfig$1;)V

    return-object v0
.end method

.method public cacheStore(Lcom/yanzhenjie/nohttp/tools/CacheStore;)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/tools/CacheStore<",
            "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
            ">;)",
            "Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;

    return-object p0
.end method

.method public connectionTimeout(I)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mConnectTimeout:I

    return-object p0
.end method

.method public cookieStore(Ljava/net/CookieStore;)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mCookieStore:Ljava/net/CookieStore;

    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public interceptor(Lcom/yanzhenjie/nohttp/rest/Interceptor;)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mInterceptor:Lcom/yanzhenjie/nohttp/rest/Interceptor;

    return-object p0
.end method

.method public networkExecutor(Lcom/yanzhenjie/nohttp/NetworkExecutor;)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mNetworkExecutor:Lcom/yanzhenjie/nohttp/NetworkExecutor;

    return-object p0
.end method

.method public readTimeout(I)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mReadTimeout:I

    return-object p0
.end method

.method public retry(I)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mRetryCount:I

    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method
