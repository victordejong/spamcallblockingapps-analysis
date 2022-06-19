.class final Lcom/sinch/verification/core/initiation/InitiationApiCallback$onError$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/verification/core/initiation/InitiationApiCallback;->onError(Ljava/lang/Throwable;)V
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
.field final synthetic $t:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/sinch/verification/core/initiation/InitiationApiCallback;


# direct methods
.method constructor <init>(Lcom/sinch/verification/core/initiation/InitiationApiCallback;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onError$1;->this$0:Lcom/sinch/verification/core/initiation/InitiationApiCallback;

    iput-object p2, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onError$1;->$t:Ljava/lang/Throwable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onError$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onError$1;->this$0:Lcom/sinch/verification/core/initiation/InitiationApiCallback;

    invoke-static {v0}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->access$getLogger$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lcom/sinch/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Verification initiation failed error is is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onError$1;->$t:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onError$1;->this$0:Lcom/sinch/verification/core/initiation/InitiationApiCallback;

    invoke-static {v0}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->access$getStatusListener$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lcom/sinch/verification/core/internal/VerificationStateListener;

    move-result-object v0

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationState$Initialization;

    sget-object v2, Lcom/sinch/verification/core/internal/VerificationStateStatus;->ERROR:Lcom/sinch/verification/core/internal/VerificationStateStatus;

    invoke-direct {v1, v2}, Lcom/sinch/verification/core/internal/VerificationState$Initialization;-><init>(Lcom/sinch/verification/core/internal/VerificationStateStatus;)V

    check-cast v1, Lcom/sinch/verification/core/internal/VerificationState;

    invoke-interface {v0, v1}, Lcom/sinch/verification/core/internal/VerificationStateListener;->update(Lcom/sinch/verification/core/internal/VerificationState;)V

    .line 43
    iget-object v0, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onError$1;->this$0:Lcom/sinch/verification/core/initiation/InitiationApiCallback;

    invoke-static {v0}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->access$getListener$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lcom/sinch/verification/core/initiation/response/InitiationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onError$1;->$t:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/sinch/verification/core/initiation/response/InitiationListener;->onInitializationFailed(Ljava/lang/Throwable;)V

    return-void
.end method
