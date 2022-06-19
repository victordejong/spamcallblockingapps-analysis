.class public final Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->handleIconDisplay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0017J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b\u00b8\u0006\u000c"
    }
    d2 = {
        "com/mopub/mobileads/VastVideoViewController$handleIconDisplay$2$1$2",
        "Landroid/webkit/WebViewClient;",
        "onRenderProcessGone",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "detail",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "shouldOverrideUrlLoading",
        "url",
        "",
        "mopub-sdk-base_release",
        "com/mopub/mobileads/VastVideoViewController$$special$$inlined$also$lambda$2"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VastIconConfig;

.field final synthetic b:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastIconConfig;Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;->a:Lcom/mopub/mobileads/VastIconConfig;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;->b:Lcom/mopub/mobileads/VastVideoViewController;

    .line 534
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    .line 553
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    check-cast p1, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onRenderProcessGone() called from the IconView. Ignoring the icon."

    aput-object v2, v0, v1

    .line 552
    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 556
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    .line 557
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;->b:Lcom/mopub/mobileads/VastVideoViewController;

    .line 2085
    iget-object v0, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v1, "context"

    .line 557
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    sget-object v1, Lcom/mopub/mobileads/VastErrorCode;->UNDEFINED_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    .line 559
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    .line 556
    invoke-virtual {p1, v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V

    return p2
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;->b:Lcom/mopub/mobileads/VastVideoViewController;

    .line 1085
    iget-object v0, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v1, "context"

    .line 540
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-virtual {p1, v0, p2, v1}, Lcom/mopub/mobileads/VastIconConfig;->handleClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
