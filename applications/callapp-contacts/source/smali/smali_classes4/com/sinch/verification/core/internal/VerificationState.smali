.class public abstract Lcom/sinch/verification/core/internal/VerificationState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/internal/VerificationState$IDLE;,
        Lcom/sinch/verification/core/internal/VerificationState$ManuallyStopped;,
        Lcom/sinch/verification/core/internal/VerificationState$Initialization;,
        Lcom/sinch/verification/core/internal/VerificationState$Verification;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u000b\u000c\r\u000eB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0006R\u0011\u0010\n\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0006\u0082\u0001\u0004\u000f\u0010\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sinch/verification/core/internal/VerificationState;",
        "",
        "()V",
        "canInitiate",
        "",
        "getCanInitiate",
        "()Z",
        "canVerify",
        "getCanVerify",
        "isVerificationProcessFinished",
        "isVerified",
        "IDLE",
        "Initialization",
        "ManuallyStopped",
        "Verification",
        "Lcom/sinch/verification/core/internal/VerificationState$IDLE;",
        "Lcom/sinch/verification/core/internal/VerificationState$ManuallyStopped;",
        "Lcom/sinch/verification/core/internal/VerificationState$Initialization;",
        "Lcom/sinch/verification/core/internal/VerificationState$Verification;",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/sinch/verification/core/internal/VerificationState;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCanInitiate()Z
    .locals 1

    .line 40
    sget-object v0, Lcom/sinch/verification/core/internal/VerificationState$IDLE;->INSTANCE:Lcom/sinch/verification/core/internal/VerificationState$IDLE;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 41
    :cond_0
    instance-of v0, p0, Lcom/sinch/verification/core/internal/VerificationState$Initialization;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/core/internal/VerificationState$Initialization;

    invoke-virtual {v0}, Lcom/sinch/verification/core/internal/VerificationState$Initialization;->getStatus()Lcom/sinch/verification/core/internal/VerificationStateStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sinch/verification/core/internal/VerificationStateStatus;->isFinished()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getCanVerify()Z
    .locals 2

    .line 50
    instance-of v0, p0, Lcom/sinch/verification/core/internal/VerificationState$Verification;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/core/internal/VerificationState$Verification;

    invoke-virtual {v0}, Lcom/sinch/verification/core/internal/VerificationState$Verification;->getStatus()Lcom/sinch/verification/core/internal/VerificationStateStatus;

    move-result-object v0

    sget-object v1, Lcom/sinch/verification/core/internal/VerificationStateStatus;->SUCCESS:Lcom/sinch/verification/core/internal/VerificationStateStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isVerificationProcessFinished()Z
    .locals 4

    .line 59
    instance-of v0, p0, Lcom/sinch/verification/core/internal/VerificationState$Verification;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/core/internal/VerificationState$Verification;

    invoke-virtual {v0}, Lcom/sinch/verification/core/internal/VerificationState$Verification;->getStatus()Lcom/sinch/verification/core/internal/VerificationStateStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sinch/verification/core/internal/VerificationStateStatus;->isFinished()Z

    move-result v0

    return v0

    .line 60
    :cond_0
    instance-of v0, p0, Lcom/sinch/verification/core/internal/VerificationState$Initialization;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/core/internal/VerificationState$Initialization;

    invoke-virtual {v0}, Lcom/sinch/verification/core/internal/VerificationState$Initialization;->getStatus()Lcom/sinch/verification/core/internal/VerificationStateStatus;

    move-result-object v0

    sget-object v3, Lcom/sinch/verification/core/internal/VerificationStateStatus;->ERROR:Lcom/sinch/verification/core/internal/VerificationStateStatus;

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    return v1

    .line 61
    :cond_2
    sget-object v0, Lcom/sinch/verification/core/internal/VerificationState$ManuallyStopped;->INSTANCE:Lcom/sinch/verification/core/internal/VerificationState$ManuallyStopped;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 62
    :cond_3
    sget-object v0, Lcom/sinch/verification/core/internal/VerificationState$IDLE;->INSTANCE:Lcom/sinch/verification/core/internal/VerificationState$IDLE;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final isVerified()Z
    .locals 3

    .line 33
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/core/internal/VerificationState;

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationState$Verification;

    sget-object v2, Lcom/sinch/verification/core/internal/VerificationStateStatus;->SUCCESS:Lcom/sinch/verification/core/internal/VerificationStateStatus;

    invoke-direct {v1, v2}, Lcom/sinch/verification/core/internal/VerificationState$Verification;-><init>(Lcom/sinch/verification/core/internal/VerificationStateStatus;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
