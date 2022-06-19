.class public final Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Unauthorized;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unauthorized"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Unauthorized;",
        "",
        "()V",
        "AlreadyAuthorized",
        "",
        "AuthorizationHeader",
        "AuthorizationRequired",
        "Expired",
        "InvalidAuthorization",
        "InvalidCredentials",
        "InvalidSignature",
        "TimestampHeader",
        "UserBarred",
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
.field public static final AlreadyAuthorized:I = 0x9ca7

.field public static final AuthorizationHeader:I = 0x9ca4

.field public static final AuthorizationRequired:I = 0x9ca8

.field public static final Expired:I = 0x9ca9

.field public static final INSTANCE:Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Unauthorized;

.field public static final InvalidAuthorization:I = 0x9cab

.field public static final InvalidCredentials:I = 0x9cac

.field public static final InvalidSignature:I = 0x9ca6

.field public static final TimestampHeader:I = 0x9ca5

.field public static final UserBarred:I = 0x9caa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Unauthorized;

    invoke-direct {v0}, Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Unauthorized;-><init>()V

    sput-object v0, Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Unauthorized;->INSTANCE:Lcom/sinch/verification/core/internal/error/ApiErrorData$ErrorCodes$Unauthorized;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
