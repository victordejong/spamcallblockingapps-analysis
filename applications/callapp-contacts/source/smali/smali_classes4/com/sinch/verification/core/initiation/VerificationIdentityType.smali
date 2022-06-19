.class public final enum Lcom/sinch/verification/core/initiation/VerificationIdentityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/initiation/VerificationIdentityType$Companion;,
        Lcom/sinch/verification/core/initiation/VerificationIdentityType$$serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sinch/verification/core/initiation/VerificationIdentityType;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0087\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0008\tB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sinch/verification/core/initiation/VerificationIdentityType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "NUMBER",
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
.field private static final synthetic $VALUES:[Lcom/sinch/verification/core/initiation/VerificationIdentityType;

.field public static final Companion:Lcom/sinch/verification/core/initiation/VerificationIdentityType$Companion;

.field public static final enum NUMBER:Lcom/sinch/verification/core/initiation/VerificationIdentityType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    new-instance v1, Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    const-string v2, "NUMBER"

    const/4 v3, 0x0

    const-string v4, "number"

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/verification/core/initiation/VerificationIdentityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/verification/core/initiation/VerificationIdentityType;->NUMBER:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sinch/verification/core/initiation/VerificationIdentityType;->$VALUES:[Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    new-instance v0, Lcom/sinch/verification/core/initiation/VerificationIdentityType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/core/initiation/VerificationIdentityType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/core/initiation/VerificationIdentityType;->Companion:Lcom/sinch/verification/core/initiation/VerificationIdentityType$Companion;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sinch/verification/core/initiation/VerificationIdentityType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sinch/verification/core/initiation/VerificationIdentityType;
    .locals 1

    const-class v0, Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    return-object p0
.end method

.method public static values()[Lcom/sinch/verification/core/initiation/VerificationIdentityType;
    .locals 1

    sget-object v0, Lcom/sinch/verification/core/initiation/VerificationIdentityType;->$VALUES:[Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    invoke-virtual {v0}, [Lcom/sinch/verification/core/initiation/VerificationIdentityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/sinch/verification/core/initiation/VerificationIdentityType;->value:Ljava/lang/String;

    return-object v0
.end method
