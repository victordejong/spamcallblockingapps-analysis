.class public Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdvertisingInterface;,
        Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdvertisingConnection;,
        Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdInfo;,
        Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PNAdvertisingIdClient"


# instance fields
.field protected mHadler:Landroid/os/Handler;

.field protected mListener:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getAdvertisingId(Landroid/content/Context;)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;-><init>(Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected invokeOnFinish(Ljava/lang/String;Z)V
    .locals 2

    .line 99
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->mHadler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$2;

    invoke-direct {v1, p0, p1, p2}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$2;-><init>(Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public request(Landroid/content/Context;Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$Listener;)V
    .locals 1

    .line 53
    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->mListener:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$Listener;

    .line 54
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->mHadler:Landroid/os/Handler;

    .line 55
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->getAdvertisingId(Landroid/content/Context;)V

    return-void
.end method
