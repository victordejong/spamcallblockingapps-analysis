.class public final Lcom/sinch/verification/core/query/callback/VerificationInfoApiCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/internal/utils/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sinch/verification/core/internal/utils/ApiCallback<",
        "Lcom/sinch/verification/core/verification/response/VerificationResponseData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u001e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sinch/verification/core/query/callback/VerificationInfoApiCallback;",
        "Lcom/sinch/verification/core/internal/utils/ApiCallback;",
        "Lcom/sinch/verification/core/verification/response/VerificationResponseData;",
        "verificationInfoCallback",
        "Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;",
        "(Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V",
        "onError",
        "",
        "t",
        "",
        "onSuccess",
        "data",
        "response",
        "Lretrofit2/Response;",
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
.field private final verificationInfoCallback:Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;


# direct methods
.method public constructor <init>(Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V
    .locals 1

    const-string v0, "verificationInfoCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/core/query/callback/VerificationInfoApiCallback;->verificationInfoCallback:Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/sinch/verification/core/query/callback/VerificationInfoApiCallback;->verificationInfoCallback:Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;

    invoke-interface {v0, p1}, Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Lcom/sinch/verification/core/verification/response/VerificationResponseData;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/verification/response/VerificationResponseData;",
            "Lretrofit2/Response<",
            "Lcom/sinch/verification/core/verification/response/VerificationResponseData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/sinch/verification/core/query/callback/VerificationInfoApiCallback;->verificationInfoCallback:Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;

    invoke-interface {p2, p1}, Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;->onSuccess(Lcom/sinch/verification/core/verification/response/VerificationResponseData;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;Lretrofit2/Response;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/sinch/verification/core/verification/response/VerificationResponseData;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/verification/core/query/callback/VerificationInfoApiCallback;->onSuccess(Lcom/sinch/verification/core/verification/response/VerificationResponseData;Lretrofit2/Response;)V

    return-void
.end method
