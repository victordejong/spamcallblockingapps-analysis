.class final Lcom/mopub/volley/toolbox/ImageLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:I


# direct methods
.method constructor <init>(ILandroid/widget/ImageView;I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->a:I

    iput-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->b:Landroid/widget/ImageView;

    iput p3, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 1

    .line 103
    iget p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->a:I

    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public final onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 0

    .line 110
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 111
    iget-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 112
    :cond_0
    iget p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->c:I

    if-eqz p1, :cond_1

    .line 113
    iget-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method
