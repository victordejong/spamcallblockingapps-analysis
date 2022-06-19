.class public Lnet/pubnative/lite/sdk/utils/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/utils/Logger$Level;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HyBid"

.field private static sLogLevel:Lnet/pubnative/lite/sdk/utils/Logger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Lnet/pubnative/lite/sdk/utils/Logger$Level;->info:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    sput-object v0, Lnet/pubnative/lite/sdk/utils/Logger;->sLogLevel:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-static {p0, p1, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 71
    sget-object p2, Lnet/pubnative/lite/sdk/utils/Logger;->sLogLevel:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/utils/Logger$Level;->getValue()I

    move-result p2

    sget-object v0, Lnet/pubnative/lite/sdk/utils/Logger$Level;->debug:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/utils/Logger$Level;->getValue()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, p1, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 83
    sget-object v0, Lnet/pubnative/lite/sdk/utils/Logger;->sLogLevel:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/utils/Logger$Level;->getValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/utils/Logger$Level;->error:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/utils/Logger$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HyBid"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static setLogLevel(Lnet/pubnative/lite/sdk/utils/Logger$Level;)V
    .locals 0

    .line 55
    sput-object p0, Lnet/pubnative/lite/sdk/utils/Logger;->sLogLevel:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, p1, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 77
    sget-object v0, Lnet/pubnative/lite/sdk/utils/Logger;->sLogLevel:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/utils/Logger$Level;->getValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/utils/Logger$Level;->warning:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/utils/Logger$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HyBid"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
