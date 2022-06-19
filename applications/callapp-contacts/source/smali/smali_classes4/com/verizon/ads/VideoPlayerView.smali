.class public Lcom/verizon/ads/VideoPlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/VideoPlayerView$VideoSurfaceView;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ToggleButton;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/verizon/ads/VideoPlayer;

.field private j:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/verizon/ads/VideoPlayerView;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v1}, Lcom/verizon/ads/VideoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/verizon/ads/VideoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 84
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/verizon/ads/VideoPlayerView;->f:Z

    .line 43
    iput-boolean p1, p0, Lcom/verizon/ads/VideoPlayerView;->g:Z

    .line 44
    iput-boolean p1, p0, Lcom/verizon/ads/VideoPlayerView;->h:Z

    if-eqz p2, :cond_0

    const-string p3, "http://verizon.com/ads"

    const-string v0, "muteToggleEnabled"

    .line 87
    invoke-interface {p2, p3, v0, p1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/verizon/ads/VideoPlayerView;->h:Z

    const-string v0, "playButtonEnabled"

    .line 88
    invoke-interface {p2, p3, v0, p1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/verizon/ads/VideoPlayerView;->g:Z

    const-string v0, "replayButtonEnabled"

    .line 89
    invoke-interface {p2, p3, v0, p1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/verizon/ads/VideoPlayerView;->f:Z

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/VideoPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x106000c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/verizon/ads/VideoPlayerView;->setBackgroundColor(I)V

    .line 96
    invoke-virtual {p0}, Lcom/verizon/ads/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/content/MutableContextWrapper;

    .line 98
    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/verizon/ads/VideoPlayerView;->b:Landroid/widget/RelativeLayout;

    .line 99
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 102
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p2}, Lcom/verizon/ads/VideoPlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance p2, Lcom/verizon/ads/VideoPlayerView$VideoSurfaceView;

    invoke-direct {p2, p0, p1}, Lcom/verizon/ads/VideoPlayerView$VideoSurfaceView;-><init>(Lcom/verizon/ads/VideoPlayerView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/verizon/ads/VideoPlayerView;->j:Landroid/view/SurfaceView;

    .line 107
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 109
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    .line 112
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    iget-object p2, p0, Lcom/verizon/ads/VideoPlayerView;->b:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcom/verizon/ads/VideoPlayerView;->j:Landroid/view/SurfaceView;

    invoke-virtual {p2, p3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/VideoPlayerView;)Landroid/widget/ToggleButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/verizon/ads/VideoPlayerView;->e:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 33
    sget-object v0, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 242
    iget-object p1, p0, Lcom/verizon/ads/VideoPlayerView;->i:Lcom/verizon/ads/VideoPlayer;

    invoke-interface {p1}, Lcom/verizon/ads/VideoPlayer;->play()V

    return-void
.end method

.method private synthetic a(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 217
    iget-object p1, p0, Lcom/verizon/ads/VideoPlayerView;->i:Lcom/verizon/ads/VideoPlayer;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/verizon/ads/VideoPlayer;->setVolume(F)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 301
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 302
    sget-object v0, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "updateMuteToggleVisibility must be called from UI thread."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->e:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    .line 309
    iget-boolean v1, p0, Lcom/verizon/ads/VideoPlayerView;->h:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 310
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v1, 0x8

    .line 312
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 231
    iget-object p1, p0, Lcom/verizon/ads/VideoPlayerView;->i:Lcom/verizon/ads/VideoPlayer;

    invoke-interface {p1}, Lcom/verizon/ads/VideoPlayer;->replay()V

    return-void
.end method

.method static synthetic b(Lcom/verizon/ads/VideoPlayerView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/verizon/ads/VideoPlayerView;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 334
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 335
    sget-object v0, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "updateReplayVisibility must be called from UI thread."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->i:Lcom/verizon/ads/VideoPlayer;

    if-nez v0, :cond_1

    .line 341
    sget-object v0, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "A VideoPlayer instance has not been bound."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->c:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 346
    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->getState()I

    move-result v0

    .line 348
    iget-boolean v1, p0, Lcom/verizon/ads/VideoPlayerView;->f:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 349
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/verizon/ads/VideoPlayerView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/verizon/ads/VideoPlayerView;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 373
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 374
    sget-object v0, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "updatePlayVisibility must be called from UI thread."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->i:Lcom/verizon/ads/VideoPlayer;

    if-nez v0, :cond_1

    .line 380
    sget-object v0, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "A VideoPlayer instance has not been bound."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->d:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 385
    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->getState()I

    move-result v0

    .line 387
    iget-boolean v1, p0, Lcom/verizon/ads/VideoPlayerView;->g:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 388
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic d(Lcom/verizon/ads/VideoPlayerView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/verizon/ads/VideoPlayerView;->b()V

    return-void
.end method

.method static synthetic e(Lcom/verizon/ads/VideoPlayerView;)Lcom/verizon/ads/VideoPlayer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/verizon/ads/VideoPlayerView;->i:Lcom/verizon/ads/VideoPlayer;

    return-object p0
.end method

.method public static synthetic lambda$G0bWj0uq5jtwmt9TF7eYgsF-OW4(Lcom/verizon/ads/VideoPlayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/VideoPlayerView;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$raeOaxjAmn0qm35DRAvsNomFmGo(Lcom/verizon/ads/VideoPlayerView;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/VideoPlayerView;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$zDeRdFvbf7xGWSEM7KixJswUnTE(Lcom/verizon/ads/VideoPlayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/VideoPlayerView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bindPlayer(Lcom/verizon/ads/VideoPlayer;)V
    .locals 5

    .line 119
    iput-object p1, p0, Lcom/verizon/ads/VideoPlayerView;->i:Lcom/verizon/ads/VideoPlayer;

    .line 120
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->j:Landroid/view/SurfaceView;

    invoke-interface {p1, v0}, Lcom/verizon/ads/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    .line 1208
    invoke-virtual {p0}, Lcom/verizon/ads/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1210
    new-instance v1, Landroid/widget/ToggleButton;

    invoke-direct {v1, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->e:Landroid/widget/ToggleButton;

    const-string v2, ""

    .line 1211
    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    iget-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 1213
    iget-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 1214
    iget-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->e:Landroid/widget/ToggleButton;

    const-string v2, "MUTE_UNMUTE_TOGGLE"

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 1215
    iget-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->e:Landroid/widget/ToggleButton;

    sget v2, Lcom/verizon/ads/R$drawable;->verizon_ads_sdk_mute_toggle:I

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 1217
    iget-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->e:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$raeOaxjAmn0qm35DRAvsNomFmGo;

    invoke-direct {v2, p0}, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$raeOaxjAmn0qm35DRAvsNomFmGo;-><init>(Lcom/verizon/ads/VideoPlayerView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1219
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1220
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/verizon/ads/R$dimen;->verizon_ads_sdk_mute_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1221
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/verizon/ads/R$dimen;->verizon_ads_sdk_mute_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    .line 1223
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    .line 1224
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1226
    iget-object v2, p0, Lcom/verizon/ads/VideoPlayerView;->b:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/verizon/ads/VideoPlayerView;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->c:Landroid/widget/Button;

    const-string v2, "REPLAY_BUTTON"

    .line 1229
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1230
    iget-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->c:Landroid/widget/Button;

    sget v2, Lcom/verizon/ads/R$drawable;->verizon_ads_sdk_replay:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1231
    iget-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->c:Landroid/widget/Button;

    new-instance v2, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$G0bWj0uq5jtwmt9TF7eYgsF-OW4;

    invoke-direct {v2, p0}, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$G0bWj0uq5jtwmt9TF7eYgsF-OW4;-><init>(Lcom/verizon/ads/VideoPlayerView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1233
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/verizon/ads/R$dimen;->verizon_ads_sdk_replay_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1234
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/verizon/ads/R$dimen;->verizon_ads_sdk_replay_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 1236
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1237
    iget-object v3, p0, Lcom/verizon/ads/VideoPlayerView;->b:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/verizon/ads/VideoPlayerView;->c:Landroid/widget/Button;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->d:Landroid/widget/Button;

    const-string v3, "PLAY_BUTTON"

    .line 1240
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1241
    iget-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->d:Landroid/widget/Button;

    sget v3, Lcom/verizon/ads/R$drawable;->verizon_ads_sdk_play:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1242
    iget-object v1, p0, Lcom/verizon/ads/VideoPlayerView;->d:Landroid/widget/Button;

    new-instance v3, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$zDeRdFvbf7xGWSEM7KixJswUnTE;

    invoke-direct {v3, p0}, Lcom/verizon/ads/-$$Lambda$VideoPlayerView$zDeRdFvbf7xGWSEM7KixJswUnTE;-><init>(Lcom/verizon/ads/VideoPlayerView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/verizon/ads/R$dimen;->verizon_ads_sdk_replay_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 1245
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/verizon/ads/R$dimen;->verizon_ads_sdk_replay_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1247
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1249
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/verizon/ads/VideoPlayerView;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    invoke-direct {p0}, Lcom/verizon/ads/VideoPlayerView;->c()V

    .line 1252
    invoke-direct {p0}, Lcom/verizon/ads/VideoPlayerView;->b()V

    .line 1253
    invoke-direct {p0}, Lcom/verizon/ads/VideoPlayerView;->d()V

    .line 125
    new-instance v0, Lcom/verizon/ads/VideoPlayerView$1;

    invoke-direct {v0, p0}, Lcom/verizon/ads/VideoPlayerView$1;-><init>(Lcom/verizon/ads/VideoPlayerView;)V

    invoke-interface {p1, v0}, Lcom/verizon/ads/VideoPlayer;->registerListener(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V

    return-void
.end method

.method public getVideoPlayer()Lcom/verizon/ads/VideoPlayer;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->i:Lcom/verizon/ads/VideoPlayer;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 399
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 401
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->i:Lcom/verizon/ads/VideoPlayer;

    if-nez v0, :cond_0

    .line 402
    sget-object v0, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "A VideoPlayer instance has not been bound."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 406
    :cond_0
    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->setAudioFocus()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->i:Lcom/verizon/ads/VideoPlayer;

    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->releaseAudioFocus()V

    goto :goto_0

    .line 416
    :cond_0
    sget-object v0, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "A VideoPlayer instance has not been bound."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 419
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 272
    check-cast p1, Landroid/view/AbsSavedState;

    .line 274
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 276
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->i:Lcom/verizon/ads/VideoPlayer;

    if-nez v0, :cond_0

    .line 277
    sget-object p1, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    const-string v0, "A VideoPlayer instance has not been bound."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 281
    :cond_0
    invoke-interface {v0, p1}, Lcom/verizon/ads/VideoPlayer;->restoreInstanceState(Landroid/view/AbsSavedState;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView;->i:Lcom/verizon/ads/VideoPlayer;

    if-nez v0, :cond_0

    .line 261
    sget-object v0, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "A VideoPlayer instance has not been bound."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 265
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/verizon/ads/VideoPlayer;->saveInstanceState(Landroid/os/Parcelable;)Landroid/view/AbsSavedState;

    move-result-object v0

    return-object v0
.end method

.method public setMuteToggleEnabled(Z)V
    .locals 2

    .line 287
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 288
    sget-object p1, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    const-string v0, "setMuteToggleEnabled must be called from UI thread."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 293
    :cond_0
    iput-boolean p1, p0, Lcom/verizon/ads/VideoPlayerView;->h:Z

    .line 295
    invoke-direct {p0}, Lcom/verizon/ads/VideoPlayerView;->b()V

    return-void
.end method

.method public setPlayButtonEnabled(Z)V
    .locals 2

    .line 359
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 360
    sget-object p1, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    const-string v0, "setPlayButtonEnabled must be called from UI thread."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 365
    :cond_0
    iput-boolean p1, p0, Lcom/verizon/ads/VideoPlayerView;->g:Z

    .line 367
    invoke-direct {p0}, Lcom/verizon/ads/VideoPlayerView;->d()V

    return-void
.end method

.method public setReplayButtonEnabled(Z)V
    .locals 2

    .line 320
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 321
    sget-object p1, Lcom/verizon/ads/VideoPlayerView;->a:Lcom/verizon/ads/Logger;

    const-string v0, "setReplayButtonEnabled must be called from UI thread."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 326
    :cond_0
    iput-boolean p1, p0, Lcom/verizon/ads/VideoPlayerView;->f:Z

    .line 328
    invoke-direct {p0}, Lcom/verizon/ads/VideoPlayerView;->c()V

    return-void
.end method
