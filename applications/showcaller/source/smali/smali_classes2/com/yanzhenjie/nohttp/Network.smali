.class public interface abstract Lcom/yanzhenjie/nohttp/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getResponseCode()I
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
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
.end method

.method public abstract getServerStream(ILcom/yanzhenjie/nohttp/Headers;)Ljava/io/InputStream;
.end method
