.class public final Lcom/flurry/sdk/kq;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/flurry/sdk/kq;


# instance fields
.field private final b:Lcom/flurry/sdk/kl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kl<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/ld<",
            "Lcom/flurry/sdk/kp<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/kl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kl<",
            "Lcom/flurry/sdk/ld<",
            "Lcom/flurry/sdk/kp<",
            "*>;>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/kl;

    invoke-direct {v0}, Lcom/flurry/sdk/kl;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kq;->b:Lcom/flurry/sdk/kl;

    new-instance v0, Lcom/flurry/sdk/kl;

    invoke-direct {v0}, Lcom/flurry/sdk/kl;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kq;->c:Lcom/flurry/sdk/kl;

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/kq;
    .locals 2

    const-class v0, Lcom/flurry/sdk/kq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/kq;->a:Lcom/flurry/sdk/kq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/kq;

    invoke-direct {v1}, Lcom/flurry/sdk/kq;-><init>()V

    sput-object v1, Lcom/flurry/sdk/kq;->a:Lcom/flurry/sdk/kq;

    :cond_0
    sget-object v1, Lcom/flurry/sdk/kq;->a:Lcom/flurry/sdk/kq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/kp<",
            "*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/kq;->b:Lcom/flurry/sdk/kl;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/kl;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ld;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/kp;

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/kq;->b:Lcom/flurry/sdk/kl;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kl;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/flurry/sdk/ko;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/ko;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kq;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/kp;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/kq$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/flurry/sdk/kq$1;-><init>(Lcom/flurry/sdk/kq;Lcom/flurry/sdk/kp;Lcom/flurry/sdk/ko;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/kp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kp<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/flurry/sdk/ld;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/ld;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/flurry/sdk/kq;->c:Lcom/flurry/sdk/kl;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kl;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/kq;->b:Lcom/flurry/sdk/kl;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/kl;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/flurry/sdk/kq;->c:Lcom/flurry/sdk/kl;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kl;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/kp<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/ld;

    invoke-direct {v0, p2}, Lcom/flurry/sdk/ld;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/flurry/sdk/kq;->b:Lcom/flurry/sdk/kl;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/flurry/sdk/kl;->a(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/flurry/sdk/kq;->b:Lcom/flurry/sdk/kl;

    invoke-virtual {p2, p1, v0}, Lcom/flurry/sdk/kl;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/flurry/sdk/kq;->c:Lcom/flurry/sdk/kl;

    invoke-virtual {p2, v0, p1}, Lcom/flurry/sdk/kl;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;Lcom/flurry/sdk/kp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/kp<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/ld;

    invoke-direct {v0, p2}, Lcom/flurry/sdk/ld;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/flurry/sdk/kq;->b:Lcom/flurry/sdk/kl;

    invoke-virtual {p2, p1, v0}, Lcom/flurry/sdk/kl;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/flurry/sdk/kq;->c:Lcom/flurry/sdk/kl;

    invoke-virtual {p2, v0, p1}, Lcom/flurry/sdk/kl;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
