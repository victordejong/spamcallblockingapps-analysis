.class public Lcom/verizon/ads/support/VideoViewabilityRuleComponent;
.super Lcom/verizon/ads/support/ViewabilityWatcherRule;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/RuleComponent;
.implements Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/support/VideoViewabilityRuleComponent$Factory;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private e:Z

.field private f:Lcom/verizon/ads/RuleComponent$RuleListener;

.field private g:F

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/verizon/ads/VideoPlayerView;Lcom/verizon/ads/RuleComponent$RuleListener;IIZZLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/VideoPlayerView;",
            "Lcom/verizon/ads/RuleComponent$RuleListener;",
            "IIZZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/verizon/ads/support/ViewabilityWatcherRule;-><init>(Landroid/view/View;IIZ)V

    const/4 p3, 0x0

    .line 41
    iput-boolean p3, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->i:Z

    .line 42
    iput-boolean p3, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->j:Z

    .line 136
    iput-object p2, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->f:Lcom/verizon/ads/RuleComponent$RuleListener;

    .line 137
    iput-object p7, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->c:Ljava/lang/String;

    .line 138
    iput-object p8, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->b:Ljava/util/Map;

    .line 139
    iput-boolean p6, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->d:Z

    .line 141
    iput-boolean p3, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->e:Z

    .line 143
    new-instance p2, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$cHvNk4kMBsHoZ4RrDA7luSMObSM;

    invoke-direct {p2, p0, p1, p6}, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$cHvNk4kMBsHoZ4RrDA7luSMObSM;-><init>(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;Lcom/verizon/ads/VideoPlayerView;Z)V

    .line 1421
    invoke-static {p2}, Lcom/verizon/ads/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/VideoPlayer;)V
    .locals 2

    .line 320
    iget-boolean v0, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 321
    iput v1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->h:I

    .line 322
    iput-boolean v1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->i:Z

    goto :goto_0

    .line 325
    :cond_0
    invoke-interface {p1}, Lcom/verizon/ads/VideoPlayer;->getCurrentPosition()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->h:I

    .line 329
    :goto_0
    iget-boolean p1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->j:Z

    if-nez p1, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->j()V

    return-void

    .line 332
    :cond_1
    iput-boolean v1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->j:Z

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/VideoPlayerView;Z)V
    .locals 2

    .line 144
    invoke-virtual {p1}, Lcom/verizon/ads/VideoPlayerView;->getVideoPlayer()Lcom/verizon/ads/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 146
    invoke-interface {p1}, Lcom/verizon/ads/VideoPlayer;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->h:I

    if-eqz p2, :cond_0

    .line 148
    invoke-interface {p1}, Lcom/verizon/ads/VideoPlayer;->getVolume()F

    move-result p2

    iput p2, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->g:F

    .line 150
    :cond_0
    invoke-interface {p1, p0}, Lcom/verizon/ads/VideoPlayer;->registerListener(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V

    :cond_1
    return-void
.end method

.method private synthetic a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->j()V

    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->k()V

    return-void
.end method

.method static synthetic e()Lcom/verizon/ads/Logger;
    .locals 1

    .line 29
    sget-object v0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method public static synthetic lambda$AYQIe4iBLKUayq3Peo4mzw9ir9E(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->a(Lcom/verizon/ads/VideoPlayer;)V

    return-void
.end method

.method public static synthetic lambda$BQnW5NB4N2-JSsrULpk-MHTCwR8(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->a(Z)V

    return-void
.end method

.method public static synthetic lambda$cHvNk4kMBsHoZ4RrDA7luSMObSM(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;Lcom/verizon/ads/VideoPlayerView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->a(Lcom/verizon/ads/VideoPlayerView;Z)V

    return-void
.end method

.method private n()V
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    check-cast v0, Lcom/verizon/ads/VideoPlayerView;

    invoke-virtual {v0}, Lcom/verizon/ads/VideoPlayerView;->getVideoPlayer()Lcom/verizon/ads/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0, p0}, Lcom/verizon/ads/VideoPlayer;->unregisterListener(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V

    :cond_0
    return-void
.end method

.method private o()Z
    .locals 2

    .line 270
    iget v0, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()J
    .locals 2

    .line 264
    iget v0, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->h:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public fire()V
    .locals 4

    .line 2415
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Must be on the UI thread to fire rule"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->e:Z

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Rule has already fired"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 185
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 186
    sget-object v0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "Firing rule: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 189
    :cond_2
    iput-boolean v1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->e:Z

    .line 192
    invoke-direct {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->n()V

    .line 193
    invoke-virtual {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->k()V

    .line 194
    invoke-virtual {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->i()V

    .line 196
    iget-object v0, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->f:Lcom/verizon/ads/RuleComponent$RuleListener;

    if-eqz v0, :cond_3

    .line 197
    invoke-interface {v0, p0}, Lcom/verizon/ads/RuleComponent$RuleListener;->onRuleFired(Lcom/verizon/ads/RuleComponent;)V

    :cond_3
    return-void
.end method

.method public getEventArgs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hasFired()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->e:Z

    return v0
.end method

.method public onClick(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onComplete(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 349
    iput-boolean p1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->i:Z

    .line 350
    new-instance p1, Lcom/verizon/ads/support/-$$Lambda$6Na3xQMKApfDjtps7z2MqyT-2FI;

    invoke-direct {p1, p0}, Lcom/verizon/ads/support/-$$Lambda$6Na3xQMKApfDjtps7z2MqyT-2FI;-><init>(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;)V

    .line 4421
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onLoaded(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onPaused(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->j:Z

    .line 342
    new-instance p1, Lcom/verizon/ads/support/-$$Lambda$6Na3xQMKApfDjtps7z2MqyT-2FI;

    invoke-direct {p1, p0}, Lcom/verizon/ads/support/-$$Lambda$6Na3xQMKApfDjtps7z2MqyT-2FI;-><init>(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;)V

    .line 3421
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlay(Lcom/verizon/ads/VideoPlayer;)V
    .locals 2

    .line 317
    sget-object v0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    const-string/jumbo v1, "video is playing."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 319
    new-instance v0, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$AYQIe4iBLKUayq3Peo4mzw9ir9E;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$AYQIe4iBLKUayq3Peo4mzw9ir9E;-><init>(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;Lcom/verizon/ads/VideoPlayer;)V

    .line 2421
    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(Lcom/verizon/ads/VideoPlayer;I)V
    .locals 3

    .line 5276
    iget p1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->h:I

    if-le p2, p1, :cond_0

    const/4 p1, 0x0

    .line 5280
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->h:I

    .line 5283
    invoke-virtual {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5287
    invoke-virtual {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->m()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->h()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 5288
    new-instance p1, Lcom/verizon/ads/support/-$$Lambda$lc3wHZsTSJApNWzsjID3fOm19OM;

    invoke-direct {p1, p0}, Lcom/verizon/ads/support/-$$Lambda$lc3wHZsTSJApNWzsjID3fOm19OM;-><init>(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;)V

    .line 5421
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onReady(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onSeekCompleted(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onUnloaded(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onVolumeChanged(Lcom/verizon/ads/VideoPlayer;F)V
    .locals 3

    .line 377
    iget-boolean p1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->d:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 381
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 382
    sget-object p1, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "video player volume changed to <%f>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 385
    :cond_1
    invoke-direct {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->o()Z

    move-result p1

    .line 386
    iput p2, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->g:F

    .line 387
    invoke-direct {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->o()Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 390
    new-instance p1, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$BQnW5NB4N2-JSsrULpk-MHTCwR8;

    invoke-direct {p1, p0, p2}, Lcom/verizon/ads/support/-$$Lambda$VideoViewabilityRuleComponent$BQnW5NB4N2-JSsrULpk-MHTCwR8;-><init>(Lcom/verizon/ads/support/VideoViewabilityRuleComponent;Z)V

    .line 6421
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 2

    .line 218
    sget-object v0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Releasing"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->k()V

    .line 221
    invoke-direct {p0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->n()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->f:Lcom/verizon/ads/RuleComponent$RuleListener;

    .line 224
    invoke-super {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->release()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 246
    invoke-super {p0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "VideoViewabilityRuleComponent{eventId: %s, audioRequired: %s, %s}"

    .line 245
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
