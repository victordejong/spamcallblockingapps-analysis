.class public final Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Forbidden;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Forbidden"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Forbidden;",
        "",
        "()V",
        "ForbiddenRequest",
        "",
        "InsufficientPrivileges",
        "InvalidScheme",
        "RestrictedAction",
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
.field public static final ForbiddenRequest:I = 0x9d6c

.field public static final INSTANCE:Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Forbidden;

.field public static final InsufficientPrivileges:I = 0x9d6e

.field public static final InvalidScheme:I = 0x9d6d

.field public static final RestrictedAction:I = 0x9d6f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Forbidden;

    invoke-direct {v0}, Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Forbidden;-><init>()V

    sput-object v0, Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Forbidden;->INSTANCE:Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Forbidden;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
