.class public Lio/bidmachine/core/AdvertisingIdClientInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;,
        Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;
    }
.end annotation


# static fields
.field private static final RESULT:I


# instance fields
.field private closure:Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/bidmachine/core/AdvertisingIdClientInfo;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lio/bidmachine/core/AdvertisingIdClientInfo;->closure:Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;

    .line 30
    new-instance p1, Lio/bidmachine/core/AdvertisingIdClientInfo$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/bidmachine/core/AdvertisingIdClientInfo$1;-><init>(Lio/bidmachine/core/AdvertisingIdClientInfo;Landroid/os/Looper;)V

    iput-object p1, p0, Lio/bidmachine/core/AdvertisingIdClientInfo;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/core/AdvertisingIdClientInfo;)Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;
    .locals 0

    .line 11
    iget-object p0, p0, Lio/bidmachine/core/AdvertisingIdClientInfo;->closure:Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;

    return-object p0
.end method

.method public static executeTask(Landroid/content/Context;Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lio/bidmachine/core/AdvertisingIdClientInfo;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/core/AdvertisingIdClientInfo;-><init>(Landroid/content/Context;Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;)V

    invoke-static {v0}, Lio/bidmachine/core/BackgroundTaskManager;->async(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static getAdvertisingIdInfo(Landroid/content/Context;)Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;
    .locals 6

    .line 45
    new-instance v0, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;

    invoke-direct {v0}, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;-><init>()V

    :try_start_0
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 47
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/util/Pair;

    .line 48
    new-instance v4, Landroid/util/Pair;

    const-class v5, Landroid/content/Context;

    invoke-direct {v4, v5, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v4, v3, p0

    invoke-static {v1, v1, v2, v3}, Lio/bidmachine/core/Utils;->invokeMethodByName(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "getId"

    new-array v3, p0, [Landroid/util/Pair;

    .line 50
    invoke-static {v1, v2, v3}, Lio/bidmachine/core/Utils;->invokeMethodByName(Ljava/lang/Object;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "isLimitAdTrackingEnabled"

    new-array p0, p0, [Landroid/util/Pair;

    .line 51
    invoke-static {v1, v3, p0}, Lio/bidmachine/core/Utils;->invokeMethodByName(Ljava/lang/Object;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 53
    invoke-virtual {v0, v2}, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;->setId(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p0}, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;->setLimitAdTrackingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lio/bidmachine/core/AdvertisingIdClientInfo;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/bidmachine/core/AdvertisingIdClientInfo;->context:Landroid/content/Context;

    invoke-static {v1}, Lio/bidmachine/core/AdvertisingIdClientInfo;->getAdvertisingIdInfo(Landroid/content/Context;)Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
