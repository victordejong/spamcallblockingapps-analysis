.class public interface abstract Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0014\u001a\u00020\u0015H&J\u0008\u0010\u0016\u001a\u00020\u0015H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u00020\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;",
        "",
        "interceptionListener",
        "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;",
        "getInterceptionListener",
        "()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;",
        "interceptionTimeout",
        "",
        "getInterceptionTimeout",
        "()J",
        "setInterceptionTimeout",
        "(J)V",
        "method",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "getMethod",
        "()Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "state",
        "Lcom/sinch/verification/core/verification/interceptor/InterceptorState;",
        "getState",
        "()Lcom/sinch/verification/core/verification/interceptor/InterceptorState;",
        "start",
        "",
        "stop",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract getInterceptionListener()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;
.end method

.method public abstract getInterceptionTimeout()J
.end method

.method public abstract getMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;
.end method

.method public abstract getState()Lcom/sinch/verification/core/verification/interceptor/InterceptorState;
.end method

.method public abstract setInterceptionTimeout(J)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
