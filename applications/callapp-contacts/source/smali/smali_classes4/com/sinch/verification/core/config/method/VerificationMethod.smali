.class public abstract Lcom/sinch/verification/core/config/method/VerificationMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/internal/Verification;
.implements Lcom/sinch/verification/core/internal/VerificationStateListener;
.implements Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Service:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sinch/verification/core/internal/Verification;",
        "Lcom/sinch/verification/core/internal/VerificationStateListener;",
        "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001d\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010(\u001a\u00020)J\u0008\u0010*\u001a\u00020)H\u0016J\u0008\u0010+\u001a\u00020)H$J\u0008\u0010,\u001a\u00020-H\u0014J\"\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u000103H$J\u0008\u00104\u001a\u00020)H\u0014J\u0008\u00105\u001a\u00020)H\u0016J\u0010\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020#H\u0016J\u0018\u00108\u001a\u00020)2\u0006\u0010/\u001a\u00020\u000f2\u0008\u00102\u001a\u0004\u0018\u000103J\"\u00108\u001a\u00020)2\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u0002012\n\u0008\u0002\u00102\u001a\u0004\u0018\u000103R\u0014\u0010\n\u001a\u00020\u000bX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u0015X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0007\u001a\u00020\u0008X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00028\u0000X\u0084\u0004\u00a2\u0006\n\n\u0002\u0010!\u001a\u0004\u0008\u001f\u0010 R\u001a\u0010\"\u001a\u00020#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u00069"
    }
    d2 = {
        "Lcom/sinch/verification/core/config/method/VerificationMethod;",
        "Service",
        "Lcom/sinch/verification/core/internal/Verification;",
        "Lcom/sinch/verification/core/internal/VerificationStateListener;",
        "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;",
        "verificationServiceConfig",
        "Lcom/sinch/verification/core/config/method/VerificationMethodConfig;",
        "verificationListener",
        "Lcom/sinch/verification/core/verification/response/VerificationListener;",
        "(Lcom/sinch/verification/core/config/method/VerificationMethodConfig;Lcom/sinch/verification/core/verification/response/VerificationListener;)V",
        "globalConfig",
        "Lcom/sinch/verification/core/config/general/GlobalConfig;",
        "getGlobalConfig",
        "()Lcom/sinch/verification/core/config/general/GlobalConfig;",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "initResponseData",
        "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;",
        "logger",
        "Lcom/sinch/logging/Logger;",
        "getLogger",
        "()Lcom/sinch/logging/Logger;",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "getRetrofit",
        "()Lretrofit2/Retrofit;",
        "getVerificationListener",
        "()Lcom/sinch/verification/core/verification/response/VerificationListener;",
        "verificationService",
        "getVerificationService",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "verificationState",
        "Lcom/sinch/verification/core/internal/VerificationState;",
        "getVerificationState",
        "()Lcom/sinch/verification/core/internal/VerificationState;",
        "setVerificationState",
        "(Lcom/sinch/verification/core/internal/VerificationState;)V",
        "initiate",
        "",
        "onCodeInterceptionStopped",
        "onInitiate",
        "onPreInitiate",
        "",
        "onVerify",
        "verificationCode",
        "sourceType",
        "Lcom/sinch/verification/core/verification/model/VerificationSourceType;",
        "method",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "report",
        "stop",
        "update",
        "newState",
        "verify",
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
.field private final globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

.field private initResponseData:Lcom/sinch/verification/core/initiation/response/InitiationResponseData;

.field private final logger:Lcom/sinch/logging/Logger;

.field private final verificationListener:Lcom/sinch/verification/core/verification/response/VerificationListener;

.field private final verificationService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TService;"
        }
    .end annotation
.end field

.field private verificationState:Lcom/sinch/verification/core/internal/VerificationState;


# direct methods
.method public constructor <init>(Lcom/sinch/verification/core/config/method/VerificationMethodConfig;Lcom/sinch/verification/core/verification/response/VerificationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/config/method/VerificationMethodConfig<",
            "TService;>;",
            "Lcom/sinch/verification/core/verification/response/VerificationListener;",
            ")V"
        }
    .end annotation

    const-string v0, "verificationServiceConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationListener:Lcom/sinch/verification/core/verification/response/VerificationListener;

    .line 26
    invoke-static {p0}, Lcom/sinch/logging/LogKt;->logger(Ljava/lang/Object;)Lcom/sinch/logging/Logger;

    move-result-object p2

    iput-object p2, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->logger:Lcom/sinch/logging/Logger;

    .line 28
    invoke-virtual {p1}, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->getGlobalConfig()Lcom/sinch/verification/core/config/general/GlobalConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

    .line 29
    invoke-virtual {p1}, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->getApiService()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationService:Ljava/lang/Object;

    .line 35
    sget-object p1, Lcom/sinch/verification/core/internal/VerificationState$IDLE;->INSTANCE:Lcom/sinch/verification/core/internal/VerificationState$IDLE;

    check-cast p1, Lcom/sinch/verification/core/internal/VerificationState;

    iput-object p1, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationState:Lcom/sinch/verification/core/internal/VerificationState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sinch/verification/core/config/method/VerificationMethodConfig;Lcom/sinch/verification/core/verification/response/VerificationListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 20
    new-instance p2, Lcom/sinch/verification/core/verification/response/EmptyVerificationListener;

    invoke-direct {p2}, Lcom/sinch/verification/core/verification/response/EmptyVerificationListener;-><init>()V

    check-cast p2, Lcom/sinch/verification/core/verification/response/VerificationListener;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sinch/verification/core/config/method/VerificationMethod;-><init>(Lcom/sinch/verification/core/config/method/VerificationMethodConfig;Lcom/sinch/verification/core/verification/response/VerificationListener;)V

    return-void
.end method

.method public static synthetic verify$default(Lcom/sinch/verification/core/config/method/VerificationMethod;Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationMethodType;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sinch/verification/core/config/method/VerificationMethod;->verify(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationMethodType;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: verify"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final getGlobalConfig()Lcom/sinch/verification/core/config/general/GlobalConfig;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

    return-object v0
.end method

.method protected final getId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->initResponseData:Lcom/sinch/verification/core/initiation/response/InitiationResponseData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sinch/verification/core/initiation/response/InitiationResponseData;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getLogger()Lcom/sinch/logging/Logger;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->logger:Lcom/sinch/logging/Logger;

    return-object v0
.end method

.method protected final getRetrofit()Lretrofit2/Retrofit;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

    invoke-interface {v0}, Lcom/sinch/verification/core/config/general/GlobalConfig;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method protected final getVerificationListener()Lcom/sinch/verification/core/verification/response/VerificationListener;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationListener:Lcom/sinch/verification/core/verification/response/VerificationListener;

    return-object v0
.end method

.method protected final getVerificationService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TService;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationService:Ljava/lang/Object;

    return-object v0
.end method

.method public final getVerificationState()Lcom/sinch/verification/core/internal/VerificationState;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationState:Lcom/sinch/verification/core/internal/VerificationState;

    return-object v0
.end method

.method public final initiate()V
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/sinch/verification/core/config/method/VerificationMethod;->onPreInitiate()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationState:Lcom/sinch/verification/core/internal/VerificationState;

    invoke-virtual {v0}, Lcom/sinch/verification/core/internal/VerificationState;->getCanInitiate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->logger:Lcom/sinch/logging/Logger;

    const-string v3, "Initiating verification"

    invoke-static {v0, v3, v2, v1, v2}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 72
    new-instance v0, Lcom/sinch/verification/core/internal/VerificationState$Initialization;

    sget-object v1, Lcom/sinch/verification/core/internal/VerificationStateStatus;->ONGOING:Lcom/sinch/verification/core/internal/VerificationStateStatus;

    invoke-direct {v0, v1}, Lcom/sinch/verification/core/internal/VerificationState$Initialization;-><init>(Lcom/sinch/verification/core/internal/VerificationStateStatus;)V

    check-cast v0, Lcom/sinch/verification/core/internal/VerificationState;

    invoke-virtual {p0, v0}, Lcom/sinch/verification/core/config/method/VerificationMethod;->update(Lcom/sinch/verification/core/internal/VerificationState;)V

    .line 73
    invoke-virtual {p0}, Lcom/sinch/verification/core/config/method/VerificationMethod;->onInitiate()V

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->logger:Lcom/sinch/logging/Logger;

    const-string v3, "Initiate called however onPreInitiate or verificationState.canInitiate returned false"

    invoke-static {v0, v3, v2, v1, v2}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public onCodeInterceptionStopped()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationState:Lcom/sinch/verification/core/internal/VerificationState;

    sget-object v1, Lcom/sinch/verification/core/internal/VerificationState$ManuallyStopped;->INSTANCE:Lcom/sinch/verification/core/internal/VerificationState$ManuallyStopped;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/sinch/verification/core/config/method/VerificationMethod;->report()V

    :cond_0
    return-void
.end method

.method protected abstract onInitiate()V
.end method

.method protected onPreInitiate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onVerify(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationMethodType;)V
.end method

.method public report()V
    .locals 0

    return-void
.end method

.method public final setVerificationState(Lcom/sinch/verification/core/internal/VerificationState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationState:Lcom/sinch/verification/core/internal/VerificationState;

    return-void
.end method

.method public stop()V
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationState:Lcom/sinch/verification/core/internal/VerificationState;

    invoke-virtual {v0}, Lcom/sinch/verification/core/internal/VerificationState;->isVerificationProcessFinished()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->logger:Lcom/sinch/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Verification process already finished with state "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationState:Lcom/sinch/verification/core/internal/VerificationState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lcom/sinch/logging/Logger$DefaultImpls;->info$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->logger:Lcom/sinch/logging/Logger;

    const-string v3, "Stop called"

    invoke-static {v0, v3, v2, v1, v2}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/sinch/verification/core/internal/VerificationState$ManuallyStopped;->INSTANCE:Lcom/sinch/verification/core/internal/VerificationState$ManuallyStopped;

    check-cast v0, Lcom/sinch/verification/core/internal/VerificationState;

    invoke-virtual {p0, v0}, Lcom/sinch/verification/core/config/method/VerificationMethod;->update(Lcom/sinch/verification/core/internal/VerificationState;)V

    return-void
.end method

.method public update(Lcom/sinch/verification/core/internal/VerificationState;)V
    .locals 4

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->logger:Lcom/sinch/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Verification state update "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationState:Lcom/sinch/verification/core/internal/VerificationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 94
    iput-object p1, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationState:Lcom/sinch/verification/core/internal/VerificationState;

    return-void
.end method

.method public final verify(Ljava/lang/String;Lcom/sinch/verification/core/internal/VerificationMethodType;)V
    .locals 1

    const-string v0, "verificationCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/sinch/verification/core/verification/model/VerificationSourceType;->MANUAL:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sinch/verification/core/config/method/VerificationMethod;->verify(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationMethodType;)V

    return-void
.end method

.method public final verify(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationMethodType;)V
    .locals 5

    const-string v0, "verificationCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->verificationState:Lcom/sinch/verification/core/internal/VerificationState;

    invoke-virtual {v0}, Lcom/sinch/verification/core/internal/VerificationState;->getCanVerify()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->logger:Lcom/sinch/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Verifying "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 62
    new-instance v0, Lcom/sinch/verification/core/internal/VerificationState$Verification;

    sget-object v1, Lcom/sinch/verification/core/internal/VerificationStateStatus;->ONGOING:Lcom/sinch/verification/core/internal/VerificationStateStatus;

    invoke-direct {v0, v1}, Lcom/sinch/verification/core/internal/VerificationState$Verification;-><init>(Lcom/sinch/verification/core/internal/VerificationStateStatus;)V

    check-cast v0, Lcom/sinch/verification/core/internal/VerificationState;

    invoke-virtual {p0, v0}, Lcom/sinch/verification/core/config/method/VerificationMethod;->update(Lcom/sinch/verification/core/internal/VerificationState;)V

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lcom/sinch/verification/core/config/method/VerificationMethod;->onVerify(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationMethodType;)V

    return-void

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/sinch/verification/core/config/method/VerificationMethod;->logger:Lcom/sinch/logging/Logger;

    const-string p2, "Verify called however verificationState.canVerify returned false"

    invoke-static {p1, p2, v2, v1, v2}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
