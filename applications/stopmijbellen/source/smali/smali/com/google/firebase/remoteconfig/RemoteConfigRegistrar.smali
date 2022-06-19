.class public Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/g;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lz4/d;)Lq6/g;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->lambda$getComponents$0(Lz4/d;)Lq6/g;

    move-result-object p0

    return-object p0
.end method

.method private static lambda$getComponents$0(Lz4/d;)Lq6/g;
    .locals 9

    .line 1
    new-instance v6, Lq6/g;

    const-class v0, Landroid/content/Context;

    .line 2
    invoke-interface {p0, v0}, Lz4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lt4/c;

    .line 3
    invoke-interface {p0, v0}, Lz4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lt4/c;

    const-class v0, Lx5/e;

    .line 4
    invoke-interface {p0, v0}, Lz4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lx5/e;

    const-class v0, Lv4/a;

    .line 5
    invoke-interface {p0, v0}, Lz4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/a;

    const-string v4, "frc"

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v5, v0, Lv4/a;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8
    iget-object v5, v0, Lv4/a;->a:Ljava/util/Map;

    .line 9
    new-instance v7, Lu4/b;

    iget-object v8, v0, Lv4/a;->b:Lw5/b;

    invoke-direct {v7, v8, v4}, Lu4/b;-><init>(Lw5/b;Ljava/lang/String;)V

    .line 10
    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    iget-object v5, v0, Lv4/a;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu4/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 12
    const-class v0, Lx4/a;

    .line 13
    invoke-interface {p0, v0}, Lz4/d;->c(Ljava/lang/Class;)Lw5/b;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lq6/g;-><init>(Landroid/content/Context;Lt4/c;Lx5/e;Lu4/b;Lw5/b;)V

    return-object v6

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz4/c<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lz4/c;

    .line 1
    const-class v1, Lq6/g;

    .line 2
    invoke-static {v1}, Lz4/c;->a(Ljava/lang/Class;)Lz4/c$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 3
    new-instance v3, Lz4/m;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    const-class v2, Lt4/c;

    .line 5
    new-instance v3, Lz4/m;

    invoke-direct {v3, v2, v4, v5}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    const-class v2, Lx5/e;

    .line 7
    new-instance v3, Lz4/m;

    invoke-direct {v3, v2, v4, v5}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    const-class v2, Lv4/a;

    .line 9
    new-instance v3, Lz4/m;

    invoke-direct {v3, v2, v4, v5}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    const-class v2, Lx4/a;

    .line 11
    new-instance v3, Lz4/m;

    invoke-direct {v3, v2, v5, v4}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 12
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    sget-object v2, Lx5/f;->c:Lx5/f;

    .line 13
    invoke-virtual {v1, v2}, Lz4/c$b;->d(Lz4/f;)Lz4/c$b;

    .line 14
    invoke-virtual {v1}, Lz4/c$b;->c()Lz4/c$b;

    .line 15
    invoke-virtual {v1}, Lz4/c$b;->b()Lz4/c;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-rc"

    const-string v2, "21.0.0"

    .line 16
    invoke-static {v1, v2}, Lp6/f;->a(Ljava/lang/String;Ljava/lang/String;)Lz4/c;

    move-result-object v1

    aput-object v1, v0, v4

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
