.class public final Lcom/sinch/verification/core/verification/VerificationApiCallback;
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\tH\u0002J\u0016\u0010\u0011\u001a\u00020\t2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001e\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00022\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sinch/verification/core/verification/VerificationApiCallback;",
        "Lcom/sinch/verification/core/internal/utils/ApiCallback;",
        "Lcom/sinch/verification/core/verification/response/VerificationResponseData;",
        "listener",
        "Lcom/sinch/verification/core/verification/response/VerificationListener;",
        "verificationStateListener",
        "Lcom/sinch/verification/core/internal/VerificationStateListener;",
        "beforeResultHandledCallback",
        "Lkotlin/Function0;",
        "",
        "(Lcom/sinch/verification/core/verification/response/VerificationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function0;)V",
        "logger",
        "Lcom/sinch/logging/Logger;",
        "handleError",
        "t",
        "",
        "handleSuccessfulVerification",
        "ifNotAlreadyVerified",
        "f",
        "onError",
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
.field private final beforeResultHandledCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/sinch/verification/core/verification/response/VerificationListener;

.field private final logger:Lcom/sinch/logging/Logger;

.field private final verificationStateListener:Lcom/sinch/verification/core/internal/VerificationStateListener;


# direct methods
.method public constructor <init>(Lcom/sinch/verification/core/verification/response/VerificationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/verification/response/VerificationListener;",
            "Lcom/sinch/verification/core/internal/VerificationStateListener;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationStateListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beforeResultHandledCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->listener:Lcom/sinch/verification/core/verification/response/VerificationListener;

    iput-object p2, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->verificationStateListener:Lcom/sinch/verification/core/internal/VerificationStateListener;

    iput-object p3, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->beforeResultHandledCallback:Lkotlin/jvm/functions/Function0;

    .line 25
    invoke-static {p0}, Lcom/sinch/logging/LogKt;->logger(Ljava/lang/Object;)Lcom/sinch/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->logger:Lcom/sinch/logging/Logger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sinch/verification/core/verification/response/VerificationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 21
    sget-object p3, Lcom/sinch/verification/core/verification/VerificationApiCallback$1;->INSTANCE:Lcom/sinch/verification/core/verification/VerificationApiCallback$1;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sinch/verification/core/verification/VerificationApiCallback;-><init>(Lcom/sinch/verification/core/verification/response/VerificationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lcom/sinch/verification/core/verification/VerificationApiCallback;)Lcom/sinch/logging/Logger;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->logger:Lcom/sinch/logging/Logger;

    return-object p0
.end method

.method public static final synthetic access$handleError(Lcom/sinch/verification/core/verification/VerificationApiCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/sinch/verification/core/verification/VerificationApiCallback;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$handleSuccessfulVerification(Lcom/sinch/verification/core/verification/VerificationApiCallback;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/sinch/verification/core/verification/VerificationApiCallback;->handleSuccessfulVerification()V

    return-void
.end method

.method private final handleError(Ljava/lang/Throwable;)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->logger:Lcom/sinch/logging/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Verification call failed with error "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->verificationStateListener:Lcom/sinch/verification/core/internal/VerificationStateListener;

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationState$Verification;

    sget-object v2, Lcom/sinch/verification/core/internal/VerificationStateStatus;->ERROR:Lcom/sinch/verification/core/internal/VerificationStateStatus;

    invoke-direct {v1, v2}, Lcom/sinch/verification/core/internal/VerificationState$Verification;-><init>(Lcom/sinch/verification/core/internal/VerificationStateStatus;)V

    check-cast v1, Lcom/sinch/verification/core/internal/VerificationState;

    invoke-interface {v0, v1}, Lcom/sinch/verification/core/internal/VerificationStateListener;->update(Lcom/sinch/verification/core/internal/VerificationState;)V

    .line 65
    iget-object v0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->listener:Lcom/sinch/verification/core/verification/response/VerificationListener;

    invoke-interface {v0, p1}, Lcom/sinch/verification/core/verification/response/VerificationListener;->onVerificationFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final handleSuccessfulVerification()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->logger:Lcom/sinch/logging/Logger;

    const-string v1, "Verification call successful!"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->verificationStateListener:Lcom/sinch/verification/core/internal/VerificationStateListener;

    .line 55
    new-instance v1, Lcom/sinch/verification/core/internal/VerificationState$Verification;

    .line 56
    sget-object v2, Lcom/sinch/verification/core/internal/VerificationStateStatus;->SUCCESS:Lcom/sinch/verification/core/internal/VerificationStateStatus;

    .line 55
    invoke-direct {v1, v2}, Lcom/sinch/verification/core/internal/VerificationState$Verification;-><init>(Lcom/sinch/verification/core/internal/VerificationStateStatus;)V

    check-cast v1, Lcom/sinch/verification/core/internal/VerificationState;

    .line 54
    invoke-interface {v0, v1}, Lcom/sinch/verification/core/internal/VerificationStateListener;->update(Lcom/sinch/verification/core/internal/VerificationState;)V

    .line 59
    iget-object v0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->listener:Lcom/sinch/verification/core/verification/response/VerificationListener;

    invoke-interface {v0}, Lcom/sinch/verification/core/verification/response/VerificationListener;->onVerified()V

    return-void
.end method

.method private final ifNotAlreadyVerified(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->verificationStateListener:Lcom/sinch/verification/core/internal/VerificationStateListener;

    invoke-interface {v0}, Lcom/sinch/verification/core/internal/VerificationStateListener;->getVerificationState()Lcom/sinch/verification/core/internal/VerificationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sinch/verification/core/internal/VerificationState;->isVerified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->beforeResultHandledCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/sinch/verification/core/verification/VerificationApiCallback$onError$1;

    invoke-direct {v0, p0, p1}, Lcom/sinch/verification/core/verification/VerificationApiCallback$onError$1;-><init>(Lcom/sinch/verification/core/verification/VerificationApiCallback;Ljava/lang/Throwable;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/sinch/verification/core/verification/VerificationApiCallback;->ifNotAlreadyVerified(Lkotlin/jvm/functions/Function0;)V

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

    .line 31
    iget-object p2, p0, Lcom/sinch/verification/core/verification/VerificationApiCallback;->beforeResultHandledCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 32
    new-instance p2, Lcom/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1;

    invoke-direct {p2, p0, p1}, Lcom/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1;-><init>(Lcom/sinch/verification/core/verification/VerificationApiCallback;Lcom/sinch/verification/core/verification/response/VerificationResponseData;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p2}, Lcom/sinch/verification/core/verification/VerificationApiCallback;->ifNotAlreadyVerified(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;Lretrofit2/Response;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/sinch/verification/core/verification/response/VerificationResponseData;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/verification/core/verification/VerificationApiCallback;->onSuccess(Lcom/sinch/verification/core/verification/response/VerificationResponseData;Lretrofit2/Response;)V

    return-void
.end method
