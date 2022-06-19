.class final Lcom/bumptech/glide/load/engine/y$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

.field final synthetic b:Lcom/bumptech/glide/load/engine/y;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/y;Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/y$1;->b:Lcom/bumptech/glide/load/engine/y;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/y$1;->a:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReady(Ljava/lang/Object;)V
    .locals 7

    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y$1;->b:Lcom/bumptech/glide/load/engine/y;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/y$1;->a:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/y;->a(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y$1;->b:Lcom/bumptech/glide/load/engine/y;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/y$1;->a:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 1141
    iget-object v2, v0, Lcom/bumptech/glide/load/engine/y;->a:Lcom/bumptech/glide/load/engine/g;

    .line 2099
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/g;->l:Lcom/bumptech/glide/load/engine/j;

    if-eqz p1, :cond_0

    .line 1142
    iget-object v3, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/d;->getDataSource()Lcom/bumptech/glide/load/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    iput-object p1, v0, Lcom/bumptech/glide/load/engine/y;->c:Ljava/lang/Object;

    .line 1146
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/y;->b:Lcom/bumptech/glide/load/engine/f$a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/f$a;->c()V

    return-void

    .line 1148
    :cond_0
    iget-object v2, v0, Lcom/bumptech/glide/load/engine/y;->b:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v3, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/f;

    iget-object v4, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 1152
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->getDataSource()Lcom/bumptech/glide/load/a;

    move-result-object v5

    iget-object v6, v0, Lcom/bumptech/glide/load/engine/y;->d:Lcom/bumptech/glide/load/engine/d;

    move-object v0, v2

    move-object v1, v3

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 1148
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/f;)V

    :cond_1
    return-void
.end method

.method public final onLoadFailed(Ljava/lang/Exception;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y$1;->b:Lcom/bumptech/glide/load/engine/y;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/y$1;->a:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/y;->a(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y$1;->b:Lcom/bumptech/glide/load/engine/y;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/y$1;->a:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 2160
    iget-object v2, v0, Lcom/bumptech/glide/load/engine/y;->b:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/y;->d:Lcom/bumptech/glide/load/engine/d;

    iget-object v3, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->getDataSource()Lcom/bumptech/glide/load/a;

    move-result-object v1

    invoke-interface {v2, v0, p1, v3, v1}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;)V

    :cond_0
    return-void
.end method
