.class public Lcom/yanzhenjie/nohttp/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mResponseHeaders:Lcom/yanzhenjie/nohttp/Headers;

.field private mServerStream:Ljava/io/InputStream;

.field private network:Lcom/yanzhenjie/nohttp/Network;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/nohttp/Network;Lcom/yanzhenjie/nohttp/Headers;Ljava/io/InputStream;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/Connection;->network:Lcom/yanzhenjie/nohttp/Network;

    .line 3
    iput-object p2, p0, Lcom/yanzhenjie/nohttp/Connection;->mResponseHeaders:Lcom/yanzhenjie/nohttp/Headers;

    .line 4
    iput-object p3, p0, Lcom/yanzhenjie/nohttp/Connection;->mServerStream:Ljava/io/InputStream;

    .line 5
    iput-object p4, p0, Lcom/yanzhenjie/nohttp/Connection;->mException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/Connection;->mServerStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/Connection;->network:Lcom/yanzhenjie/nohttp/Network;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public exception()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/Connection;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public responseHeaders()Lcom/yanzhenjie/nohttp/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/Connection;->mResponseHeaders:Lcom/yanzhenjie/nohttp/Headers;

    return-object v0
.end method

.method public serverStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/Connection;->mServerStream:Ljava/io/InputStream;

    return-object v0
.end method
