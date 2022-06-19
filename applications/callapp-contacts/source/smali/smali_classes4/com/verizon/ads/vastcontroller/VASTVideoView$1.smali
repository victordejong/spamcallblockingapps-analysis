.class Lcom/verizon/ads/vastcontroller/VASTVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/utils/IOUtils$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/vastcontroller/VASTVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;

.field final synthetic b:Lcom/verizon/ads/vastcontroller/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$1;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$1;->a:Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/io/File;Lcom/verizon/ads/VideoPlayer;)V
    .locals 4

    .line 853
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$1;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    invoke-static {v0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTVideoView;Ljava/io/File;)Ljava/io/File;

    .line 855
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/verizon/ads/VideoPlayer;->load(Landroid/net/Uri;)V

    .line 857
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$1;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    .line 3743
    iget-object p2, p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object p2, p2, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object p2, p2, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->videoClicks:Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    iput-object p2, p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b:Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    .line 3972
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3974
    iget-object v0, p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3975
    iget-object v0, p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;

    .line 3976
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 3977
    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    .line 3978
    iget-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v3, v3, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->videoClicks:Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    if-eqz v3, :cond_1

    .line 3979
    iget-object v2, v2, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v2, v2, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->videoClicks:Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3744
    :cond_2
    iput-object p2, p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$fdGQO1K7iTLnkMPseIBp2dXlJ_k(Lcom/verizon/ads/vastcontroller/VASTVideoView$1;Ljava/io/File;Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/vastcontroller/VASTVideoView$1;->a(Ljava/io/File;Lcom/verizon/ads/VideoPlayer;)V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/Throwable;)V
    .locals 4

    .line 868
    invoke-static {}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Error occurred downloading the video file."

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 869
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$1;->a:Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;

    if-eqz p1, :cond_0

    .line 870
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    .line 871
    invoke-static {}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 870
    invoke-interface {p1, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public onDownloadSucceeded(Ljava/io/File;)V
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$1;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f:Lcom/verizon/ads/VideoPlayer;

    if-eqz v0, :cond_0

    .line 851
    new-instance v1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$1$fdGQO1K7iTLnkMPseIBp2dXlJ_k;

    invoke-direct {v1, p0, p1, v0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$1$fdGQO1K7iTLnkMPseIBp2dXlJ_k;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView$1;Ljava/io/File;Lcom/verizon/ads/VideoPlayer;)V

    invoke-static {v1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 860
    :cond_0
    invoke-static {}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a()Lcom/verizon/ads/Logger;

    move-result-object p1

    const-string v0, "Unable to load the video asset. VideoView instance is null."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method
