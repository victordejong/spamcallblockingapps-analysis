.class public final Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u0008\u001a\u00020\u0004H\u0086\u0002R\u001a\u0010\u0003\u001a\u00020\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;",
        "instance$annotations",
        "getInstance",
        "()Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;",
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

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;-><init>()V

    return-void
.end method

.method public static synthetic instance$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;
    .locals 2

    .line 157
    new-instance v0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;

    return-object v0
.end method

.method public final invoke()Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;
    .locals 1

    .line 159
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;->getInstance()Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;

    move-result-object v0

    return-object v0
.end method
