.class public final Lcom/google/api/client/http/a/e;
.super Lcom/google/api/client/http/w;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/api/client/http/a/a;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;

.field private final d:Ljavax/net/ssl/HostnameVerifier;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "DELETE"

    const-string v1, "GET"

    const-string v2, "HEAD"

    const-string v3, "OPTIONS"

    const-string v4, "POST"

    const-string v5, "PUT"

    const-string v6, "TRACE"

    .line 68
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 79
    sput-object v0, Lcom/google/api/client/http/a/e;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, v0, v0, v0, v1}, Lcom/google/api/client/http/a/e;-><init>(Lcom/google/api/client/http/a/a;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Z)V

    return-void
.end method

.method constructor <init>(Lcom/google/api/client/http/a/a;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 5

    .line 133
    invoke-direct {p0}, Lcom/google/api/client/http/w;-><init>()V

    if-nez p1, :cond_1

    const-string p1, "com.google.api.client.should_use_proxy"

    .line 1142
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1143
    new-instance p1, Lcom/google/api/client/http/a/b;

    .line 2057
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "https.proxyHost"

    .line 2060
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "https.proxyPort"

    .line 2061
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 1143
    invoke-direct {p1, v0}, Lcom/google/api/client/http/a/b;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    .line 1145
    :cond_0
    new-instance p1, Lcom/google/api/client/http/a/b;

    invoke-direct {p1}, Lcom/google/api/client/http/a/b;-><init>()V

    .line 134
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/api/client/http/a/e;->b:Lcom/google/api/client/http/a/a;

    .line 135
    iput-object p2, p0, Lcom/google/api/client/http/a/e;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 136
    iput-object p3, p0, Lcom/google/api/client/http/a/e;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 137
    iput-boolean p4, p0, Lcom/google/api/client/http/a/e;->e:Z

    return-void
.end method

.method constructor <init>(Ljava/net/Proxy;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 1

    .line 118
    new-instance v0, Lcom/google/api/client/http/a/b;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/a/b;-><init>(Ljava/net/Proxy;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/api/client/http/a/e;-><init>(Lcom/google/api/client/http/a/a;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Z)V

    return-void
.end method


# virtual methods
.method public final synthetic buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/z;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2162
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/a/e;->supportsMethod(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "HTTP method %s not supported"

    .line 3067
    invoke-static {v0, v2, v1}, Lcom/google/common/base/m;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2164
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2165
    iget-object p2, p0, Lcom/google/api/client/http/a/e;->b:Lcom/google/api/client/http/a/a;

    invoke-interface {p2, v0}, Lcom/google/api/client/http/a/a;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 2166
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2168
    instance-of p1, p2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_1

    .line 2169
    move-object p1, p2

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 2170
    iget-object v0, p0, Lcom/google/api/client/http/a/e;->d:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_0

    .line 2171
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 2173
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/a/e;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    .line 2174
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 2177
    :cond_1
    new-instance p1, Lcom/google/api/client/http/a/c;

    invoke-direct {p1, p2}, Lcom/google/api/client/http/a/c;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method

.method public final isMtls()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/google/api/client/http/a/e;->e:Z

    return v0
.end method

.method public final supportsMethod(Ljava/lang/String;)Z
    .locals 1

    .line 152
    sget-object v0, Lcom/google/api/client/http/a/e;->a:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
