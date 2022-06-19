.class public Lcom/bumptech/glide/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/bumptech/glide/manager/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/k$a;,
        Lcom/bumptech/glide/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lcom/bumptech/glide/manager/m;"
    }
.end annotation


# static fields
.field private static final d:Lcom/bumptech/glide/e/h;

.field private static final e:Lcom/bumptech/glide/e/h;

.field private static final f:Lcom/bumptech/glide/e/h;


# instance fields
.field protected final a:Lcom/bumptech/glide/c;

.field protected final b:Landroid/content/Context;

.field final c:Lcom/bumptech/glide/manager/l;

.field private final g:Lcom/bumptech/glide/manager/q;

.field private final h:Lcom/bumptech/glide/manager/p;

.field private final i:Lcom/bumptech/glide/manager/s;

.field private final j:Ljava/lang/Runnable;

.field private final k:Lcom/bumptech/glide/manager/c;

.field private final l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bumptech/glide/e/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Lcom/bumptech/glide/e/h;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/e/h;->b(Ljava/lang/Class;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->j()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/k;->d:Lcom/bumptech/glide/e/h;

    .line 60
    const-class v0, Lcom/bumptech/glide/load/resource/d/c;

    invoke-static {v0}, Lcom/bumptech/glide/e/h;->b(Ljava/lang/Class;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->j()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/k;->e:Lcom/bumptech/glide/e/h;

    .line 61
    sget-object v0, Lcom/bumptech/glide/load/engine/j;->c:Lcom/bumptech/glide/load/engine/j;

    .line 62
    invoke-static {v0}, Lcom/bumptech/glide/e/h;->b(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/h;->LOW:Lcom/bumptech/glide/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/h;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/h;->b(Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/k;->f:Lcom/bumptech/glide/e/h;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/p;Landroid/content/Context;)V
    .locals 7

    .line 103
    new-instance v4, Lcom/bumptech/glide/manager/q;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/q;-><init>()V

    .line 1646
    iget-object v5, p1, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/manager/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 103
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/p;Lcom/bumptech/glide/manager/q;Lcom/bumptech/glide/manager/d;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/p;Lcom/bumptech/glide/manager/q;Lcom/bumptech/glide/manager/d;Landroid/content/Context;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/bumptech/glide/manager/s;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/s;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/k;->i:Lcom/bumptech/glide/manager/s;

    .line 80
    new-instance v0, Lcom/bumptech/glide/k$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/k$1;-><init>(Lcom/bumptech/glide/k;)V

    iput-object v0, p0, Lcom/bumptech/glide/k;->j:Ljava/lang/Runnable;

    .line 121
    iput-object p1, p0, Lcom/bumptech/glide/k;->a:Lcom/bumptech/glide/c;

    .line 122
    iput-object p2, p0, Lcom/bumptech/glide/k;->c:Lcom/bumptech/glide/manager/l;

    .line 123
    iput-object p3, p0, Lcom/bumptech/glide/k;->h:Lcom/bumptech/glide/manager/p;

    .line 124
    iput-object p4, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/manager/q;

    .line 125
    iput-object p6, p0, Lcom/bumptech/glide/k;->b:Landroid/content/Context;

    .line 129
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/bumptech/glide/k$b;

    invoke-direct {p6, p0, p4}, Lcom/bumptech/glide/k$b;-><init>(Lcom/bumptech/glide/k;Lcom/bumptech/glide/manager/q;)V

    .line 128
    invoke-interface {p5, p3, p6}, Lcom/bumptech/glide/manager/d;->a(Landroid/content/Context;Lcom/bumptech/glide/manager/c$a;)Lcom/bumptech/glide/manager/c;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/k;->k:Lcom/bumptech/glide/manager/c;

    .line 136
    invoke-static {}, Lcom/bumptech/glide/g/k;->d()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 137
    invoke-static {v0}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/l;->a(Lcom/bumptech/glide/manager/m;)V

    .line 141
    :goto_0
    invoke-interface {p2, p3}, Lcom/bumptech/glide/manager/l;->a(Lcom/bumptech/glide/manager/m;)V

    .line 143
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1651
    iget-object p3, p1, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/e;

    .line 2069
    iget-object p3, p3, Lcom/bumptech/glide/e;->d:Ljava/util/List;

    .line 144
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2651
    iget-object p2, p1, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/e;

    .line 145
    invoke-virtual {p2}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/e/h;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/k;->setRequestOptions(Lcom/bumptech/glide/e/h;)V

    .line 2906
    iget-object p2, p1, Lcom/bumptech/glide/c;->g:Ljava/util/List;

    monitor-enter p2

    .line 2907
    :try_start_0
    iget-object p3, p1, Lcom/bumptech/glide/c;->g:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 2910
    iget-object p1, p1, Lcom/bumptech/glide/c;->g:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2911
    monitor-exit p2

    return-void

    .line 2908
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Cannot register already registered manager"

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 2911
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Lcom/bumptech/glide/e/a/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/j<",
            "*>;)V"
        }
    .end annotation

    .line 628
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/k;->b(Lcom/bumptech/glide/e/a/j;)Z

    move-result v0

    .line 646
    invoke-interface {p1}, Lcom/bumptech/glide/e/a/j;->getRequest()Lcom/bumptech/glide/e/d;

    move-result-object v1

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/bumptech/glide/k;->a:Lcom/bumptech/glide/c;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/e/a/j;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 648
    invoke-interface {p1, v0}, Lcom/bumptech/glide/e/a/j;->setRequest(Lcom/bumptech/glide/e/d;)V

    .line 649
    invoke-interface {v1}, Lcom/bumptech/glide/e/d;->b()V

    :cond_0
    return-void
.end method

.method private declared-synchronized h()V
    .locals 4

    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/manager/q;

    const/4 v1, 0x1

    .line 3084
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/q;->c:Z

    .line 3085
    iget-object v1, v0, Lcom/bumptech/glide/manager/q;->a:Ljava/util/Set;

    invoke-static {v1}, Lcom/bumptech/glide/g/k;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/e/d;

    .line 3086
    invoke-interface {v2}, Lcom/bumptech/glide/e/d;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3090
    invoke-interface {v2}, Lcom/bumptech/glide/e/d;->c()V

    .line 3091
    iget-object v3, v0, Lcom/bumptech/glide/manager/q;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 256
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 4

    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/manager/q;

    const/4 v1, 0x1

    .line 3098
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/q;->c:Z

    .line 3099
    iget-object v1, v0, Lcom/bumptech/glide/manager/q;->a:Ljava/util/Set;

    invoke-static {v1}, Lcom/bumptech/glide/g/k;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/e/d;

    .line 3100
    invoke-interface {v2}, Lcom/bumptech/glide/e/d;->d()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/bumptech/glide/e/d;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3101
    :cond_1
    invoke-interface {v2}, Lcom/bumptech/glide/e/d;->b()V

    .line 3102
    iget-object v3, v0, Lcom/bumptech/glide/manager/q;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .locals 2

    monitor-enter p0

    .line 288
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/k;->i()V

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/k;->h:Lcom/bumptech/glide/manager/p;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/p;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/k;

    .line 290
    invoke-direct {v1}, Lcom/bumptech/glide/k;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 292
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 4

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/manager/q;

    const/4 v1, 0x0

    .line 3109
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/q;->c:Z

    .line 3110
    iget-object v1, v0, Lcom/bumptech/glide/manager/q;->a:Ljava/util/Set;

    invoke-static {v1}, Lcom/bumptech/glide/g/k;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/e/d;

    .line 3114
    invoke-interface {v2}, Lcom/bumptech/glide/e/d;->e()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/bumptech/glide/e/d;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3115
    invoke-interface {v2}, Lcom/bumptech/glide/e/d;->a()V

    goto :goto_0

    .line 3118
    :cond_1
    iget-object v0, v0, Lcom/bumptech/glide/manager/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 437
    invoke-virtual {p0}, Lcom/bumptech/glide/k;->f()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->a(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Lcom/bumptech/glide/k;->f()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/j<",
            "TResourceType;>;"
        }
    .end annotation

    .line 594
    new-instance v0, Lcom/bumptech/glide/j;

    iget-object v1, p0, Lcom/bumptech/glide/k;->a:Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/k;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/k;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 536
    invoke-virtual {p0}, Lcom/bumptech/glide/k;->f()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lcom/bumptech/glide/k;->f()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 349
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/k;->k()V

    .line 350
    iget-object v0, p0, Lcom/bumptech/glide/k;->i:Lcom/bumptech/glide/manager/s;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .line 610
    new-instance v0, Lcom/bumptech/glide/k$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/k$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/k;->a(Lcom/bumptech/glide/e/a/j;)V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/e/a/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/j<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 624
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/k;->c(Lcom/bumptech/glide/e/a/j;)V

    return-void
.end method

.method final declared-synchronized a(Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/j<",
            "*>;",
            "Lcom/bumptech/glide/e/d;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/k;->i:Lcom/bumptech/glide/manager/s;

    .line 6020
    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object p1, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/manager/q;

    .line 6041
    iget-object v0, p1, Lcom/bumptech/glide/manager/q;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6042
    iget-boolean v0, p1, Lcom/bumptech/glide/manager/q;->c:Z

    if-nez v0, :cond_0

    .line 6043
    invoke-interface {p2}, Lcom/bumptech/glide/e/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6045
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lcom/bumptech/glide/e/d;->b()V

    const-string v0, "RequestTracker"

    const/4 v1, 0x2

    .line 6046
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6049
    iget-object p1, p1, Lcom/bumptech/glide/manager/q;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final b(Ljava/lang/Class;)Lcom/bumptech/glide/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/l<",
            "*TT;>;"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/bumptech/glide/k;->a:Lcom/bumptech/glide/c;

    .line 6651
    iget-object v0, v0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/e;

    .line 7083
    iget-object v1, v0, Lcom/bumptech/glide/e;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/l;

    if-nez v1, :cond_1

    .line 7085
    iget-object v0, v0, Lcom/bumptech/glide/e;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7086
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7087
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/l;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 7092
    sget-object v1, Lcom/bumptech/glide/e;->a:Lcom/bumptech/glide/l;

    :cond_2
    return-object v1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 359
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/k;->h()V

    .line 360
    iget-object v0, p0, Lcom/bumptech/glide/k;->i:Lcom/bumptech/glide/manager/s;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Lcom/bumptech/glide/e/a/j;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/j<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 654
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/e/a/j;->getRequest()Lcom/bumptech/glide/e/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 657
    monitor-exit p0

    return v1

    .line 660
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/manager/q;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/q;->a(Lcom/bumptech/glide/e/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/bumptech/glide/k;->i:Lcom/bumptech/glide/manager/s;

    .line 5024
    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 662
    invoke-interface {p1, v0}, Lcom/bumptech/glide/e/a/j;->setRequest(Lcom/bumptech/glide/e/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 665
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/k;->i:Lcom/bumptech/glide/manager/s;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->c()V

    .line 370
    iget-object v0, p0, Lcom/bumptech/glide/k;->i:Lcom/bumptech/glide/manager/s;

    .line 4050
    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/g/k;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/e/a/j;

    .line 371
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/k;->a(Lcom/bumptech/glide/e/a/j;)V

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/k;->i:Lcom/bumptech/glide/manager/s;

    .line 4054
    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 374
    iget-object v0, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/manager/q;

    .line 4127
    iget-object v1, v0, Lcom/bumptech/glide/manager/q;->a:Ljava/util/Set;

    invoke-static {v1}, Lcom/bumptech/glide/g/k;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/e/d;

    .line 4130
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/manager/q;->a(Lcom/bumptech/glide/e/d;)Z

    goto :goto_1

    .line 4132
    :cond_1
    iget-object v0, v0, Lcom/bumptech/glide/manager/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 375
    iget-object v0, p0, Lcom/bumptech/glide/k;->c:Lcom/bumptech/glide/manager/l;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/l;->b(Lcom/bumptech/glide/manager/m;)V

    .line 376
    iget-object v0, p0, Lcom/bumptech/glide/k;->c:Lcom/bumptech/glide/manager/l;

    iget-object v1, p0, Lcom/bumptech/glide/k;->k:Lcom/bumptech/glide/manager/c;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/l;->b(Lcom/bumptech/glide/manager/m;)V

    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/k;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/bumptech/glide/g/k;->b(Ljava/lang/Runnable;)V

    .line 378
    iget-object v0, p0, Lcom/bumptech/glide/k;->a:Lcom/bumptech/glide/c;

    .line 4915
    iget-object v1, v0, Lcom/bumptech/glide/c;->g:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4916
    :try_start_1
    iget-object v2, v0, Lcom/bumptech/glide/c;->g:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4919
    iget-object v0, v0, Lcom/bumptech/glide/c;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4920
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 4917
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 4920
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lcom/bumptech/glide/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 390
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;)Lcom/bumptech/glide/j;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/k;->d:Lcom/bumptech/glide/e/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/bumptech/glide/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;"
        }
    .end annotation

    .line 409
    const-class v0, Lcom/bumptech/glide/load/resource/d/c;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;)Lcom/bumptech/glide/j;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/k;->e:Lcom/bumptech/glide/e/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 425
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;)Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 552
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/k;->a(Ljava/lang/Class;)Lcom/bumptech/glide/j;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/k;->f:Lcom/bumptech/glide/e/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method

.method getDefaultRequestListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/e/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/bumptech/glide/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method declared-synchronized getDefaultRequestOptions()Lcom/bumptech/glide/e/h;
    .locals 1

    monitor-enter p0

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/k;->m:Lcom/bumptech/glide/e/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_0

    .line 694
    iget-boolean p1, p0, Lcom/bumptech/glide/k;->n:Z

    if-eqz p1, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/bumptech/glide/k;->j()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setRequestOptions(Lcom/bumptech/glide/e/h;)V
    .locals 0

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/e/h;->d()Lcom/bumptech/glide/e/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/e/h;

    invoke-virtual {p1}, Lcom/bumptech/glide/e/h;->k()Lcom/bumptech/glide/e/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/e/h;

    iput-object p1, p0, Lcom/bumptech/glide/k;->m:Lcom/bumptech/glide/e/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 689
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/manager/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/k;->h:Lcom/bumptech/glide/manager/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
