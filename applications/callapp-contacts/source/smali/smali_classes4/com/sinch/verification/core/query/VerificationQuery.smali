.class public interface abstract Lcom/sinch/verification/core/query/VerificationQuery;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sinch/verification/core/query/VerificationQuery;",
        "",
        "queryByEndpoint",
        "",
        "method",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "number",
        "",
        "callback",
        "Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;",
        "queryById",
        "id",
        "queryByReference",
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
.method public abstract queryByEndpoint(Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V
.end method

.method public abstract queryById(Ljava/lang/String;Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V
.end method

.method public abstract queryByReference(Ljava/lang/String;Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V
.end method
