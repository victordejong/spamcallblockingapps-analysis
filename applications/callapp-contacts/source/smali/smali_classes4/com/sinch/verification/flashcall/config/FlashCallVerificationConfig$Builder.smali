.class public final Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;
.super Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder<",
        "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;",
        ">;",
        "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0002:\u0001\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000cH\u0016J\u0012\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;",
        "Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;",
        "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;",
        "()V",
        "globalConfig",
        "Lcom/sinch/verification/core/config/general/GlobalConfig;",
        "acceptedLanguages",
        "",
        "Lcom/sinch/verification/core/verification/VerificationLanguage;",
        "build",
        "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;",
        "custom",
        "",
        "Lcom/sinch/verification/core/config/InitialSetter;",
        "honourEarlyReject",
        "",
        "number",
        "reference",
        "Companion",
        "verification-flashcall_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;


# instance fields
.field private globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->Companion:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/sinch/verification/core/config/GlobalConfigSetter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sinch/verification/core/config/GlobalConfigSetter<",
            "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->Companion:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;->getInstance()Lcom/sinch/verification/core/config/GlobalConfigSetter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final acceptedLanguages(Ljava/util/List;)Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;)",
            "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;"
        }
    .end annotation

    const-string v0, "acceptedLanguages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->getLogger()Lcom/sinch/logging/Logger;

    move-result-object p1

    const-string v0, "This verification method currently does not support accepted languages"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 124
    move-object p1, p0

    check-cast p1, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;

    return-object p1
.end method

.method public final bridge synthetic acceptedLanguages(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->acceptedLanguages(Ljava/util/List;)Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;
    .locals 7

    .line 69
    new-instance v6, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    .line 70
    iget-object v1, p0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

    if-nez v1, :cond_0

    const-string v0, "globalConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->getHonourEarlyReject()Z

    move-result v3

    .line 73
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->getCustom()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->getReference()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;-><init>(Lcom/sinch/verification/core/config/general/GlobalConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->build()Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public final custom(Ljava/lang/String;)Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;
    .locals 1

    .line 91
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;

    .line 92
    invoke-virtual {v0, p1}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->setCustom(Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic custom(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->custom(Ljava/lang/String;)Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final globalConfig(Lcom/sinch/verification/core/config/general/GlobalConfig;)Lcom/sinch/verification/core/config/InitialSetter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/config/general/GlobalConfig;",
            ")",
            "Lcom/sinch/verification/core/config/InitialSetter<",
            "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;",
            ">;"
        }
    .end annotation

    const-string v0, "globalConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;

    .line 111
    iput-object p1, v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

    .line 110
    move-object p1, p0

    check-cast p1, Lcom/sinch/verification/core/config/InitialSetter;

    return-object p1
.end method

.method public final honourEarlyReject(Z)Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;
    .locals 1

    .line 82
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;

    .line 83
    invoke-virtual {v0, p1}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->setHonourEarlyReject(Z)V

    return-object v0
.end method

.method public final bridge synthetic honourEarlyReject(Z)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->honourEarlyReject(Z)Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic number(Ljava/lang/String;)Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->number(Ljava/lang/String;)Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;

    move-result-object p1

    check-cast p1, Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;

    return-object p1
.end method

.method public final number(Ljava/lang/String;)Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;

    .line 120
    invoke-virtual {v0, p1}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->setNumber(Ljava/lang/String;)V

    .line 119
    move-object p1, p0

    check-cast p1, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;

    return-object p1
.end method

.method public final reference(Ljava/lang/String;)Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;
    .locals 1

    .line 100
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;

    .line 101
    invoke-virtual {v0, p1}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->setReference(Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic reference(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;->reference(Ljava/lang/String;)Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;

    move-result-object p1

    return-object p1
.end method
