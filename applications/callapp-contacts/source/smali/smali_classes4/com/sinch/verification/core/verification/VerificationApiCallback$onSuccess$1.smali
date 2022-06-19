.class final Lcom/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/verification/core/verification/VerificationApiCallback;->onSuccess(Lcom/sinch/verification/core/verification/response/VerificationResponseData;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/v;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $data:Lcom/sinch/verification/core/verification/response/VerificationResponseData;

.field final synthetic this$0:Lcom/sinch/verification/core/verification/VerificationApiCallback;


# direct methods
.method constructor <init>(Lcom/sinch/verification/core/verification/VerificationApiCallback;Lcom/sinch/verification/core/verification/response/VerificationResponseData;)V
    .locals 0

    iput-object p1, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1;->this$0:Lcom/sinch/verification/core/verification/VerificationApiCallback;

    iput-object p2, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1;->$data:Lcom/sinch/verification/core/verification/response/VerificationResponseData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1;->$data:Lcom/sinch/verification/core/verification/response/VerificationResponseData;

    invoke-virtual {v0}, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->getStatus()Lcom/sinch/verification/core/internal/VerificationStatus;

    move-result-object v0

    sget-object v1, Lcom/sinch/verification/core/internal/VerificationStatus;->SUCCESSFUL:Lcom/sinch/verification/core/internal/VerificationStatus;

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1;->this$0:Lcom/sinch/verification/core/verification/VerificationApiCallback;

    invoke-static {v0}, Lcom/sinch/verification/core/verification/VerificationApiCallback;->access$getLogger$p(Lcom/sinch/verification/core/verification/VerificationApiCallback;)Lcom/sinch/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully verified with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1;->$data:Lcom/sinch/verification/core/verification/response/VerificationResponseData;

    invoke-virtual {v2}, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->getMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/sinch/logging/Logger$DefaultImpls;->info$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1;->this$0:Lcom/sinch/verification/core/verification/VerificationApiCallback;

    invoke-static {v0}, Lcom/sinch/verification/core/verification/VerificationApiCallback;->access$handleSuccessfulVerification(Lcom/sinch/verification/core/verification/VerificationApiCallback;)V

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1;->this$0:Lcom/sinch/verification/core/verification/VerificationApiCallback;

    iget-object v1, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1;->$data:Lcom/sinch/verification/core/verification/response/VerificationResponseData;

    invoke-virtual {v1}, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->getErrorReason()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    new-instance v2, Lcom/sinch/verification/core/internal/error/VerificationException;

    invoke-direct {v2, v1}, Lcom/sinch/verification/core/internal/error/VerificationException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0, v2}, Lcom/sinch/verification/core/verification/VerificationApiCallback;->access$handleError(Lcom/sinch/verification/core/verification/VerificationApiCallback;Ljava/lang/Throwable;)V

    return-void
.end method
