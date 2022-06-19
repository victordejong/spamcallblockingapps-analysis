.class public final enum Lcom/sinch/verification/core/internal/VerificationStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/internal/VerificationStatus$Companion;,
        Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sinch/verification/core/internal/VerificationStatus;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0087\u0001\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\r\u000eB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sinch/verification/core/internal/VerificationStatus;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "PENDING",
        "SUCCESSFUL",
        "FAILED",
        "DENIED",
        "ABORTED",
        "ERROR",
        "$serializer",
        "Companion",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sinch/verification/core/internal/VerificationStatus;

.field public static final enum ABORTED:Lcom/sinch/verification/core/internal/VerificationStatus;

.field public static final Companion:Lcom/sinch/verification/core/internal/VerificationStatus$Companion;

.field public static final enum DENIED:Lcom/sinch/verification/core/internal/VerificationStatus;

.field public static final enum ERROR:Lcom/sinch/verification/core/internal/VerificationStatus;

.field public static final enum FAILED:Lcom/sinch/verification/core/internal/VerificationStatus;

.field public static final enum PENDING:Lcom/sinch/verification/core/internal/VerificationStatus;

.field public static final enum SUCCESSFUL:Lcom/sinch/verification/core/internal/VerificationStatus;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sinch/verification/core/internal/VerificationStatus;

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationStatus;

    const-string v2, "PENDING"

    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, v2, v3, v2}, Lcom/sinch/verification/core/internal/VerificationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/verification/core/internal/VerificationStatus;->PENDING:Lcom/sinch/verification/core/internal/VerificationStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationStatus;

    const-string v2, "SUCCESSFUL"

    const/4 v3, 0x1

    .line 24
    invoke-direct {v1, v2, v3, v2}, Lcom/sinch/verification/core/internal/VerificationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/verification/core/internal/VerificationStatus;->SUCCESSFUL:Lcom/sinch/verification/core/internal/VerificationStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationStatus;

    const-string v2, "FAILED"

    const/4 v3, 0x2

    const-string v4, "FAIL"

    .line 30
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/verification/core/internal/VerificationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/verification/core/internal/VerificationStatus;->FAILED:Lcom/sinch/verification/core/internal/VerificationStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationStatus;

    const-string v2, "DENIED"

    const/4 v3, 0x3

    .line 36
    invoke-direct {v1, v2, v3, v2}, Lcom/sinch/verification/core/internal/VerificationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/verification/core/internal/VerificationStatus;->DENIED:Lcom/sinch/verification/core/internal/VerificationStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationStatus;

    const-string v3, "ABORTED"

    const/4 v4, 0x4

    .line 42
    invoke-direct {v1, v3, v4, v2}, Lcom/sinch/verification/core/internal/VerificationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/verification/core/internal/VerificationStatus;->ABORTED:Lcom/sinch/verification/core/internal/VerificationStatus;

    aput-object v1, v0, v4

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationStatus;

    const-string v2, "ERROR"

    const/4 v3, 0x5

    .line 48
    invoke-direct {v1, v2, v3, v2}, Lcom/sinch/verification/core/internal/VerificationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/verification/core/internal/VerificationStatus;->ERROR:Lcom/sinch/verification/core/internal/VerificationStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sinch/verification/core/internal/VerificationStatus;->$VALUES:[Lcom/sinch/verification/core/internal/VerificationStatus;

    new-instance v0, Lcom/sinch/verification/core/internal/VerificationStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/core/internal/VerificationStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/core/internal/VerificationStatus;->Companion:Lcom/sinch/verification/core/internal/VerificationStatus$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sinch/verification/core/internal/VerificationStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sinch/verification/core/internal/VerificationStatus;
    .locals 1

    const-class v0, Lcom/sinch/verification/core/internal/VerificationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sinch/verification/core/internal/VerificationStatus;

    return-object p0
.end method

.method public static values()[Lcom/sinch/verification/core/internal/VerificationStatus;
    .locals 1

    sget-object v0, Lcom/sinch/verification/core/internal/VerificationStatus;->$VALUES:[Lcom/sinch/verification/core/internal/VerificationStatus;

    invoke-virtual {v0}, [Lcom/sinch/verification/core/internal/VerificationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sinch/verification/core/internal/VerificationStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/sinch/verification/core/internal/VerificationStatus;->value:Ljava/lang/String;

    return-object v0
.end method
