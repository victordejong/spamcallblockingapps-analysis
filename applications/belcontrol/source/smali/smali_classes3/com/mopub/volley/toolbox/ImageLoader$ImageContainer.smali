.class public Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public final b:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final synthetic e:Lcom/mopub/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method public static synthetic a(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
    .locals 0

    iget-object p0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    invoke-static {}, Lgi1;->a()V

    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mopub/volley/toolbox/ImageLoader;->a(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/toolbox/ImageLoader$e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/mopub/volley/toolbox/ImageLoader$e;->removeContainerAndCancelIfNecessary(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mopub/volley/toolbox/ImageLoader;->a(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mopub/volley/toolbox/ImageLoader;->b(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/toolbox/ImageLoader$e;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/mopub/volley/toolbox/ImageLoader$e;->removeContainerAndCancelIfNecessary(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Z

    invoke-static {v0}, Lcom/mopub/volley/toolbox/ImageLoader$e;->c(Lcom/mopub/volley/toolbox/ImageLoader$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mopub/volley/toolbox/ImageLoader;->b(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    return-object v0
.end method
