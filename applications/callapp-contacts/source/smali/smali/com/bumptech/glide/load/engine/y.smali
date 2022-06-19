.class final Lcom/bumptech/glide/load/engine/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/f;
.implements Lcom/bumptech/glide/load/engine/f$a;


# instance fields
.field final a:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;"
        }
    .end annotation
.end field

.field final b:Lcom/bumptech/glide/load/engine/f$a;

.field c:Ljava/lang/Object;

.field d:Lcom/bumptech/glide/load/engine/d;

.field private e:I

.field private f:Lcom/bumptech/glide/load/engine/c;

.field private volatile g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/f$a;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/y;->a:Lcom/bumptech/glide/load/engine/g;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/y;->b:Lcom/bumptech/glide/load/engine/f$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 182
    iget-object p4, p0, Lcom/bumptech/glide/load/engine/y;->b:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->getDataSource()Lcom/bumptech/glide/load/a;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/f;",
            ")V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y;->b:Lcom/bumptech/glide/load/engine/f$a;

    iget-object p4, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object p4, p4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    invoke-interface {p4}, Lcom/bumptech/glide/load/data/d;->getDataSource()Lcom/bumptech/glide/load/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/f;)V

    return-void
.end method

.method public final a()Z
    .locals 9

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 46
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/y;->c:Ljava/lang/Object;

    .line 1102
    invoke-static {}, Lcom/bumptech/glide/g/f;->a()J

    move-result-wide v2

    .line 1104
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/y;->a:Lcom/bumptech/glide/load/engine/g;

    .line 1242
    iget-object v4, v4, Lcom/bumptech/glide/load/engine/g;->a:Lcom/bumptech/glide/e;

    .line 2110
    iget-object v4, v4, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/Registry;

    .line 2574
    iget-object v4, v4, Lcom/bumptech/glide/Registry;->a:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/d/a;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/d;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1105
    new-instance v5, Lcom/bumptech/glide/load/engine/e;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/y;->a:Lcom/bumptech/glide/load/engine/g;

    .line 3107
    iget-object v6, v6, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/h;

    .line 1106
    invoke-direct {v5, v4, v0, v6}, Lcom/bumptech/glide/load/engine/e;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/h;)V

    .line 1107
    new-instance v6, Lcom/bumptech/glide/load/engine/d;

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v7, v7, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/f;

    iget-object v8, p0, Lcom/bumptech/glide/load/engine/y;->a:Lcom/bumptech/glide/load/engine/g;

    .line 3111
    iget-object v8, v8, Lcom/bumptech/glide/load/engine/g;->j:Lcom/bumptech/glide/load/f;

    .line 1107
    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/f;)V

    iput-object v6, p0, Lcom/bumptech/glide/load/engine/y;->d:Lcom/bumptech/glide/load/engine/d;

    .line 1108
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/y;->a:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/g;->b()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v6

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/y;->d:Lcom/bumptech/glide/load/engine/d;

    invoke-interface {v6, v7, v5}, Lcom/bumptech/glide/load/engine/b/a;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/b/a$b;)V

    const-string v5, "SourceGenerator"

    const/4 v6, 0x2

    .line 1109
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1110
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Finished encoding source to cache, key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/y;->d:Lcom/bumptech/glide/load/engine/d;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", encoder: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    invoke-static {v2, v3}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->cleanup()V

    .line 1126
    new-instance v0, Lcom/bumptech/glide/load/engine/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v2, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/f;

    .line 1127
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/y;->a:Lcom/bumptech/glide/load/engine/g;

    invoke-direct {v0, v2, v3, p0}, Lcom/bumptech/glide/load/engine/c;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/y;->f:Lcom/bumptech/glide/load/engine/c;

    goto :goto_0

    .line 2578
    :cond_1
    :try_start_1
    new-instance v1, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 1123
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->cleanup()V

    throw v0

    .line 50
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y;->f:Lcom/bumptech/glide/load/engine/c;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 53
    :cond_3
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/y;->f:Lcom/bumptech/glide/load/engine/c;

    .line 55
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-nez v1, :cond_7

    .line 4098
    iget v3, p0, Lcom/bumptech/glide/load/engine/y;->e:I

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/y;->a:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_7

    .line 58
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/y;->a:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/g;->c()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/bumptech/glide/load/engine/y;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/bumptech/glide/load/engine/y;->e:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iput-object v3, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 59
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/y;->a:Lcom/bumptech/glide/load/engine/g;

    .line 4099
    iget-object v3, v3, Lcom/bumptech/glide/load/engine/g;->l:Lcom/bumptech/glide/load/engine/j;

    .line 60
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v4, v4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v4}, Lcom/bumptech/glide/load/data/d;->getDataSource()Lcom/bumptech/glide/load/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/a;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/y;->a:Lcom/bumptech/glide/load/engine/g;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v4, v4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 61
    invoke-interface {v4}, Lcom/bumptech/glide/load/data/d;->getDataClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/g;->a(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 63
    :cond_6
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 5070
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/y;->a:Lcom/bumptech/glide/load/engine/g;

    .line 5103
    iget-object v4, v4, Lcom/bumptech/glide/load/engine/g;->k:Lcom/bumptech/glide/h;

    .line 5071
    new-instance v5, Lcom/bumptech/glide/load/engine/y$1;

    invoke-direct {v5, p0, v1}, Lcom/bumptech/glide/load/engine/y$1;-><init>(Lcom/bumptech/glide/load/engine/y;Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)V

    .line 5070
    invoke-interface {v3, v4, v5}, Lcom/bumptech/glide/load/data/d;->loadData(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/data/d$a;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    return v1
.end method

.method final a(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;)Z"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y;->g:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
