.class final Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/verification/core/initiation/InitiationApiCallback;->onSuccess(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;Lretrofit2/Response;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;",
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
.field final synthetic $data:Lcom/sinch/verification/core/initiation/response/InitiationResponseData;

.field final synthetic $response:Lretrofit2/Response;

.field final synthetic this$0:Lcom/sinch/verification/core/initiation/InitiationApiCallback;


# direct methods
.method constructor <init>(Lcom/sinch/verification/core/initiation/InitiationApiCallback;Lcom/sinch/verification/core/initiation/response/InitiationResponseData;Lretrofit2/Response;)V
    .locals 0

    iput-object p1, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;->this$0:Lcom/sinch/verification/core/initiation/InitiationApiCallback;

    iput-object p2, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;->$data:Lcom/sinch/verification/core/initiation/response/InitiationResponseData;

    iput-object p3, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;->$response:Lretrofit2/Response;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;->this$0:Lcom/sinch/verification/core/initiation/InitiationApiCallback;

    invoke-static {v0}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->access$getDataModifier$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;->$data:Lcom/sinch/verification/core/initiation/response/InitiationResponseData;

    iget-object v2, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;->$response:Lretrofit2/Response;

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sinch/verification/core/initiation/response/InitiationResponseData;

    .line 32
    iget-object v1, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;->this$0:Lcom/sinch/verification/core/initiation/InitiationApiCallback;

    invoke-static {v1}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->access$getLogger$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lcom/sinch/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Verification initiated data is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;->$data:Lcom/sinch/verification/core/initiation/response/InitiationResponseData;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 33
    iget-object v1, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;->this$0:Lcom/sinch/verification/core/initiation/InitiationApiCallback;

    invoke-static {v1}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->access$getStatusListener$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lcom/sinch/verification/core/internal/VerificationStateListener;

    move-result-object v1

    new-instance v2, Lcom/sinch/verification/core/internal/VerificationState$Initialization;

    sget-object v3, Lcom/sinch/verification/core/internal/VerificationStateStatus;->SUCCESS:Lcom/sinch/verification/core/internal/VerificationStateStatus;

    invoke-direct {v2, v3}, Lcom/sinch/verification/core/internal/VerificationState$Initialization;-><init>(Lcom/sinch/verification/core/internal/VerificationStateStatus;)V

    check-cast v2, Lcom/sinch/verification/core/internal/VerificationState;

    invoke-interface {v1, v2}, Lcom/sinch/verification/core/internal/VerificationStateListener;->update(Lcom/sinch/verification/core/internal/VerificationState;)V

    .line 34
    iget-object v1, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;->this$0:Lcom/sinch/verification/core/initiation/InitiationApiCallback;

    invoke-static {v1}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->access$getListener$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lcom/sinch/verification/core/initiation/response/InitiationListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sinch/verification/core/initiation/response/InitiationListener;->onInitiated(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;)V

    .line 35
    iget-object v1, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;->this$0:Lcom/sinch/verification/core/initiation/InitiationApiCallback;

    invoke-static {v1}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->access$getSuccessCallback$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
