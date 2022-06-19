.class final Lcom/explorestack/iab/vast/activity/VastView$14;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 1827
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$14;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const/4 p2, 0x0

    .line 1830
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 1831
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 1837
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$14;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->E(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1840
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/vast/activity/VastView$14;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1845
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$14;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->E(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1846
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$14;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "banner clicked"

    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$14;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, p1, Lcom/explorestack/iab/vast/activity/VastView;->n:Lcom/explorestack/iab/vast/tags/f;

    invoke-static {p1, v0, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/tags/f;Ljava/lang/String;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
