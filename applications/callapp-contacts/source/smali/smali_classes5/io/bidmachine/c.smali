.class final Lio/bidmachine/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ADVERTISING_ID:Ljava/lang/String; = "00000000-0000-0000-0000-000000000000"

.field private static deviceAdvertisingId:Ljava/lang/String; = null

.field private static deviceAdvertisingIdWasGenerated:Z = false

.field private static limitAdTrackingEnabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAdvertisingId(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "00000000-0000-0000-0000-000000000000"

    if-eqz p1, :cond_0

    return-object v0

    .line 39
    :cond_0
    sget-object p1, Lio/bidmachine/c;->deviceAdvertisingId:Ljava/lang/String;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 40
    sput-boolean p1, Lio/bidmachine/c;->deviceAdvertisingIdWasGenerated:Z

    .line 41
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getAdvertisingUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    .line 47
    sput-boolean p0, Lio/bidmachine/c;->deviceAdvertisingIdWasGenerated:Z

    return-object p1
.end method

.method public static isDeviceAdvertisingIdWasGenerated()Z
    .locals 1

    .line 53
    sget-boolean v0, Lio/bidmachine/c;->deviceAdvertisingIdWasGenerated:Z

    return v0
.end method

.method static isLimitAdTrackingEnabled()Z
    .locals 1

    .line 24
    sget-boolean v0, Lio/bidmachine/c;->limitAdTrackingEnabled:Z

    return v0
.end method

.method static setDeviceAdvertisingId(Ljava/lang/String;)V
    .locals 0

    .line 32
    sput-object p0, Lio/bidmachine/c;->deviceAdvertisingId:Ljava/lang/String;

    return-void
.end method

.method static setLimitAdTrackingEnabled(Z)V
    .locals 0

    .line 28
    sput-boolean p0, Lio/bidmachine/c;->limitAdTrackingEnabled:Z

    return-void
.end method

.method static syncUpdateInfo(Landroid/content/Context;)V
    .locals 2

    .line 57
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 59
    :try_start_0
    new-instance v1, Lio/bidmachine/c$1;

    invoke-direct {v1, v0}, Lio/bidmachine/c$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {p0, v1}, Lio/bidmachine/core/AdvertisingIdClientInfo;->executeTask(Landroid/content/Context;Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;)V

    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 69
    invoke-static {p0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
