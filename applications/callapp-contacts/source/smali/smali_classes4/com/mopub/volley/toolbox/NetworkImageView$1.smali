.class final Lcom/mopub/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/toolbox/NetworkImageView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mopub/volley/toolbox/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/mopub/volley/toolbox/NetworkImageView;Z)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/mopub/volley/toolbox/NetworkImageView;->a(Lcom/mopub/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/mopub/volley/toolbox/NetworkImageView;->a(Lcom/mopub/volley/toolbox/NetworkImageView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageResource(I)V

    return-void

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/mopub/volley/toolbox/NetworkImageView;->b(Lcom/mopub/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/mopub/volley/toolbox/NetworkImageView;->b(Lcom/mopub/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public final onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 220
    iget-boolean p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->a:Z

    if-eqz p2, :cond_0

    .line 221
    iget-object p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    new-instance v0, Lcom/mopub/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/mopub/volley/toolbox/NetworkImageView$1;Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {p2, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 232
    iget-object p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 233
    :cond_1
    iget-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/mopub/volley/toolbox/NetworkImageView;->c(Lcom/mopub/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 234
    iget-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/mopub/volley/toolbox/NetworkImageView;->c(Lcom/mopub/volley/toolbox/NetworkImageView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageResource(I)V

    return-void

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    iget-object p1, p1, Lcom/mopub/volley/toolbox/NetworkImageView;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 236
    iget-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    iget-object p2, p1, Lcom/mopub/volley/toolbox/NetworkImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    return-void
.end method
