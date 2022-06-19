.class public final Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0086\u0002R \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0006\u0010\u0002\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/sinch/verification/core/config/GlobalConfigSetter;",
        "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;",
        "instance$annotations",
        "getInstance",
        "()Lcom/sinch/verification/core/config/GlobalConfigSetter;",
        "invoke",
        "verification-flashcall_productionRelease"
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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;-><init>()V

    return-void
.end method

.method public static synthetic instance$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/sinch/verification/core/config/GlobalConfigSetter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sinch/verification/core/config/GlobalConfigSetter<",
            "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/sinch/verification/core/config/GlobalConfigSetter;

    return-object v0
.end method

.method public final invoke()Lcom/sinch/verification/core/config/GlobalConfigSetter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sinch/verification/core/config/GlobalConfigSetter<",
            "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;",
            ">;"
        }
    .end annotation

    .line 58
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;->getInstance()Lcom/sinch/verification/core/config/GlobalConfigSetter;

    move-result-object v0

    return-object v0
.end method
