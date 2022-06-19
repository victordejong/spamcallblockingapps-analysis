.class public Lcom/sinch/verification/core/initiation/InitiationApiCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/internal/utils/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sinch/verification/core/internal/utils/ApiCallback<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003BS\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012 \u0008\u0002\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\n\u0012\u0004\u0012\u00028\u00000\t\u0012\u0014\u0008\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0002\u0010\u000eJ\u0016\u0010\u0011\u001a\u00020\r2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J#\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00028\u00002\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0016\u00a2\u0006\u0002\u0010\u001aR&\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\n\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/sinch/verification/core/initiation/InitiationApiCallback;",
        "T",
        "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;",
        "Lcom/sinch/verification/core/internal/utils/ApiCallback;",
        "listener",
        "Lcom/sinch/verification/core/initiation/response/InitiationListener;",
        "statusListener",
        "Lcom/sinch/verification/core/internal/VerificationStateListener;",
        "dataModifier",
        "Lkotlin/Function2;",
        "Lretrofit2/Response;",
        "successCallback",
        "Lkotlin/Function1;",
        "",
        "(Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V",
        "logger",
        "Lcom/sinch/logging/Logger;",
        "ifNotManuallyStopped",
        "f",
        "Lkotlin/Function0;",
        "onError",
        "t",
        "",
        "onSuccess",
        "data",
        "response",
        "(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;Lretrofit2/Response;)V",
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
.field private final dataModifier:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT;",
            "Lretrofit2/Response<",
            "TT;>;TT;>;"
        }
    .end annotation
.end field

.field private final listener:Lcom/sinch/verification/core/initiation/response/InitiationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sinch/verification/core/initiation/response/InitiationListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final logger:Lcom/sinch/logging/Logger;

.field private final statusListener:Lcom/sinch/verification/core/internal/VerificationStateListener;

.field private final successCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/initiation/response/InitiationListener<",
            "-TT;>;",
            "Lcom/sinch/verification/core/internal/VerificationStateListener;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lretrofit2/Response<",
            "TT;>;+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataModifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->listener:Lcom/sinch/verification/core/initiation/response/InitiationListener;

    iput-object p2, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->statusListener:Lcom/sinch/verification/core/internal/VerificationStateListener;

    iput-object p3, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->dataModifier:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->successCallback:Lkotlin/jvm/functions/Function1;

    .line 27
    invoke-static {p0}, Lcom/sinch/logging/LogKt;->logger(Ljava/lang/Object;)Lcom/sinch/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->logger:Lcom/sinch/logging/Logger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 22
    sget-object p3, Lcom/sinch/verification/core/initiation/InitiationApiCallback$1;->INSTANCE:Lcom/sinch/verification/core/initiation/InitiationApiCallback$1;

    check-cast p3, Lkotlin/jvm/functions/Function2;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 23
    sget-object p4, Lcom/sinch/verification/core/initiation/InitiationApiCallback$2;->INSTANCE:Lcom/sinch/verification/core/initiation/InitiationApiCallback$2;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;-><init>(Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getDataModifier$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->dataModifier:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lcom/sinch/verification/core/initiation/response/InitiationListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->listener:Lcom/sinch/verification/core/initiation/response/InitiationListener;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lcom/sinch/logging/Logger;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->logger:Lcom/sinch/logging/Logger;

    return-object p0
.end method

.method public static final synthetic access$getStatusListener$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lcom/sinch/verification/core/internal/VerificationStateListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->statusListener:Lcom/sinch/verification/core/internal/VerificationStateListener;

    return-object p0
.end method

.method public static final synthetic access$getSuccessCallback$p(Lcom/sinch/verification/core/initiation/InitiationApiCallback;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->successCallback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final ifNotManuallyStopped(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->statusListener:Lcom/sinch/verification/core/internal/VerificationStateListener;

    invoke-interface {v0}, Lcom/sinch/verification/core/internal/VerificationStateListener;->getVerificationState()Lcom/sinch/verification/core/internal/VerificationState;

    move-result-object v0

    sget-object v1, Lcom/sinch/verification/core/internal/VerificationState$ManuallyStopped;->INSTANCE:Lcom/sinch/verification/core/internal/VerificationState$ManuallyStopped;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onError$1;

    invoke-direct {v0, p0, p1}, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onError$1;-><init>(Lcom/sinch/verification/core/initiation/InitiationApiCallback;Ljava/lang/Throwable;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->ifNotManuallyStopped(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onSuccess(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1;-><init>(Lcom/sinch/verification/core/initiation/InitiationApiCallback;Lcom/sinch/verification/core/initiation/response/InitiationResponseData;Lretrofit2/Response;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->ifNotManuallyStopped(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Lretrofit2/Response;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/sinch/verification/core/initiation/response/InitiationResponseData;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/verification/core/initiation/InitiationApiCallback;->onSuccess(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;Lretrofit2/Response;)V

    return-void
.end method
