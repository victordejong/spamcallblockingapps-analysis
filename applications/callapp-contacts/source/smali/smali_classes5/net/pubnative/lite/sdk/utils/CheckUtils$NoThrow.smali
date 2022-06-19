.class public Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/utils/CheckUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoThrow"
.end annotation


# static fields
.field private static sStrictMode:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkArgument(ZLjava/lang/String;)Z
    .locals 1

    .line 44
    sget-boolean v0, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->sStrictMode:Z

    invoke-static {p0, v0, p1}, Lnet/pubnative/lite/sdk/utils/CheckUtils;->access$000(ZZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .line 48
    sget-boolean v0, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->sStrictMode:Z

    invoke-static {p0, v0, p1}, Lnet/pubnative/lite/sdk/utils/CheckUtils;->access$100(Ljava/lang/Object;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setStrictMode(Z)V
    .locals 0

    .line 40
    sput-boolean p0, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->sStrictMode:Z

    return-void
.end method
