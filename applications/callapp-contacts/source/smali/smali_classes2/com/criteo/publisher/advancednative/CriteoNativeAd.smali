.class public Lcom/criteo/publisher/advancednative/CriteoNativeAd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adChoiceOverlay:Lcom/criteo/publisher/advancednative/b;

.field private final assets:Lcom/criteo/publisher/model/b0/n;

.field private final clickDetection:Lcom/criteo/publisher/advancednative/e;

.field private final clickOnAdChoiceHandler:Lcom/criteo/publisher/advancednative/n;

.field private final clickOnProductHandler:Lcom/criteo/publisher/advancednative/n;

.field private final impressionTask:Lcom/criteo/publisher/advancednative/j;

.field private renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

.field private final rendererHelper:Lcom/criteo/publisher/advancednative/RendererHelper;

.field private final visibilityTracker:Lcom/criteo/publisher/advancednative/q;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/model/b0/n;Lcom/criteo/publisher/advancednative/q;Lcom/criteo/publisher/advancednative/j;Lcom/criteo/publisher/advancednative/e;Lcom/criteo/publisher/advancednative/n;Lcom/criteo/publisher/advancednative/n;Lcom/criteo/publisher/advancednative/b;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Lcom/criteo/publisher/advancednative/RendererHelper;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Lcom/criteo/publisher/model/b0/n;

    .line 75
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->visibilityTracker:Lcom/criteo/publisher/advancednative/q;

    .line 76
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->impressionTask:Lcom/criteo/publisher/advancednative/j;

    .line 77
    iput-object p4, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickDetection:Lcom/criteo/publisher/advancednative/e;

    .line 78
    iput-object p5, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickOnProductHandler:Lcom/criteo/publisher/advancednative/n;

    .line 79
    iput-object p6, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickOnAdChoiceHandler:Lcom/criteo/publisher/advancednative/n;

    .line 80
    iput-object p7, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->adChoiceOverlay:Lcom/criteo/publisher/advancednative/b;

    .line 81
    iput-object p8, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    .line 82
    iput-object p9, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->rendererHelper:Lcom/criteo/publisher/advancednative/RendererHelper;

    return-void
.end method


# virtual methods
.method public createNativeRenderedView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    invoke-interface {v0, p1, p2}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->renderNativeView(Landroid/view/View;)V

    return-object p1
.end method

.method getAdChoiceView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->adChoiceOverlay:Lcom/criteo/publisher/advancednative/b;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/advancednative/b;->a(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method public getAdvertiserDescription()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Lcom/criteo/publisher/model/b0/n;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/n;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertiserDomain()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Lcom/criteo/publisher/model/b0/n;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/n;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertiserLogoMedia()Lcom/criteo/publisher/advancednative/CriteoMedia;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Lcom/criteo/publisher/model/b0/n;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/n;->f()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/advancednative/CriteoMedia;->create(Ljava/net/URL;)Lcom/criteo/publisher/advancednative/CriteoMedia;

    move-result-object v0

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Lcom/criteo/publisher/model/b0/n;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/n;->n()Lcom/criteo/publisher/model/b0/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Lcom/criteo/publisher/model/b0/n;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/n;->n()Lcom/criteo/publisher/model/b0/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLegalText()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Lcom/criteo/publisher/model/b0/n;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/n;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Lcom/criteo/publisher/model/b0/n;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/n;->n()Lcom/criteo/publisher/model/b0/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductMedia()Lcom/criteo/publisher/advancednative/CriteoMedia;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Lcom/criteo/publisher/model/b0/n;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/n;->n()Lcom/criteo/publisher/model/b0/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->e()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/advancednative/CriteoMedia;->create(Ljava/net/URL;)Lcom/criteo/publisher/advancednative/CriteoMedia;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Lcom/criteo/publisher/model/b0/n;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/n;->n()Lcom/criteo/publisher/model/b0/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public renderNativeView(Landroid/view/View;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->rendererHelper:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-interface {v0, v1, p1, p0}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->renderNativeView(Lcom/criteo/publisher/advancednative/RendererHelper;Landroid/view/View;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->watchForImpression(Landroid/view/View;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->setProductClickableView(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->adChoiceOverlay:Lcom/criteo/publisher/advancednative/b;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/advancednative/b;->a(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->setAdChoiceClickableView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->rendererHelper:Lcom/criteo/publisher/advancednative/RendererHelper;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Lcom/criteo/publisher/model/b0/n;

    .line 173
    invoke-virtual {v1}, Lcom/criteo/publisher/model/b0/n;->m()Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v1, p1, v2}, Lcom/criteo/publisher/advancednative/RendererHelper;->setMediaInView(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method setAdChoiceClickableView(Landroid/view/View;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickDetection:Lcom/criteo/publisher/advancednative/e;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickOnAdChoiceHandler:Lcom/criteo/publisher/advancednative/n;

    invoke-virtual {v0, p1, v1}, Lcom/criteo/publisher/advancednative/e;->a(Landroid/view/View;Lcom/criteo/publisher/advancednative/n;)V

    return-void
.end method

.method setProductClickableView(Landroid/view/View;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickDetection:Lcom/criteo/publisher/advancednative/e;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickOnProductHandler:Lcom/criteo/publisher/advancednative/n;

    invoke-virtual {v0, p1, v1}, Lcom/criteo/publisher/advancednative/e;->a(Landroid/view/View;Lcom/criteo/publisher/advancednative/n;)V

    return-void
.end method

.method setRenderer(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    return-void
.end method

.method watchForImpression(Landroid/view/View;)V
    .locals 6

    .line 199
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->visibilityTracker:Lcom/criteo/publisher/advancednative/q;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->impressionTask:Lcom/criteo/publisher/advancednative/j;

    .line 1064
    iget-object v2, v0, Lcom/criteo/publisher/advancednative/q;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 1065
    :try_start_0
    iget-object v3, v0, Lcom/criteo/publisher/advancednative/q;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/criteo/publisher/advancednative/q$a;

    if-nez v3, :cond_0

    .line 1077
    new-instance v3, Lcom/criteo/publisher/advancednative/q$a;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/criteo/publisher/advancednative/q;->a:Lcom/criteo/publisher/advancednative/o;

    invoke-direct {v3, v4, v5}, Lcom/criteo/publisher/advancednative/q$a;-><init>(Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/o;)V

    .line 1068
    iget-object v0, v0, Lcom/criteo/publisher/advancednative/q;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    iput-object v1, v3, Lcom/criteo/publisher/advancednative/q$a;->a:Lcom/criteo/publisher/advancednative/p;

    return-void

    :catchall_0
    move-exception p1

    .line 1070
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
