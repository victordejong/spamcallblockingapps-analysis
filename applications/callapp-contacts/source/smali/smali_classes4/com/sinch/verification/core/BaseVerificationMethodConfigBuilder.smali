.class public abstract Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/config/GlobalConfigSetter;
.implements Lcom/sinch/verification/core/config/InitialSetter;
.implements Lcom/sinch/verification/core/config/VerificationMethodConfigCreatorParameters;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sinch/verification/core/config/VerificationMethodConfigCreator<",
        "TT;*>;>",
        "Ljava/lang/Object;",
        "Lcom/sinch/verification/core/config/GlobalConfigSetter<",
        "TT;>;",
        "Lcom/sinch/verification/core/config/InitialSetter<",
        "TT;>;",
        "Lcom/sinch/verification/core/config/VerificationMethodConfigCreatorParameters<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000*\u0012\u0008\u0000\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006R \u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001bX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u000fX\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0011\"\u0004\u0008 \u0010\u0013R\u001c\u0010!\u001a\u0004\u0018\u00010\u000fX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0011\"\u0004\u0008#\u0010\u0013\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;",
        "T",
        "Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;",
        "Lcom/sinch/verification/core/config/GlobalConfigSetter;",
        "Lcom/sinch/verification/core/config/InitialSetter;",
        "Lcom/sinch/verification/core/config/VerificationMethodConfigCreatorParameters;",
        "()V",
        "acceptedLanguages",
        "",
        "Lcom/sinch/verification/core/verification/VerificationLanguage;",
        "getAcceptedLanguages",
        "()Ljava/util/List;",
        "setAcceptedLanguages",
        "(Ljava/util/List;)V",
        "custom",
        "",
        "getCustom",
        "()Ljava/lang/String;",
        "setCustom",
        "(Ljava/lang/String;)V",
        "honourEarlyReject",
        "",
        "getHonourEarlyReject",
        "()Z",
        "setHonourEarlyReject",
        "(Z)V",
        "logger",
        "Lcom/sinch/logging/Logger;",
        "getLogger",
        "()Lcom/sinch/logging/Logger;",
        "number",
        "getNumber",
        "setNumber",
        "reference",
        "getReference",
        "setReference",
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
.field private acceptedLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private custom:Ljava/lang/String;

.field private honourEarlyReject:Z

.field private final logger:Lcom/sinch/logging/Logger;

.field protected number:Ljava/lang/String;

.field private reference:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p0}, Lcom/sinch/logging/LogKt;->logger(Ljava/lang/Object;)Lcom/sinch/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->logger:Lcom/sinch/logging/Logger;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->honourEarlyReject:Z

    .line 1071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->acceptedLanguages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final getAcceptedLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->acceptedLanguages:Ljava/util/List;

    return-object v0
.end method

.method protected final getCustom()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->custom:Ljava/lang/String;

    return-object v0
.end method

.method protected final getHonourEarlyReject()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->honourEarlyReject:Z

    return v0
.end method

.method protected final getLogger()Lcom/sinch/logging/Logger;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->logger:Lcom/sinch/logging/Logger;

    return-object v0
.end method

.method protected final getNumber()Ljava/lang/String;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->number:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "number"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getReference()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->reference:Ljava/lang/String;

    return-object v0
.end method

.method protected final setAcceptedLanguages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->acceptedLanguages:Ljava/util/List;

    return-void
.end method

.method protected final setCustom(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->custom:Ljava/lang/String;

    return-void
.end method

.method protected final setHonourEarlyReject(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->honourEarlyReject:Z

    return-void
.end method

.method protected final setNumber(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->number:Ljava/lang/String;

    return-void
.end method

.method protected final setReference(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;->reference:Ljava/lang/String;

    return-void
.end method

.method public withVerificationProperties(Lcom/sinch/verification/core/config/method/VerificationMethodProperties;)Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/config/method/VerificationMethodProperties;",
            ")TT;"
        }
    .end annotation

    const-string/jumbo v0, "verificationMethodProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p0, p1}, Lcom/sinch/verification/core/config/InitialSetter$DefaultImpls;->withVerificationProperties(Lcom/sinch/verification/core/config/InitialSetter;Lcom/sinch/verification/core/config/method/VerificationMethodProperties;)Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;

    move-result-object p1

    return-object p1
.end method
