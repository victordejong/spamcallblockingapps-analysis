.class final Lcom/mopub/volley/toolbox/ImageLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/mopub/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Lcom/mopub/volley/VolleyError;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/Request;Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;",
            "Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$a;->b:Ljava/util/List;

    .line 439
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$a;->c:Lcom/mopub/volley/Request;

    .line 440
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final addContainer(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getError()Lcom/mopub/volley/VolleyError;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$a;->d:Lcom/mopub/volley/VolleyError;

    return-object v0
.end method

.method public final removeContainerAndCancelIfNecessary(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Z
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 470
    iget-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$a;->c:Lcom/mopub/volley/Request;

    invoke-virtual {p1}, Lcom/mopub/volley/Request;->cancel()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setError(Lcom/mopub/volley/VolleyError;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$a;->d:Lcom/mopub/volley/VolleyError;

    return-void
.end method
