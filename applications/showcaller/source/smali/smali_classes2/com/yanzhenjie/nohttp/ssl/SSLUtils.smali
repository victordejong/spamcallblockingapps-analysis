.class public Lcom/yanzhenjie/nohttp/ssl/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# static fields
.field private static final HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/ssl/SSLUtils$1;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/ssl/SSLUtils$1;-><init>()V

    sput-object v0, Lcom/yanzhenjie/nohttp/ssl/SSLUtils;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/ssl/SSLUtils;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public static defaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;-><init>()V

    return-object v0
.end method

.method public static fixSSLLowerThanLollipop(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    instance-of v0, p0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/nohttp/ssl/TLSSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method
