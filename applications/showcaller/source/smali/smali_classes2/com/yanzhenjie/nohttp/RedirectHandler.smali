.class public interface abstract Lcom/yanzhenjie/nohttp/RedirectHandler;
.super Ljava/lang/Object;
.source "RedirectHandler.java"


# virtual methods
.method public abstract isDisallowedRedirect(Lcom/yanzhenjie/nohttp/Headers;)Z
.end method

.method public abstract onRedirect(Lcom/yanzhenjie/nohttp/BasicRequest;Lcom/yanzhenjie/nohttp/Headers;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/BasicRequest<",
            "*>;",
            "Lcom/yanzhenjie/nohttp/Headers;",
            ")",
            "Lcom/yanzhenjie/nohttp/BasicRequest<",
            "*>;"
        }
    .end annotation
.end method
