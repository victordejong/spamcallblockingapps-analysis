.class final Lcom/criteo/publisher/advancednative/RendererHelper$b;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/RendererHelper;->setMediaInView(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/URL;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/graphics/drawable/Drawable;

.field final synthetic d:Lcom/criteo/publisher/advancednative/RendererHelper;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/RendererHelper;Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->d:Lcom/criteo/publisher/advancednative/RendererHelper;

    iput-object p2, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->a:Ljava/net/URL;

    iput-object p3, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->d:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-static {v0}, Lcom/criteo/publisher/advancednative/RendererHelper;->access$000(Lcom/criteo/publisher/advancednative/RendererHelper;)Lcom/criteo/publisher/advancednative/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/advancednative/h;->a()Lcom/criteo/publisher/advancednative/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->a:Ljava/net/URL;

    iget-object v2, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->c:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1, v2, v3}, Lcom/criteo/publisher/advancednative/ImageLoader;->loadImageInto(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
