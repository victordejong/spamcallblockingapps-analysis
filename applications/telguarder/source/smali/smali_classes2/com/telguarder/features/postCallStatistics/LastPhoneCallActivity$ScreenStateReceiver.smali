.class public Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LastPhoneCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;


# direct methods
.method public constructor <init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 404
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 405
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 406
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-static {p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$000(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 407
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->onScreenOff()V

    .line 408
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$100()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-static {p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$200(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-static {p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$200(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$100()I

    move-result p1

    if-eq p1, p2, :cond_2

    .line 409
    :cond_0
    invoke-static {p2}, Lcom/telguarder/features/advertisements/AdvertManager;->cleanAdNetworkFlowDebugInfo(Z)V

    .line 410
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object p1

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->wasTestNumber()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/telguarder/features/advertisements/AdvertManager;->updateAdvertCache(Landroid/content/Context;Z)V

    .line 411
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/location/LocationHelper;->updateCoarseLocation(Landroid/content/Context;)V

    .line 412
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stop()V

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 416
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-static {p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$300(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 417
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$302(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;Z)Z

    .line 418
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPostcallStartTimeStamp:Ljava/lang/Long;

    .line 419
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-virtual {p1, v0, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->onLoadAd(Landroid/content/Context;Z)V

    .line 420
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->stopPreloadKeepAlive()V

    :cond_2
    :goto_0
    return-void
.end method
