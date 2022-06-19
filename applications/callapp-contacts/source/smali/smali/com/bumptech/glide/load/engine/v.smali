.class final Lcom/bumptech/glide/load/engine/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/d$a;
.implements Lcom/bumptech/glide/load/engine/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/d$a<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/bumptech/glide/load/engine/f;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/f$a;

.field private final b:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Lcom/bumptech/glide/load/f;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private g:I

.field private volatile h:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;"
        }
    .end annotation
.end field

.field private i:Ljava/io/File;

.field private j:Lcom/bumptech/glide/load/engine/w;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/f$a;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/bumptech/glide/load/engine/v;->d:I

    .line 36
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 37
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/v;->a:Lcom/bumptech/glide/load/engine/f$a;

    return-void
.end method

.method private c()Z
    .locals 2

    .line 110
    iget v0, p0, Lcom/bumptech/glide/load/engine/v;->g:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 14

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->d()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 1135
    iget-object v3, v1, Lcom/bumptech/glide/load/engine/g;->a:Lcom/bumptech/glide/e;

    .line 2110
    iget-object v3, v3, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/Registry;

    .line 1136
    iget-object v4, v1, Lcom/bumptech/glide/load/engine/g;->b:Ljava/lang/Object;

    .line 1137
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, v1, Lcom/bumptech/glide/load/engine/g;->e:Ljava/lang/Class;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/g;->i:Ljava/lang/Class;

    invoke-virtual {v3, v4, v5, v1}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 2127
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/g;->i:Ljava/lang/Class;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find any load path from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 2131
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/g;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 3127
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/g;->i:Ljava/lang/Class;

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/v;->f:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/v;->c()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/v;->h:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 95
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/v;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->f:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/load/engine/v;->g:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/bumptech/glide/load/engine/v;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 97
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->i:Ljava/io/File;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 7115
    iget v3, v3, Lcom/bumptech/glide/load/engine/g;->c:I

    .line 99
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 7119
    iget v5, v5, Lcom/bumptech/glide/load/engine/g;->d:I

    .line 99
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 8107
    iget-object v6, v6, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/h;

    .line 98
    invoke-interface {v0, v1, v3, v5, v6}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/v;->h:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->h:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->h:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v1, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->getDataClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/g;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->h:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 9103
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/g;->k:Lcom/bumptech/glide/h;

    .line 102
    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/data/d;->loadData(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/data/d$a;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    return v2

    .line 60
    :cond_6
    :goto_2
    iget v3, p0, Lcom/bumptech/glide/load/engine/v;->d:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/load/engine/v;->d:I

    .line 61
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_8

    .line 62
    iget v3, p0, Lcom/bumptech/glide/load/engine/v;->c:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/load/engine/v;->c:I

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_7

    return v2

    .line 66
    :cond_7
    iput v2, p0, Lcom/bumptech/glide/load/engine/v;->d:I

    .line 69
    :cond_8
    iget v3, p0, Lcom/bumptech/glide/load/engine/v;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/f;

    .line 70
    iget v4, p0, Lcom/bumptech/glide/load/engine/v;->d:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Class;

    .line 71
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4, v11}, Lcom/bumptech/glide/load/engine/g;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    move-result-object v10

    .line 75
    new-instance v13, Lcom/bumptech/glide/load/engine/w;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 4123
    iget-object v4, v4, Lcom/bumptech/glide/load/engine/g;->a:Lcom/bumptech/glide/e;

    .line 5119
    iget-object v5, v4, Lcom/bumptech/glide/e;->b:Lcom/bumptech/glide/load/engine/a/b;

    .line 77
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 6111
    iget-object v7, v4, Lcom/bumptech/glide/load/engine/g;->j:Lcom/bumptech/glide/load/f;

    .line 79
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 6115
    iget v8, v4, Lcom/bumptech/glide/load/engine/g;->c:I

    .line 80
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 6119
    iget v9, v4, Lcom/bumptech/glide/load/engine/g;->d:I

    .line 81
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    .line 7107
    iget-object v12, v4, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/h;

    move-object v4, v13

    move-object v6, v3

    .line 84
    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/load/engine/w;-><init>(Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/f;IILcom/bumptech/glide/load/l;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)V

    iput-object v13, p0, Lcom/bumptech/glide/load/engine/v;->j:Lcom/bumptech/glide/load/engine/w;

    .line 85
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->b()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/v;->j:Lcom/bumptech/glide/load/engine/w;

    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/engine/b/a;->a(Lcom/bumptech/glide/load/f;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/load/engine/v;->i:Ljava/io/File;

    if-eqz v4, :cond_2

    .line 87
    iput-object v3, p0, Lcom/bumptech/glide/load/engine/v;->e:Lcom/bumptech/glide/load/f;

    .line 88
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/g;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/bumptech/glide/load/engine/v;->f:Ljava/util/List;

    .line 89
    iput v2, p0, Lcom/bumptech/glide/load/engine/v;->g:I

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->h:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final onDataReady(Ljava/lang/Object;)V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->a:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->e:Lcom/bumptech/glide/load/f;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/v;->h:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    sget-object v4, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/v;->j:Lcom/bumptech/glide/load/engine/w;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/f;)V

    return-void
.end method

.method public final onLoadFailed(Ljava/lang/Exception;)V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->a:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->j:Lcom/bumptech/glide/load/engine/w;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/v;->h:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v2, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/d;

    sget-object v3, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;)V

    return-void
.end method
