.class public Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$POBVideoPlayerBroadcast;
    }
.end annotation


# static fields
.field public static final ACTION_FINISH:Ljava/lang/String; = "com.pubmatic.sdk.webrendering.mraid.POBVideoPlayerActivity.finish"

.field public static final ALLOW_ORIENTATION_KEY:Ljava/lang/String; = "AllowOrientationChange"

.field public static final FORCE_ORIENTATION_KEY:Ljava/lang/String; = "ForceOrientation"

.field public static final PLAYBACK_URL:Ljava/lang/String; = "URL"

.field private static f:Ljava/lang/String; = "POBVideoPlayerActivity"


# instance fields
.field private a:Landroid/widget/MediaController;

.field private b:Landroid/widget/VideoView;

.field private c:I

.field private d:Z

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;II)Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p2, 0x0

    invoke-virtual {v1, p2, p2, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-static {p0}, Lcom/pubmatic/sdk/webrendering/POBUIUtil;->createCloseButton(Landroid/content/Context;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p2, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$a;

    invoke-direct {p2, p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$a;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->a:Landroid/widget/MediaController;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->a:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->a:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->a:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$b;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$b;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    return-object p1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->a:Landroid/widget/MediaController;

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->d:Z

    return p1
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->c:I

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoView visibility is false. Seeked position ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private c()V
    .locals 4

    iget-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->f:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Video Ad is completed"

    invoke-static {v0, v2, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b:Landroid/widget/VideoView;

    iget v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoView visibility is false. Seeked position ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "URL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForceOrientation"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AllowOrientationChange"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v2, -0x1

    if-nez p1, :cond_5

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_1
    const/4 p1, -0x1

    goto :goto_2

    :sswitch_0
    const-string p1, "landscape"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    goto :goto_2

    :sswitch_1
    const-string p1, "portrait"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    goto :goto_2

    :sswitch_2
    const-string p1, "reverse_portrait"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    goto :goto_2

    :sswitch_3
    const-string p1, "sensor_landscape"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_2
    packed-switch p1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_4

    :pswitch_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_4

    :pswitch_2
    const/4 p1, 0x7

    goto :goto_3

    :pswitch_3
    const/4 p1, 0x6

    :goto_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_5
    :goto_4
    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v2, v2}, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->a(Landroid/view/View;II)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    new-instance p1, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$POBVideoPlayerBroadcast;

    invoke-direct {p1, p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$POBVideoPlayerBroadcast;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;)V

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.pubmatic.sdk.webrendering.mraid.POBVideoPlayerActivity.finish"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x655a9f8a -> :sswitch_3
        -0x1df47a8 -> :sswitch_2
        0x2b77bb9b -> :sswitch_1
        0x5545f2bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->a()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->b()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->c()V

    return-void
.end method
