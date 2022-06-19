.class public final Lcom/sinch/verification/core/config/InitialSetter$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/core/config/InitialSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static withVerificationProperties(Lcom/sinch/verification/core/config/InitialSetter;Lcom/sinch/verification/core/config/method/VerificationMethodProperties;)Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "LastSetter::Lcom/sinch/verification/core/config/VerificationMethodConfigCreator<",
            "T",
            "LastSetter;",
            "*>;>(",
            "Lcom/sinch/verification/core/config/InitialSetter<",
            "T",
            "LastSetter;",
            ">;",
            "Lcom/sinch/verification/core/config/method/VerificationMethodProperties;",
            ")T",
            "LastSetter;"
        }
    .end annotation

    const-string v0, "verificationMethodProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Lcom/sinch/verification/core/config/method/VerificationMethodProperties;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sinch/verification/core/config/InitialSetter;->number(Ljava/lang/String;)Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;

    move-result-object p0

    .line 19
    invoke-interface {p1}, Lcom/sinch/verification/core/config/method/VerificationMethodProperties;->getCustom()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;->custom(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;

    .line 20
    invoke-interface {p1}, Lcom/sinch/verification/core/config/method/VerificationMethodProperties;->getHonourEarlyReject()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;->honourEarlyReject(Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;

    .line 21
    invoke-interface {p1}, Lcom/sinch/verification/core/config/method/VerificationMethodProperties;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;->acceptedLanguages(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;

    .line 22
    invoke-interface {p1}, Lcom/sinch/verification/core/config/method/VerificationMethodProperties;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;->reference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;

    return-object p0
.end method
