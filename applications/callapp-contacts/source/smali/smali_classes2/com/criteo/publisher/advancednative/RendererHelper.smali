.class public Lcom/criteo/publisher/advancednative/RendererHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final imageLoaderHolder:Lcom/criteo/publisher/advancednative/h;

.field private final uiExecutor:Lcom/criteo/publisher/e/c;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/h;Lcom/criteo/publisher/e/c;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/RendererHelper;->imageLoaderHolder:Lcom/criteo/publisher/advancednative/h;

    .line 42
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/RendererHelper;->uiExecutor:Lcom/criteo/publisher/e/c;

    return-void
.end method

.method static synthetic access$000(Lcom/criteo/publisher/advancednative/RendererHelper;)Lcom/criteo/publisher/advancednative/h;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/criteo/publisher/advancednative/RendererHelper;->imageLoaderHolder:Lcom/criteo/publisher/advancednative/h;

    return-object p0
.end method


# virtual methods
.method preloadMedia(Ljava/net/URL;)V
    .locals 1

    .line 46
    new-instance v0, Lcom/criteo/publisher/advancednative/RendererHelper$a;

    invoke-direct {v0, p0, p1}, Lcom/criteo/publisher/advancednative/RendererHelper$a;-><init>(Lcom/criteo/publisher/advancednative/RendererHelper;Ljava/net/URL;)V

    .line 51
    invoke-virtual {v0}, Lcom/criteo/publisher/v;->run()V

    return-void
.end method

.method public setMediaInView(Lcom/criteo/publisher/advancednative/CriteoMedia;Lcom/criteo/publisher/advancednative/CriteoMediaView;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Lcom/criteo/publisher/advancednative/CriteoMedia;->getImageUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p2}, Lcom/criteo/publisher/advancednative/CriteoMediaView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/criteo/publisher/advancednative/CriteoMediaView;->getPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/criteo/publisher/advancednative/RendererHelper;->setMediaInView(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setMediaInView(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/RendererHelper;->uiExecutor:Lcom/criteo/publisher/e/c;

    new-instance v1, Lcom/criteo/publisher/advancednative/RendererHelper$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/criteo/publisher/advancednative/RendererHelper$b;-><init>(Lcom/criteo/publisher/advancednative/RendererHelper;Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e/c;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
