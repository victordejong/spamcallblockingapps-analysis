.class public Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;
.super Lcom/mopub/mobileads/BaseBroadcastReceiver;
.source "SourceFile"


# static fields
.field private static b:Landroid/content/IntentFilter;


# instance fields
.field private final a:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;J)V
    .locals 0

    .line 22
    invoke-direct {p0, p2, p3}, Lcom/mopub/mobileads/BaseBroadcastReceiver;-><init>(J)V

    .line 23
    iput-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    .line 24
    invoke-virtual {p0}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 29
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    sput-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.fullscreen.fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.fullscreen.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.fullscreen.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.fullscreen.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.rewardedad.complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->shouldConsumeBroadcast(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 50
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.mopub.action.fullscreen.fail"

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 52
    iget-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    :cond_2
    const-string p2, "com.mopub.action.fullscreen.show"

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 54
    iget-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    .line 55
    iget-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    return-void

    :cond_3
    const-string p2, "com.mopub.action.fullscreen.dismiss"

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 57
    iget-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    .line 58
    invoke-virtual {p0, p0}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_4
    const-string p2, "com.mopub.action.fullscreen.click"

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 60
    iget-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    return-void

    :cond_5
    const-string p2, "com.mopub.action.rewardedad.complete"

    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 62
    iget-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdComplete(Lcom/mopub/common/MoPubReward;)V

    :cond_6
    return-void
.end method
