.class public final Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;",
        "",
        "()V",
        "Between",
        "",
        "getBetween",
        "()Ljava/lang/String;",
        "Equal",
        "getEqual",
        "GreaterThan",
        "getGreaterThan",
        "GreaterThanOrEq",
        "getGreaterThanOrEq",
        "Like",
        "getLike",
        "NotEqual",
        "getNotEqual",
        "SmallerThan",
        "getSmallerThan",
        "SmallerThanOrEq",
        "getSmallerThanOrEq",
        "hybid.sdk.voyager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;

.field private static final Between:Ljava/lang/String;

.field private static final Equal:Ljava/lang/String;

.field private static final GreaterThan:Ljava/lang/String;

.field private static final GreaterThanOrEq:Ljava/lang/String;

.field private static final Like:Ljava/lang/String;

.field private static final NotEqual:Ljava/lang/String;

.field private static final SmallerThan:Ljava/lang/String;

.field private static final SmallerThanOrEq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 399
    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;-><init>()V

    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->$$INSTANCE:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;

    const-string v0, " = ?"

    .line 400
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->Equal:Ljava/lang/String;

    const-string v0, " != ?"

    .line 401
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->NotEqual:Ljava/lang/String;

    const-string v0, " > ?"

    .line 402
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->GreaterThan:Ljava/lang/String;

    const-string v0, " >= ?"

    .line 403
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->GreaterThanOrEq:Ljava/lang/String;

    const-string v0, " < ?"

    .line 404
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->SmallerThan:Ljava/lang/String;

    const-string v0, " <= ?"

    .line 405
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->SmallerThanOrEq:Ljava/lang/String;

    const-string v0, " BETWEEN ? AND ?"

    .line 406
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->Between:Ljava/lang/String;

    const-string v0, " LIKE ?"

    .line 407
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->Like:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBetween()Ljava/lang/String;
    .locals 1

    .line 406
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->Between:Ljava/lang/String;

    return-object v0
.end method

.method public final getEqual()Ljava/lang/String;
    .locals 1

    .line 400
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->Equal:Ljava/lang/String;

    return-object v0
.end method

.method public final getGreaterThan()Ljava/lang/String;
    .locals 1

    .line 402
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->GreaterThan:Ljava/lang/String;

    return-object v0
.end method

.method public final getGreaterThanOrEq()Ljava/lang/String;
    .locals 1

    .line 403
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->GreaterThanOrEq:Ljava/lang/String;

    return-object v0
.end method

.method public final getLike()Ljava/lang/String;
    .locals 1

    .line 407
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->Like:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotEqual()Ljava/lang/String;
    .locals 1

    .line 401
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->NotEqual:Ljava/lang/String;

    return-object v0
.end method

.method public final getSmallerThan()Ljava/lang/String;
    .locals 1

    .line 404
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->SmallerThan:Ljava/lang/String;

    return-object v0
.end method

.method public final getSmallerThanOrEq()Ljava/lang/String;
    .locals 1

    .line 405
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->SmallerThanOrEq:Ljava/lang/String;

    return-object v0
.end method
