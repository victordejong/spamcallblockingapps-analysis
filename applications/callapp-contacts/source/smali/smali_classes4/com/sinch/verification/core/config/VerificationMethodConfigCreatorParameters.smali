.class public interface abstract Lcom/sinch/verification/core/config/VerificationMethodConfigCreatorParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Creator:",
        "Ljava/lang/Object;",
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
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J\u001b\u0010\u0003\u001a\u00028\u00002\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H&\u00a2\u0006\u0002\u0010\u0006J\u0017\u0010\u0007\u001a\u00028\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0002\u0010\tJ\u0015\u0010\n\u001a\u00028\u00002\u0006\u0010\n\u001a\u00020\u000bH&\u00a2\u0006\u0002\u0010\u000cJ\u0017\u0010\r\u001a\u00028\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0002\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sinch/verification/core/config/VerificationMethodConfigCreatorParameters;",
        "Creator",
        "",
        "acceptedLanguages",
        "",
        "Lcom/sinch/verification/core/verification/VerificationLanguage;",
        "(Ljava/util/List;)Ljava/lang/Object;",
        "custom",
        "",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "honourEarlyReject",
        "",
        "(Z)Ljava/lang/Object;",
        "reference",
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
.method public abstract acceptedLanguages(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;)TCreator;"
        }
    .end annotation
.end method

.method public abstract custom(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCreator;"
        }
    .end annotation
.end method

.method public abstract honourEarlyReject(Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TCreator;"
        }
    .end annotation
.end method

.method public abstract reference(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCreator;"
        }
    .end annotation
.end method
