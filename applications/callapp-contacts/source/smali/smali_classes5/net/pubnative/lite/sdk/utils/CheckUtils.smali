.class public Lnet/pubnative/lite/sdk/utils/CheckUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ZZLjava/lang/String;)Z
    .locals 0

    .line 29
    invoke-static {p0, p1, p2}, Lnet/pubnative/lite/sdk/utils/CheckUtils;->checkArgumentImpl(ZZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/Object;ZLjava/lang/String;)Z
    .locals 0

    .line 29
    invoke-static {p0, p1, p2}, Lnet/pubnative/lite/sdk/utils/CheckUtils;->checkNotNullImpl(Ljava/lang/Object;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkArgument(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-static {p0, v0, p1}, Lnet/pubnative/lite/sdk/utils/CheckUtils;->checkArgumentImpl(ZZLjava/lang/String;)Z

    return-void
.end method

.method private static checkArgumentImpl(ZZLjava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 61
    sget-object p0, Lnet/pubnative/lite/sdk/utils/CheckUtils;->TAG:Ljava/lang/String;

    invoke-static {p0, p2}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkNotNullImpl(Ljava/lang/Object;ZLjava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 75
    sget-object p0, Lnet/pubnative/lite/sdk/utils/CheckUtils;->TAG:Ljava/lang/String;

    invoke-static {p0, p2}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
