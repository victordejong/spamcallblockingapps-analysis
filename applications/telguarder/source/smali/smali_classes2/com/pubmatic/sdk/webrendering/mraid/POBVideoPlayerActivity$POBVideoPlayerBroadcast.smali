.class public Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$POBVideoPlayerBroadcast;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "POBVideoPlayerBroadcast"
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;


# direct methods
.method protected constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$POBVideoPlayerBroadcast;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.pubmatic.sdk.webrendering.mraid.POBVideoPlayerActivity.finish"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$POBVideoPlayerBroadcast;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
