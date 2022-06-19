.class final Lio/bidmachine/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/c;->syncUpdateInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lio/bidmachine/c$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final executed(Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/c;->setLimitAdTrackingEnabled(Z)V

    .line 63
    invoke-virtual {p1}, Lio/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/c;->setDeviceAdvertisingId(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lio/bidmachine/c$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
