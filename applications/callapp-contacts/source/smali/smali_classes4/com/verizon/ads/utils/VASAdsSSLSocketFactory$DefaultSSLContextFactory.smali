.class Lcom/verizon/ads/utils/VASAdsSSLSocketFactory$DefaultSSLContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/utils/VASAdsSSLSocketFactory$SSLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultSSLContextFactory"
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;


# direct methods
.method private constructor <init>(Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory$DefaultSSLContextFactory;->a:Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;Lcom/verizon/ads/utils/VASAdsSSLSocketFactory$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory$DefaultSSLContextFactory;-><init>(Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;)V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 39
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0, v0, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object p1
.end method
