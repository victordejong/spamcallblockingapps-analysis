.class public interface abstract Lcom/sinch/verification/core/initiation/VerificationInitiationData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0005\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sinch/verification/core/initiation/VerificationInitiationData;",
        "",
        "custom",
        "",
        "getCustom",
        "()Ljava/lang/String;",
        "honourEarlyReject",
        "",
        "getHonourEarlyReject",
        "()Z",
        "identity",
        "Lcom/sinch/verification/core/initiation/VerificationIdentity;",
        "getIdentity",
        "()Lcom/sinch/verification/core/initiation/VerificationIdentity;",
        "metadata",
        "Lcom/sinch/metadata/model/PhoneMetadata;",
        "getMetadata",
        "()Lcom/sinch/metadata/model/PhoneMetadata;",
        "method",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "getMethod",
        "()Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "reference",
        "getReference",
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
.method public abstract getCustom()Ljava/lang/String;
.end method

.method public abstract getHonourEarlyReject()Z
.end method

.method public abstract getIdentity()Lcom/sinch/verification/core/initiation/VerificationIdentity;
.end method

.method public abstract getMetadata()Lcom/sinch/metadata/model/PhoneMetadata;
.end method

.method public abstract getMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;
.end method

.method public abstract getReference()Ljava/lang/String;
.end method
