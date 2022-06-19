.class public Lcom/kedlin/cca/util/UrlImageView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/util/UrlImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/util/UrlImageView;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/util/UrlImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/util/UrlImageView$b;->a:Lcom/kedlin/cca/util/UrlImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView$b;->a:Lcom/kedlin/cca/util/UrlImageView;

    invoke-static {p1}, Lcom/kedlin/cca/util/UrlImageView;->h(Lcom/kedlin/cca/util/UrlImageView;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView$b;->a:Lcom/kedlin/cca/util/UrlImageView;

    invoke-static {p1}, Lcom/kedlin/cca/util/UrlImageView;->f(Lcom/kedlin/cca/util/UrlImageView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/kedlin/cca/util/UrlImageView$b;->a:Lcom/kedlin/cca/util/UrlImageView;

    invoke-static {v3}, Lcom/kedlin/cca/util/UrlImageView;->h(Lcom/kedlin/cca/util/UrlImageView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView$b;->a:Lcom/kedlin/cca/util/UrlImageView;

    invoke-static {p1}, Lcom/kedlin/cca/util/UrlImageView;->f(Lcom/kedlin/cca/util/UrlImageView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView$b;->a:Lcom/kedlin/cca/util/UrlImageView;

    invoke-static {p1}, Lcom/kedlin/cca/util/UrlImageView;->f(Lcom/kedlin/cca/util/UrlImageView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v2, p0, Lcom/kedlin/cca/util/UrlImageView$b;->a:Lcom/kedlin/cca/util/UrlImageView;

    invoke-static {v2}, Lcom/kedlin/cca/util/UrlImageView;->a(Lcom/kedlin/cca/util/UrlImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView$b;->a:Lcom/kedlin/cca/util/UrlImageView;

    invoke-static {p1}, Lcom/kedlin/cca/util/UrlImageView;->f(Lcom/kedlin/cca/util/UrlImageView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView$b;->a:Lcom/kedlin/cca/util/UrlImageView;

    invoke-static {p1}, Lcom/kedlin/cca/util/UrlImageView;->g(Lcom/kedlin/cca/util/UrlImageView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
