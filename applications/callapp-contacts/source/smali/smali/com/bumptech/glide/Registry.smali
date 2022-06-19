.class public final Lcom/bumptech/glide/Registry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/Registry$NoImageHeaderParserException;,
        Lcom/bumptech/glide/Registry$MissingComponentException;,
        Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;
    }
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/d/a;

.field public final b:Lcom/bumptech/glide/d/f;

.field public final c:Lcom/bumptech/glide/load/data/f;

.field private final d:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

.field private final e:Lcom/bumptech/glide/d/e;

.field private final f:Lcom/bumptech/glide/load/resource/e/f;

.field private final g:Lcom/bumptech/glide/d/b;

.field private final h:Lcom/bumptech/glide/d/d;

.field private final i:Lcom/bumptech/glide/d/c;

.field private final j:Landroidx/core/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/e/c$a<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/bumptech/glide/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->h:Lcom/bumptech/glide/d/d;

    .line 56
    new-instance v0, Lcom/bumptech/glide/d/c;

    invoke-direct {v0}, Lcom/bumptech/glide/d/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->i:Lcom/bumptech/glide/d/c;

    .line 57
    invoke-static {}, Lcom/bumptech/glide/g/a/a;->a()Landroidx/core/e/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->j:Landroidx/core/e/c$a;

    .line 60
    new-instance v1, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;-><init>(Landroidx/core/e/c$a;)V

    iput-object v1, p0, Lcom/bumptech/glide/Registry;->d:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    .line 61
    new-instance v0, Lcom/bumptech/glide/d/a;

    invoke-direct {v0}, Lcom/bumptech/glide/d/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->a:Lcom/bumptech/glide/d/a;

    .line 62
    new-instance v0, Lcom/bumptech/glide/d/e;

    invoke-direct {v0}, Lcom/bumptech/glide/d/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->e:Lcom/bumptech/glide/d/e;

    .line 63
    new-instance v0, Lcom/bumptech/glide/d/f;

    invoke-direct {v0}, Lcom/bumptech/glide/d/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->b:Lcom/bumptech/glide/d/f;

    .line 64
    new-instance v0, Lcom/bumptech/glide/load/data/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->c:Lcom/bumptech/glide/load/data/f;

    .line 65
    new-instance v0, Lcom/bumptech/glide/load/resource/e/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/e/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->f:Lcom/bumptech/glide/load/resource/e/f;

    .line 66
    new-instance v0, Lcom/bumptech/glide/d/b;

    invoke-direct {v0}, Lcom/bumptech/glide/d/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->g:Lcom/bumptech/glide/d/b;

    const-string v0, "Gif"

    const-string v1, "Bitmap"

    const-string v2, "BitmapDrawable"

    .line 67
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Lcom/bumptech/glide/Registry;->a(Ljava/util/List;)Lcom/bumptech/glide/Registry;

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/bumptech/glide/Registry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "legacy_prepend_all"

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "legacy_append"

    .line 269
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object p1, p0, Lcom/bumptech/glide/Registry;->e:Lcom/bumptech/glide/d/e;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d/e;->a(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->g:Lcom/bumptech/glide/d/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/b;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    return-object p0
.end method

.method public final a(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/e$a<",
            "*>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->c:Lcom/bumptech/glide/load/data/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/f;->a(Lcom/bumptech/glide/load/data/e$a;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/d<",
            "TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->a:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/d/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/k<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->b:Lcom/bumptech/glide/d/f;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/d/f;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/j<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    const-string v0, "legacy_append"

    .line 153
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "TModel;TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->d:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/e;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lcom/bumptech/glide/load/resource/e/e<",
            "TTResource;TTranscode;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->f:Lcom/bumptech/glide/load/resource/e/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/e/f;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/e;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/j<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->e:Lcom/bumptech/glide/d/e;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/bumptech/glide/d/e;->a(Ljava/lang/String;Lcom/bumptech/glide/load/j;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/s;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lcom/bumptech/glide/load/engine/s<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 473
    iget-object v2, v1, Lcom/bumptech/glide/Registry;->i:Lcom/bumptech/glide/d/c;

    .line 474
    invoke-virtual {v2, v0, v9, v10}, Lcom/bumptech/glide/d/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/s;

    move-result-object v2

    .line 475
    invoke-static {v2}, Lcom/bumptech/glide/d/c;->a(Lcom/bumptech/glide/load/engine/s;)Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_0

    return-object v11

    :cond_0
    if-nez v2, :cond_5

    .line 1499
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    iget-object v2, v1, Lcom/bumptech/glide/Registry;->e:Lcom/bumptech/glide/d/e;

    .line 1501
    invoke-virtual {v2, v0, v9}, Lcom/bumptech/glide/d/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 1503
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Class;

    .line 1504
    iget-object v2, v1, Lcom/bumptech/glide/Registry;->f:Lcom/bumptech/glide/load/resource/e/f;

    .line 1505
    invoke-virtual {v2, v14, v10}, Lcom/bumptech/glide/load/resource/e/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 1507
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    .line 1509
    iget-object v2, v1, Lcom/bumptech/glide/Registry;->e:Lcom/bumptech/glide/d/e;

    .line 1510
    invoke-virtual {v2, v0, v14}, Lcom/bumptech/glide/d/e;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 1511
    iget-object v2, v1, Lcom/bumptech/glide/Registry;->f:Lcom/bumptech/glide/load/resource/e/f;

    .line 1512
    invoke-virtual {v2, v14, v5}, Lcom/bumptech/glide/load/resource/e/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/e/e;

    move-result-object v7

    .line 1514
    new-instance v8, Lcom/bumptech/glide/load/engine/i;

    iget-object v4, v1, Lcom/bumptech/glide/Registry;->j:Landroidx/core/e/c$a;

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v16, v4

    move-object v4, v14

    move-object v11, v8

    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lcom/bumptech/glide/load/engine/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/resource/e/e;Landroidx/core/e/c$a;)V

    .line 1522
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    goto :goto_0

    .line 482
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 485
    :cond_3
    new-instance v8, Lcom/bumptech/glide/load/engine/s;

    iget-object v7, v1, Lcom/bumptech/glide/Registry;->j:Landroidx/core/e/c$a;

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v12

    invoke-direct/range {v2 .. v7}, Lcom/bumptech/glide/load/engine/s;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroidx/core/e/c$a;)V

    .line 489
    :goto_1
    iget-object v3, v1, Lcom/bumptech/glide/Registry;->i:Lcom/bumptech/glide/d/c;

    .line 2069
    iget-object v4, v3, Lcom/bumptech/glide/d/c;->b:Landroidx/b/a;

    monitor-enter v4

    .line 2070
    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/d/c;->b:Landroidx/b/a;

    new-instance v5, Lcom/bumptech/glide/g/i;

    invoke-direct {v5, v0, v9, v10}, Lcom/bumptech/glide/g/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    if-eqz v2, :cond_4

    move-object v0, v2

    goto :goto_2

    .line 2072
    :cond_4
    sget-object v0, Lcom/bumptech/glide/d/c;->a:Lcom/bumptech/glide/load/engine/s;

    .line 2070
    :goto_2
    invoke-virtual {v3, v5, v0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_3
    return-object v2
.end method

.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->g:Lcom/bumptech/glide/d/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/b;->a()Ljava/util/List;

    move-result-object v0

    .line 594
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 595
    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;

    invoke-direct {v0}, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModel;*>;>;"
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->d:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->d:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->h:Lcom/bumptech/glide/d/d;

    .line 534
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/d/d;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->d:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->getDataClasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 539
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 540
    iget-object v3, p0, Lcom/bumptech/glide/Registry;->e:Lcom/bumptech/glide/d/e;

    .line 541
    invoke-virtual {v3, v2, p2}, Lcom/bumptech/glide/d/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 542
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 543
    iget-object v4, p0, Lcom/bumptech/glide/Registry;->f:Lcom/bumptech/glide/load/resource/e/f;

    .line 544
    invoke-virtual {v4, v3, p3}, Lcom/bumptech/glide/load/resource/e/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 545
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 546
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->h:Lcom/bumptech/glide/d/d;

    .line 551
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 3043
    iget-object v3, v1, Lcom/bumptech/glide/d/d;->a:Landroidx/b/a;

    monitor-enter v3

    .line 3044
    :try_start_0
    iget-object v1, v1, Lcom/bumptech/glide/d/d;->a:Landroidx/b/a;

    new-instance v4, Lcom/bumptech/glide/g/i;

    invoke-direct {v4, p1, p2, p3}, Lcom/bumptech/glide/g/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v1, v4, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3046
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-object v0
.end method
