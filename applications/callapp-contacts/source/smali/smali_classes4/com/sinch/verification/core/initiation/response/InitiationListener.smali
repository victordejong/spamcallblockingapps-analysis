.class public interface abstract Lcom/sinch/verification/core/initiation/response/InitiationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0008f\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0000*\u00020\u00022\u00020\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0015\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sinch/verification/core/initiation/response/InitiationListener;",
        "T",
        "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;",
        "",
        "onInitializationFailed",
        "",
        "t",
        "",
        "onInitiated",
        "data",
        "(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;)V",
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
.method public abstract onInitializationFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onInitiated(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
