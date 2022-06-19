.class public final Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/config/method/VerificationMethodCreator;
.implements Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sinch/verification/core/config/method/VerificationMethodCreator<",
        "Lcom/sinch/verification/core/initiation/response/InitiationListener<",
        "-",
        "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
        ">;>;",
        "Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00102\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00012\u00020\u0005:\u0001\u0010B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\u0007\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00012\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J*\u0010\t\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00012\u0010\u0010\t\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0016J \u0010\u000c\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00012\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;",
        "Lcom/sinch/verification/core/config/method/VerificationMethodCreator;",
        "Lcom/sinch/verification/core/initiation/response/InitiationListener;",
        "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
        "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationListener;",
        "Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;",
        "()V",
        "config",
        "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;",
        "initializationListener",
        "logger",
        "Lcom/sinch/logging/Logger;",
        "verificationListener",
        "Lcom/sinch/verification/core/verification/response/VerificationListener;",
        "build",
        "Lcom/sinch/verification/core/internal/Verification;",
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
.field public static final Companion:Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;


# instance fields
.field private config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

.field private initializationListener:Lcom/sinch/verification/core/initiation/response/InitiationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sinch/verification/core/initiation/response/InitiationListener<",
            "-",
            "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/sinch/logging/Logger;

.field private verificationListener:Lcom/sinch/verification/core/verification/response/VerificationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->Companion:Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p0}, Lcom/sinch/logging/LogKt;->logger(Ljava/lang/Object;)Lcom/sinch/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->logger:Lcom/sinch/logging/Logger;

    .line 164
    new-instance v0, Lcom/sinch/verification/core/initiation/response/EmptyInitializationListener;

    invoke-direct {v0}, Lcom/sinch/verification/core/initiation/response/EmptyInitializationListener;-><init>()V

    check-cast v0, Lcom/sinch/verification/core/initiation/response/InitiationListener;

    iput-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->initializationListener:Lcom/sinch/verification/core/initiation/response/InitiationListener;

    .line 165
    new-instance v0, Lcom/sinch/verification/core/verification/response/EmptyVerificationListener;

    invoke-direct {v0}, Lcom/sinch/verification/core/verification/response/EmptyVerificationListener;-><init>()V

    check-cast v0, Lcom/sinch/verification/core/verification/response/VerificationListener;

    iput-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->verificationListener:Lcom/sinch/verification/core/verification/response/VerificationListener;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;
    .locals 1

    sget-object v0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->Companion:Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;

    invoke-virtual {v0}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;->getInstance()Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final build()Lcom/sinch/verification/core/internal/Verification;
    .locals 6

    .line 204
    new-instance v0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;

    .line 205
    iget-object v1, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    const-string v2, "config"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->initializationListener:Lcom/sinch/verification/core/initiation/response/InitiationListener;

    .line 207
    iget-object v4, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->verificationListener:Lcom/sinch/verification/core/verification/response/VerificationListener;

    const/4 v5, 0x0

    .line 204
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;-><init>(Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/verification/response/VerificationListener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 209
    iget-object v1, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->logger:Lcom/sinch/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Created FlashCallVerificationMethod with config: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v5, v3, v5}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 208
    check-cast v0, Lcom/sinch/verification/core/internal/Verification;

    return-object v0
.end method

.method public final config(Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;)Lcom/sinch/verification/core/config/method/VerificationMethodCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;",
            ")",
            "Lcom/sinch/verification/core/config/method/VerificationMethodCreator<",
            "Lcom/sinch/verification/core/initiation/response/InitiationListener<",
            "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;

    .line 176
    iput-object p1, v0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->config:Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;

    .line 175
    move-object p1, p0

    check-cast p1, Lcom/sinch/verification/core/config/method/VerificationMethodCreator;

    return-object p1
.end method

.method public final initializationListener(Lcom/sinch/verification/core/initiation/response/InitiationListener;)Lcom/sinch/verification/core/config/method/VerificationMethodCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/initiation/response/InitiationListener<",
            "-",
            "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
            ">;)",
            "Lcom/sinch/verification/core/config/method/VerificationMethodCreator<",
            "Lcom/sinch/verification/core/initiation/response/InitiationListener<",
            "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "initializationListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;

    .line 196
    iput-object p1, v0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->initializationListener:Lcom/sinch/verification/core/initiation/response/InitiationListener;

    .line 195
    move-object p1, p0

    check-cast p1, Lcom/sinch/verification/core/config/method/VerificationMethodCreator;

    return-object p1
.end method

.method public final bridge synthetic initializationListener(Ljava/lang/Object;)Lcom/sinch/verification/core/config/method/VerificationMethodCreator;
    .locals 0

    .line 144
    check-cast p1, Lcom/sinch/verification/core/initiation/response/InitiationListener;

    invoke-virtual {p0, p1}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->initializationListener(Lcom/sinch/verification/core/initiation/response/InitiationListener;)Lcom/sinch/verification/core/config/method/VerificationMethodCreator;

    move-result-object p1

    return-object p1
.end method

.method public final verificationListener(Lcom/sinch/verification/core/verification/response/VerificationListener;)Lcom/sinch/verification/core/config/method/VerificationMethodCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/verification/response/VerificationListener;",
            ")",
            "Lcom/sinch/verification/core/config/method/VerificationMethodCreator<",
            "Lcom/sinch/verification/core/initiation/response/InitiationListener<",
            "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "verificationListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;

    .line 186
    iput-object p1, v0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;->verificationListener:Lcom/sinch/verification/core/verification/response/VerificationListener;

    .line 185
    move-object p1, p0

    check-cast p1, Lcom/sinch/verification/core/config/method/VerificationMethodCreator;

    return-object p1
.end method
