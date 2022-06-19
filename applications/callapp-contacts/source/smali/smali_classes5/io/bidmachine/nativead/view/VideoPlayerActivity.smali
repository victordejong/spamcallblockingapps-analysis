.class public Lio/bidmachine/nativead/view/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/view/VideoPlayerActivity$a;
    }
.end annotation


# static fields
.field private static final FILE_URI:Ljava/lang/String; = "io.bidmachine.fileUri"

.field private static final SEEK_TO:Ljava/lang/String; = "io.bidmachine.seekTo"


# instance fields
.field private listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$a;

.field private seekTo:I

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->closeClicked()V

    return-void
.end method

.method private closeClicked()V
    .locals 3

    .line 129
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$a;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    iget-object v2, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$a;

    invoke-interface {v2, v0, v1}, Lio/bidmachine/nativead/view/VideoPlayerActivity$a;->videoPlayerActivityClosed(IZ)V

    .line 136
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->finishActivity()V

    return-void
.end method

.method private finishActivity()V
    .locals 1

    .line 89
    new-instance v0, Lio/bidmachine/nativead/view/VideoPlayerActivity$2;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity$2;-><init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->finish()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/bidmachine/nativead/view/VideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "io.bidmachine.fileUri"

    .line 36
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "io.bidmachine.seekTo"

    .line 37
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->closeClicked()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 103
    iget-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 104
    invoke-interface {p1, v0, v1}, Lio/bidmachine/nativead/view/VideoPlayerActivity$a;->videoPlayerActivityClosed(IZ)V

    .line 106
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->finishActivity()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "io.bidmachine.fileUri"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.bidmachine.seekTo"

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->seekTo:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "VideoPlayerActivity started, position: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    sget-object p1, Lio/bidmachine/nativead/view/MediaView;->listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$a;

    iput-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$a;

    .line 53
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v1, Landroid/widget/VideoView;

    invoke-direct {v1, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    .line 59
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 61
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    iget-object v3, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 64
    iget-object v1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 65
    iget-object v1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/high16 v0, 0x41c00000    # 24.0f

    .line 68
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getScreenDensity(Landroid/content/Context;)F

    move-result v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    .line 69
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getScreenDensity(Landroid/content/Context;)F

    move-result v3

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 70
    new-instance v3, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-direct {v3, p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    .line 71
    sget v4, Lcom/explorestack/iab/utils/Assets;->mainAssetsColor:I

    sget v5, Lcom/explorestack/iab/utils/Assets;->backgroundColor:I

    invoke-virtual {v3, v4, v5}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setColors(II)V

    .line 72
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 73
    invoke-virtual {v4, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xa

    .line 74
    invoke-virtual {v4, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 75
    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAYAAADnRuK4AAACY0lEQVR4Ae3aAWRbURTH4YNiKIqggKEYCiiKYQQABQAMARRBAVAADEEBUAAEAADBAMMwBADFADAURXYQoZdoOLie+338PQK4fnmJ5wUAAAAAAAAAAAAAAAAAAAAAAHACrnJ3uWVunpvFuM5zX3Pf99fz4KiL3HNu1+w195A7i3Gc5R5zb81ZvO0/b86CWe6ljafZZpBv4GXu9wdn8UtE761zuxP2sxrRBOLZnngWjznSbXs4g0Z0Sjztz9lFEPe5XT2iIeJp9y2IVW5Xj2iMeJotguYOVIlogHiazYO4ye3qEQ0VT/MfiPUAEZXjafYjDpjl/k41og7x/Ml9inf4MsWIOsSzzV0G40QkHhGJR0Ti6U9E4hGRePoTkXhEJJ7+RCQeEYmnPxGJR0TiqROReOpEJJ46EYmnTkTiqROReMpEJJ4CEYmnQETiKRGReEpEJJ4kIvH0JyLxiEg8/YlIPCIST38iEo+IxEP9ZbA+L6UhHhGJR0T9iUdE4hFRf+IRkXhE1It4RNQQz7bysFFE4rksPLEWkXj2RFQgHhGViUdEZeIRUZl4RFQmHhGViUdEZeIRkXjqRCQeEXUnHhGJR0T9iUdE4hFRf+IRkXhEJJ5uRCQeEYlHROM47x/PpCLa5M7igKf+8Uwuoodc4rp/PJOM6DU3i2DRP57JRjSPYNU/nslGtIxgOXA81YjuIpgPHk8loqtcYjNqPIWInuOAz7l/o8VTiOgldxENER2/Ez0N9vR1llsfOYt1bhZHMc8tc6vcIncd47rJ3edW++ttAAAAAAAAAAAAAAAAAAAAAAAAfOA/5Zwc/aYfb7AAAAAASUVORK5CYII="

    .line 76
    invoke-static {v0}, Lcom/explorestack/iab/utils/Assets;->getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    .line 77
    invoke-virtual {v3, v4}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v0, Lio/bidmachine/nativead/view/VideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity$1;-><init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V

    invoke-virtual {v3, v0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 85
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 111
    invoke-direct {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->finishActivity()V

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    iget v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->seekTo:I

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 119
    iget-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method
