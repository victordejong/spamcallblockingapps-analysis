.class public Lcom/yanzhenjie/nohttp/URLConnectionNetwork;
.super Ljava/lang/Object;
.source "URLConnectionNetwork.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/Network;


# instance fields
.field private mUrlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/URLConnectionNetwork;->mUrlConnection:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/URLConnectionNetwork;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/URLConnectionNetwork;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/URLConnectionNetwork;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/URLConnectionNetwork;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getServerStream(ILcom/yanzhenjie/nohttp/Headers;)Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/Headers;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/yanzhenjie/nohttp/URLConnectionNetwork;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-static {p1, p2, v0}, Lcom/yanzhenjie/nohttp/URLConnectionNetworkExecutor;->getServerStream(ILjava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
