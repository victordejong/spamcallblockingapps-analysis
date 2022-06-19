.class public final Lcom/mopub/mobileads/VastVideoViewController$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/mobileads/VastWebView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->createWebView(Lcom/mopub/mobileads/VastCompanionAdConfig;)Lcom/mopub/mobileads/VastWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/VastVideoViewController;

.field public final synthetic b:Lcom/mopub/mobileads/VastCompanionAdConfig;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$e;->a:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$e;->b:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVastWebViewClick()V
    .locals 5

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$e;->a:Lcom/mopub/mobileads/VastVideoViewController;

    const-string v1, "com.mopub.action.fullscreen.click"

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/BaseVideoViewController;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$e;->a:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->setClosing(Z)V

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$e;->b:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$e;->b:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$e;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController$e;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v3}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$e;->b:Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$e;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController$e;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getDspCreativeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/mopub/mobileads/VastCompanionAdConfig;->handleClick(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
