.class public final Lcom/sinch/verification/core/internal/error/ApiCallException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sinch/verification/core/internal/error/ApiCallException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "data",
        "Lcom/sinch/verification/core/internal/error/ApiErrorData;",
        "(Lcom/sinch/verification/core/internal/error/ApiErrorData;)V",
        "getData",
        "()Lcom/sinch/verification/core/internal/error/ApiErrorData;",
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
.field private final data:Lcom/sinch/verification/core/internal/error/ApiErrorData;


# direct methods
.method public constructor <init>(Lcom/sinch/verification/core/internal/error/ApiErrorData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/sinch/verification/core/internal/error/ApiErrorData;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sinch/verification/core/internal/error/ApiCallException;->data:Lcom/sinch/verification/core/internal/error/ApiErrorData;

    return-void
.end method


# virtual methods
.method public final getData()Lcom/sinch/verification/core/internal/error/ApiErrorData;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/sinch/verification/core/internal/error/ApiCallException;->data:Lcom/sinch/verification/core/internal/error/ApiErrorData;

    return-object v0
.end method
