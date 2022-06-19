.class public abstract Lcom/yanzhenjie/nohttp/rest/SimpleResponseListener;
.super Ljava/lang/Object;
.source "SimpleResponseListener.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/rest/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yanzhenjie/nohttp/rest/OnResponseListener<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILcom/yanzhenjie/nohttp/rest/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yanzhenjie/nohttp/rest/Response<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onFinish(I)V
    .locals 0

    return-void
.end method

.method public onStart(I)V
    .locals 0

    return-void
.end method

.method public onSucceed(ILcom/yanzhenjie/nohttp/rest/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yanzhenjie/nohttp/rest/Response<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method
