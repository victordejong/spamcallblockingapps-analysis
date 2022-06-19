.class public interface abstract Lcom/sinch/verification/core/config/InitialSetter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/config/InitialSetter$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LastSetter::Lcom/sinch/verification/core/config/VerificationMethodConfigCreator<",
        "T",
        "LastSetter;",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0012\u0008\u0000\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u00022\u00020\u0003J\u0015\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\u0007\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sinch/verification/core/config/InitialSetter;",
        "LastSetter",
        "Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;",
        "",
        "number",
        "",
        "(Ljava/lang/String;)Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;",
        "withVerificationProperties",
        "verificationMethodProperties",
        "Lcom/sinch/verification/core/config/method/VerificationMethodProperties;",
        "(Lcom/sinch/verification/core/config/method/VerificationMethodProperties;)Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract number(Ljava/lang/String;)Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")T",
            "LastSetter;"
        }
    .end annotation
.end method

.method public abstract withVerificationProperties(Lcom/sinch/verification/core/config/method/VerificationMethodProperties;)Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/config/method/VerificationMethodProperties;",
            ")T",
            "LastSetter;"
        }
    .end annotation
.end method
