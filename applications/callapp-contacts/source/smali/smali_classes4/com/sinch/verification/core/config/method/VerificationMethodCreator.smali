.class public interface abstract Lcom/sinch/verification/core/config/method/VerificationMethodCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Listener:Ljava/lang/Object;",
        ">",
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u001b\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sinch/verification/core/config/method/VerificationMethodCreator;",
        "Listener",
        "",
        "build",
        "Lcom/sinch/verification/core/internal/Verification;",
        "initializationListener",
        "(Ljava/lang/Object;)Lcom/sinch/verification/core/config/method/VerificationMethodCreator;",
        "verificationListener",
        "Lcom/sinch/verification/core/verification/response/VerificationListener;",
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
.method public abstract build()Lcom/sinch/verification/core/internal/Verification;
.end method

.method public abstract initializationListener(Ljava/lang/Object;)Lcom/sinch/verification/core/config/method/VerificationMethodCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "Listener;",
            ")",
            "Lcom/sinch/verification/core/config/method/VerificationMethodCreator<",
            "T",
            "Listener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract verificationListener(Lcom/sinch/verification/core/verification/response/VerificationListener;)Lcom/sinch/verification/core/config/method/VerificationMethodCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/verification/response/VerificationListener;",
            ")",
            "Lcom/sinch/verification/core/config/method/VerificationMethodCreator<",
            "T",
            "Listener;",
            ">;"
        }
    .end annotation
.end method
