.class public interface abstract Lcom/yanzhenjie/nohttp/rest/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getException()Ljava/lang/Exception;
.end method

.method public abstract getHeaders()Lcom/yanzhenjie/nohttp/Headers;
.end method

.method public abstract getNetworkMillis()J
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract isFromCache()Z
.end method

.method public abstract isSucceed()Z
.end method

.method public abstract request()Lcom/yanzhenjie/nohttp/rest/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract responseCode()I
.end method
