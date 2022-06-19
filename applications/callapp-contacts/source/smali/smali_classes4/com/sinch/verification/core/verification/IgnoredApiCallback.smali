.class public final Lcom/sinch/verification/core/verification/IgnoredApiCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/internal/utils/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sinch/verification/core/internal/utils/ApiCallback<",
        "TData;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J#\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00028\u00002\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rH\u0016\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sinch/verification/core/verification/IgnoredApiCallback;",
        "Data",
        "Lcom/sinch/verification/core/internal/utils/ApiCallback;",
        "()V",
        "logger",
        "Lcom/sinch/logging/Logger;",
        "onError",
        "",
        "t",
        "",
        "onSuccess",
        "data",
        "response",
        "Lretrofit2/Response;",
        "(Ljava/lang/Object;Lretrofit2/Response;)V",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final logger:Lcom/sinch/logging/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p0}, Lcom/sinch/logging/LogKt;->logger(Ljava/lang/Object;)Lcom/sinch/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sinch/verification/core/verification/IgnoredApiCallback;->logger:Lcom/sinch/logging/Logger;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/sinch/verification/core/verification/IgnoredApiCallback;->logger:Lcom/sinch/logging/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onError called with throwable: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/sinch/logging/Logger$DefaultImpls;->error$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;",
            "Lretrofit2/Response<",
            "TData;>;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/sinch/verification/core/verification/IgnoredApiCallback;->logger:Lcom/sinch/logging/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSuccess called with data: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p2, p1, v0, v1, v0}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
