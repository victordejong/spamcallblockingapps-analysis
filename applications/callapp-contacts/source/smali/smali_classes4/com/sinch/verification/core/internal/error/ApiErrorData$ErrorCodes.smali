.class public final Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/core/internal/error/ApiErrorData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorCodes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$BadRequest;,
        Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Unauthorized;,
        Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$PaymentRequired;,
        Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Forbidden;,
        Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$NotFound;,
        Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Conflict;,
        Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$UnprocessableEntity;,
        Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$TooManyRequests;,
        Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$InternalServerError;,
        Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$NotImplemented;,
        Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$ServiceUnavailable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000b\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\rB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes;",
        "",
        "()V",
        "BadRequest",
        "Conflict",
        "Forbidden",
        "InternalServerError",
        "NotFound",
        "NotImplemented",
        "PaymentRequired",
        "ServiceUnavailable",
        "TooManyRequests",
        "Unauthorized",
        "UnprocessableEntity",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes;

    invoke-direct {v0}, Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes;-><init>()V

    sput-object v0, Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes;->INSTANCE:Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
