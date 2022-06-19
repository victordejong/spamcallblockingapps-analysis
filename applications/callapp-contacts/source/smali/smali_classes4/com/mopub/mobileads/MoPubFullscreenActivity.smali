.class public Lcom/mopub/mobileads/MoPubFullscreenActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcom/mopub/mobileads/FullscreenAdController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Intent;)Lcom/mopub/mobileads/AdData;
    .locals 1

    :try_start_0
    const-string v0, "com_mopub_ad_data"

    .line 138
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/AdData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static start(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 2

    .line 1050
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MoPubFullscreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com_mopub_ad_data"

    .line 1051
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 1052
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    :try_start_0
    invoke-static {p0, v0}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreenActivity;->a:Lcom/mopub/mobileads/FullscreenAdController;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1, p2, p3}, Lcom/mopub/mobileads/FullscreenAdController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreenActivity;->a:Lcom/mopub/mobileads/FullscreenAdController;

    if-eqz v0, :cond_3

    .line 1600
    sget-object v1, Lcom/mopub/mobileads/FullscreenAdController$b;->VIDEO:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v2, v0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/mopub/mobileads/FullscreenAdController;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v1, :cond_0

    .line 1601
    iget-object v0, v0, Lcom/mopub/mobileads/FullscreenAdController;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->backButtonEnabled()Z

    move-result v0

    goto :goto_1

    .line 1602
    :cond_0
    sget-object v1, Lcom/mopub/mobileads/FullscreenAdController$b;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v2, v0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/mopub/mobileads/FullscreenAdController$b;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v2, v0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 1603
    :cond_2
    :goto_0
    iget-boolean v0, v0, Lcom/mopub/mobileads/FullscreenAdController;->c:Z

    :goto_1
    if-eqz v0, :cond_4

    .line 131
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubFullscreenActivity;->a(Landroid/content/Intent;)Lcom/mopub/mobileads/AdData;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 63
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Ad data to show ad is null. Failed to show fullscreen ad."

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubFullscreenActivity;->finish()V

    return-void

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v3

    .line 71
    :try_start_0
    new-instance v5, Lcom/mopub/mobileads/FullscreenAdController;

    .line 72
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v5, p0, p1, v6, v0}, Lcom/mopub/mobileads/FullscreenAdController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/Intent;Lcom/mopub/mobileads/AdData;)V

    iput-object v5, p0, Lcom/mopub/mobileads/MoPubFullscreenActivity;->a:Lcom/mopub/mobileads/FullscreenAdController;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v0

    const-string p1, "com.mopub.action.fullscreen.show"

    invoke-static {p0, v0, v1, p1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubFullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void

    .line 77
    :catch_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v5, v0, v2

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const-string p1, "com.mopub.action.fullscreen.fail"

    .line 78
    invoke-static {p0, v3, v4, p1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubFullscreenActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreenActivity;->a:Lcom/mopub/mobileads/FullscreenAdController;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/mopub/mobileads/FullscreenAdController;->destroy()V

    .line 125
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreenActivity;->a:Lcom/mopub/mobileads/FullscreenAdController;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/mopub/mobileads/FullscreenAdController;->pause()V

    .line 102
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreenActivity;->a:Lcom/mopub/mobileads/FullscreenAdController;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/mopub/mobileads/FullscreenAdController;->resume()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 94
    invoke-static {p0}, Lcom/mopub/common/util/Utils;->hideNavigationBar(Landroid/app/Activity;)V

    return-void
.end method
