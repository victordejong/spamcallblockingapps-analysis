.class public Lcom/kedlin/cca/util/UrlImageView$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/util/UrlImageView;->setImageDrawable(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Lcom/kedlin/cca/util/UrlImageView;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/util/UrlImageView;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/util/UrlImageView$a;->c:Lcom/kedlin/cca/util/UrlImageView;

    iput-object p2, p0, Lcom/kedlin/cca/util/UrlImageView$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/kedlin/cca/util/UrlImageView$a;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/kedlin/cca/util/UrlImageView$a;->c:Lcom/kedlin/cca/util/UrlImageView;

    iget-object v1, p0, Lcom/kedlin/cca/util/UrlImageView$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/kedlin/cca/util/UrlImageView;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kedlin/cca/util/UrlImageView;->b(Lcom/kedlin/cca/util/UrlImageView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/kedlin/cca/util/UrlImageView$a;->c:Lcom/kedlin/cca/util/UrlImageView;

    invoke-static {v0}, Lcom/kedlin/cca/util/UrlImageView;->d(Lcom/kedlin/cca/util/UrlImageView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/kedlin/cca/util/UrlImageView$a;->b:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/kedlin/cca/util/UrlImageView;->e()Lqe1;

    move-result-object v1

    iget-object v2, p0, Lcom/kedlin/cca/util/UrlImageView$a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lqe1;->n(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    iget-object v0, p0, Lcom/kedlin/cca/util/UrlImageView$a;->c:Lcom/kedlin/cca/util/UrlImageView;

    invoke-static {v0}, Lcom/kedlin/cca/util/UrlImageView;->d(Lcom/kedlin/cca/util/UrlImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
