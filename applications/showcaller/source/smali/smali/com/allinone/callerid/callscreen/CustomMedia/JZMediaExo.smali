.class public Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;
.super Lcn/jzvd/u;
.source "JZMediaExo.java"

# interfaces
.implements Lcom/google/android/exoplayer2/o0$a;
.implements Lcom/google/android/exoplayer2/video/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private callback:Ljava/lang/Runnable;

.field private previousSeek:J

.field private simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

.field private startTime:J


# direct methods
.method public constructor <init>(Lcn/jzvd/Jzvd;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/jzvd/u;-><init>(Lcn/jzvd/Jzvd;)V

    const-string p1, "JZMediaExo"

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->previousSeek:J

    return-void
.end method

.method static synthetic access$000(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;)Lcom/google/android/exoplayer2/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    return-object p0
.end method

.method static synthetic access$100(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->callback:Ljava/lang/Runnable;

    return-object p0
.end method

.method private synthetic lambda$onPlayerError$4()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v1}, Lcn/jzvd/Jzvd;->z(II)V

    return-void
.end method

.method private synthetic lambda$onPlayerStateChanged$3(IZ)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {p1}, Lcn/jzvd/Jzvd;->y()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 2
    iget-object p1, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {p1}, Lcn/jzvd/Jzvd;->I()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->callback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$onSeekProcessed$5()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->D()V

    return-void
.end method

.method private synthetic lambda$onVideoSizeChanged$1(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {v0, p1, p2}, Lcn/jzvd/Jzvd;->K(II)V

    return-void
.end method

.method private synthetic lambda$prepare$0(Landroid/content/Context;)V
    .locals 11

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/n;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/n;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/a$d;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/a$d;-><init>(Lcom/google/android/exoplayer2/upstream/f;)V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/f$b;)V

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/y;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/m;

    const/high16 v2, 0x10000

    const/4 v10, 0x1

    invoke-direct {v3, v10, v2}, Lcom/google/android/exoplayer2/upstream/m;-><init>(ZI)V

    const v4, 0x57e40

    const v5, 0x927c0

    const/16 v6, 0x3e8

    const/16 v7, 0x1388

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/y;-><init>(Lcom/google/android/exoplayer2/upstream/m;IIIIIZ)V

    .line 5
    new-instance v2, Lcom/google/android/exoplayer2/a0;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/a0;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/exoplayer2/b0;->a(Landroid/content/Context;Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/g0;)Lcom/google/android/exoplayer2/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/upstream/p;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/h0;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/upstream/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    iget-object p1, p1, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    invoke-virtual {p1}, Lcn/jzvd/t;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ".m3u8"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/j$a;)V

    .line 12
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->b(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/w;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/s$b;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/s$b;-><init>(Lcom/google/android/exoplayer2/upstream/j$a;)V

    .line 14
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/s$b;->a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/s;

    move-result-object v0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/x0;->v(Lcom/google/android/exoplayer2/video/p;)V

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL Link = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/x0;->o(Lcom/google/android/exoplayer2/o0$a;)V

    .line 18
    iget-object p1, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    iget-object p1, p1, Lcn/jzvd/Jzvd;->q:Lcn/jzvd/t;

    iget-boolean p1, p1, Lcn/jzvd/t;->e:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer2/x0;->E(I)V

    goto :goto_1

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/x0;->E(I)V

    .line 22
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/x0;->z0(Lcom/google/android/exoplayer2/source/v;)V

    .line 23
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer2/x0;->w(Z)V

    .line 24
    new-instance p1, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;

    invoke-direct {p1, p0, v2}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;-><init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$a;)V

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->callback:Ljava/lang/Runnable;

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    iget-object v1, v1, Lcn/jzvd/Jzvd;->I:Lcn/jzvd/JZTextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/x0;->a(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic lambda$release$2(Lcom/google/android/exoplayer2/x0;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/x0;->B0()V

    .line 2
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->lambda$onPlayerError$4()V

    return-void
.end method

.method public synthetic b(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->lambda$onPlayerStateChanged$3(IZ)V

    return-void
.end method

.method public synthetic c()V
    .locals 0

    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->lambda$onSeekProcessed$5()V

    return-void
.end method

.method public synthetic d(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->lambda$onVideoSizeChanged$1(II)V

    return-void
.end method

.method public synthetic e(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->lambda$prepare$0(Landroid/content/Context;)V

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/x0;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/x0;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/x0;->h()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n0;->a(Lcom/google/android/exoplayer2/o0$a;Z)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->TAG:Ljava/lang/String;

    const-string v0, "onLoadingChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/l0;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n0;->d(Lcom/google/android/exoplayer2/o0$a;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/util/q;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/allinone/callerid/callscreen/CustomMedia/e;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/CustomMedia/e;-><init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerStateChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/ready="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/callscreen/CustomMedia/b;

    invoke-direct {v1, p0, p2, p1}, Lcom/allinone/callerid/callscreen/CustomMedia/b;-><init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenderedFirstFrame-loadingtime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/callscreen/CustomMedia/a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/CustomMedia/a;-><init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/video/o;->a(Lcom/google/android/exoplayer2/video/p;II)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    sget-object p2, Lcn/jzvd/u;->SAVED_SURFACE:Landroid/graphics/SurfaceTexture;

    if-nez p2, :cond_0

    .line 2
    sput-object p1, Lcn/jzvd/u;->SAVED_SURFACE:Landroid/graphics/SurfaceTexture;

    .line 3
    invoke-virtual {p0}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->prepare()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    iget-object p1, p1, Lcn/jzvd/Jzvd;->I:Lcn/jzvd/JZTextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onTimelineChanged(Lcom/google/android/exoplayer2/y0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n0;->j(Lcom/google/android/exoplayer2/o0$a;Lcom/google/android/exoplayer2/y0;I)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/y0;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->TAG:Ljava/lang/String;

    const-string p2, "onTimelineChanged"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    new-instance p4, Lcom/allinone/callerid/callscreen/CustomMedia/c;

    invoke-direct {p4, p0, p1, p2}, Lcom/allinone/callerid/callscreen/CustomMedia/c;-><init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;II)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/x0;->w(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public prepare()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->TAG:Ljava/lang/String;

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->startTime:J

    .line 3
    iget-object v0, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->release()V

    .line 5
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "JZVD"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/jzvd/u;->mMediaHandlerThread:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcn/jzvd/u;->mMediaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/jzvd/u;->mMediaHandler:Landroid/os/Handler;

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    .line 9
    iget-object v1, p0, Lcn/jzvd/u;->mMediaHandler:Landroid/os/Handler;

    new-instance v2, Lcom/allinone/callerid/callscreen/CustomMedia/f;

    invoke-direct {v2, p0, v0}, Lcom/allinone/callerid/callscreen/CustomMedia/f;-><init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/jzvd/u;->mMediaHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/jzvd/u;->mMediaHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    if-eqz v2, :cond_0

    .line 2
    new-instance v3, Lcom/allinone/callerid/callscreen/CustomMedia/d;

    invoke-direct {v3, v2, v1}, Lcom/allinone/callerid/callscreen/CustomMedia/d;-><init>(Lcom/google/android/exoplayer2/x0;Landroid/os/HandlerThread;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->previousSeek:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/t;->X(J)V

    .line 3
    iput-wide p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->previousSeek:J

    .line 4
    iget-object v0, p0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    iput-wide p1, v0, Lcn/jzvd/Jzvd;->z:J

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/l0;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/l0;-><init>(FF)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/x0;->E0(Lcom/google/android/exoplayer2/l0;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/x0;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/x0;->I0(F)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/x0;->I0(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->simpleExoPlayer:Lcom/google/android/exoplayer2/x0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/x0;->w(Z)V

    return-void
.end method
