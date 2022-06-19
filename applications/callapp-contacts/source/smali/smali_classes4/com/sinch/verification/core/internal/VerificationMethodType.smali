.class public final enum Lcom/sinch/verification/core/internal/VerificationMethodType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/internal/VerificationMethodType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0087\u0001\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "allowsManualVerification",
        "",
        "getAllowsManualVerification",
        "()Z",
        "getValue",
        "()Ljava/lang/String;",
        "SMS",
        "FLASHCALL",
        "CALLOUT",
        "SEAMLESS",
        "AUTO",
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
.field private static final synthetic $VALUES:[Lcom/sinch/verification/core/internal/VerificationMethodType;

.field public static final enum AUTO:Lcom/sinch/verification/core/internal/VerificationMethodType;

.field public static final enum CALLOUT:Lcom/sinch/verification/core/internal/VerificationMethodType;

.field public static final Companion:Lcom/sinch/verification/core/internal/VerificationMethodType$Companion;

.field public static final enum FLASHCALL:Lcom/sinch/verification/core/internal/VerificationMethodType;

.field public static final enum SEAMLESS:Lcom/sinch/verification/core/internal/VerificationMethodType;

.field public static final enum SMS:Lcom/sinch/verification/core/internal/VerificationMethodType;

.field private static final descriptor:Lkotlinx/serialization/SerialDescriptor;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sinch/verification/core/internal/VerificationMethodType;

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationMethodType;

    const-string v2, "SMS"

    const/4 v3, 0x0

    const-string v4, "sms"

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/verification/core/internal/VerificationMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/verification/core/internal/VerificationMethodType;->SMS:Lcom/sinch/verification/core/internal/VerificationMethodType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationMethodType;

    const-string v2, "FLASHCALL"

    const/4 v3, 0x1

    const-string v4, "flashCall"

    .line 22
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/verification/core/internal/VerificationMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/verification/core/internal/VerificationMethodType;->FLASHCALL:Lcom/sinch/verification/core/internal/VerificationMethodType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationMethodType;

    const-string v2, "CALLOUT"

    const/4 v3, 0x2

    const-string v4, "callout"

    .line 28
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/verification/core/internal/VerificationMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/verification/core/internal/VerificationMethodType;->CALLOUT:Lcom/sinch/verification/core/internal/VerificationMethodType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationMethodType;

    const-string v2, "SEAMLESS"

    const/4 v3, 0x3

    const-string v4, "seamless"

    .line 34
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/verification/core/internal/VerificationMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/verification/core/internal/VerificationMethodType;->SEAMLESS:Lcom/sinch/verification/core/internal/VerificationMethodType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/verification/core/internal/VerificationMethodType;

    const-string v2, "AUTO"

    const/4 v3, 0x4

    const-string v4, "auto"

    .line 40
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/verification/core/internal/VerificationMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/verification/core/internal/VerificationMethodType;->AUTO:Lcom/sinch/verification/core/internal/VerificationMethodType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sinch/verification/core/internal/VerificationMethodType;->$VALUES:[Lcom/sinch/verification/core/internal/VerificationMethodType;

    new-instance v0, Lcom/sinch/verification/core/internal/VerificationMethodType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/core/internal/VerificationMethodType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/core/internal/VerificationMethodType;->Companion:Lcom/sinch/verification/core/internal/VerificationMethodType$Companion;

    .line 55
    sget-object v0, Lkotlinx/serialization/j$i;->a:Lkotlinx/serialization/j$i;

    check-cast v0, Lkotlinx/serialization/j;

    const-string v1, "VerificationMethodType"

    invoke-static {v1, v0}, Lkotlinx/serialization/m;->a(Ljava/lang/String;Lkotlinx/serialization/j;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lcom/sinch/verification/core/internal/VerificationMethodType;->descriptor:Lkotlinx/serialization/SerialDescriptor;

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

    iput-object p3, p0, Lcom/sinch/verification/core/internal/VerificationMethodType;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDescriptor$cp()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    .line 10
    sget-object v0, Lcom/sinch/verification/core/internal/VerificationMethodType;->descriptor:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sinch/verification/core/internal/VerificationMethodType;
    .locals 1

    const-class v0, Lcom/sinch/verification/core/internal/VerificationMethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-object p0
.end method

.method public static values()[Lcom/sinch/verification/core/internal/VerificationMethodType;
    .locals 1

    sget-object v0, Lcom/sinch/verification/core/internal/VerificationMethodType;->$VALUES:[Lcom/sinch/verification/core/internal/VerificationMethodType;

    invoke-virtual {v0}, [Lcom/sinch/verification/core/internal/VerificationMethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-object v0
.end method


# virtual methods
.method public final getAllowsManualVerification()Z
    .locals 2

    .line 45
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/core/internal/VerificationMethodType;

    sget-object v1, Lcom/sinch/verification/core/internal/VerificationMethodType;->SEAMLESS:Lcom/sinch/verification/core/internal/VerificationMethodType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/sinch/verification/core/internal/VerificationMethodType;->value:Ljava/lang/String;

    return-object v0
.end method
