.class public Lcom/verizon/ads/videoplayer/VideoPlayerPlugin;
.super Lcom/verizon/ads/Plugin;
.source "SourceFile"


# static fields
.field private static final i:Ljava/net/URI;

.field private static final j:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 35
    sget-object v6, Lcom/verizon/ads/videoplayer/VideoPlayerPlugin;->i:Ljava/net/URI;

    sget-object v7, Lcom/verizon/ads/videoplayer/VideoPlayerPlugin;->j:Ljava/net/URL;

    const-string v2, "com.verizon.ads.videoplayer"

    const-string v3, "VideoPlayer"

    const-string v4, "1.6.0-fb2b0d7"

    const-string v5, "Verizon"

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/verizon/ads/Plugin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/net/URL;I)V

    return-void
.end method


# virtual methods
.method public final onPluginDisabled()V
    .locals 0

    return-void
.end method

.method public final onPluginEnabled()V
    .locals 2

    .line 50
    new-instance v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$Factory;

    invoke-direct {v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$Factory;-><init>()V

    const-string v1, "video/player-v2"

    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    return-void
.end method

.method public final prepare()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
