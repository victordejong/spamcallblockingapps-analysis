.class public final Lcom/callapp/contacts/api/helper/google/OkHttpTransport;
.super Lcom/google/api/client/http/w;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/net/Proxy;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;

.field private final d:Ljavax/net/ssl/HostnameVerifier;


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

    .line 74
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 78
    sput-object v0, Lcom/callapp/contacts/api/helper/google/OkHttpTransport;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0, v0, v0}, Lcom/callapp/contacts/api/helper/google/OkHttpTransport;-><init>(Ljava/net/Proxy;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method constructor <init>(Ljava/net/Proxy;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/google/api/client/http/w;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/google/OkHttpTransport;->b:Ljava/net/Proxy;

    .line 125
    iput-object p2, p0, Lcom/callapp/contacts/api/helper/google/OkHttpTransport;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 126
    iput-object p3, p0, Lcom/callapp/contacts/api/helper/google/OkHttpTransport;->d:Ljavax/net/ssl/HostnameVerifier;

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

    .line 1136
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/google/OkHttpTransport;->supportsMethod(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "HTTP method %s not supported"

    .line 2067
    invoke-static {v0, v2, v1}, Lcom/google/common/base/m;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1138
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1140
    iget-object p2, p0, Lcom/callapp/contacts/api/helper/google/OkHttpTransport;->b:Ljava/net/Proxy;

    invoke-static {v0, p2}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 1142
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1144
    instance-of p1, p2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_1

    .line 1145
    move-object p1, p2

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 1146
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/google/OkHttpTransport;->d:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/google/OkHttpTransport;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    .line 1150
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1153
    :cond_1
    new-instance p1, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;

    invoke-direct {p1, p2}, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method

.method public final supportsMethod(Ljava/lang/String;)Z
    .locals 1

    .line 131
    sget-object v0, Lcom/callapp/contacts/api/helper/google/OkHttpTransport;->a:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
