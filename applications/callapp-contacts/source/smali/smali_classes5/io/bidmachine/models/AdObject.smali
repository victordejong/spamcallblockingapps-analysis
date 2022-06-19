.class public interface abstract Lio/bidmachine/models/AdObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdObjectParamsType:",
        "Lio/bidmachine/models/AdObjectParams;",
        "UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        "UnifiedAdCallbackType::",
        "Lio/bidmachine/unified/UnifiedAdCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedAdCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdProcessCallback;",
            ")TUnifiedAdCallbackType;"
        }
    .end annotation
.end method

.method public abstract getParams()Lio/bidmachine/models/AdObjectParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdObjectParamsType;"
        }
    .end annotation
.end method

.method public abstract load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract onClicked()V
.end method

.method public abstract onClosed(Z)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onExpired()V
.end method

.method public abstract onFinished()V
.end method

.method public abstract onImpression()V
.end method

.method public abstract onShowFailed()V
.end method

.method public abstract onShown()V
.end method
