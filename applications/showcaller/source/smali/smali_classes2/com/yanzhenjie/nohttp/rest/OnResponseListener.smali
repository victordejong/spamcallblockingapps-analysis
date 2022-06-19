.class public interface abstract Lcom/yanzhenjie/nohttp/rest/OnResponseListener;
.super Ljava/lang/Object;
.source "OnResponseListener.java"


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
.method public abstract onFailed(ILcom/yanzhenjie/nohttp/rest/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yanzhenjie/nohttp/rest/Response<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onFinish(I)V
.end method

.method public abstract onStart(I)V
.end method

.method public abstract onSucceed(ILcom/yanzhenjie/nohttp/rest/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yanzhenjie/nohttp/rest/Response<",
            "TT;>;)V"
        }
    .end annotation
.end method
