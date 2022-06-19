.class public final synthetic Li2/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Li2/z;->a:I

    iput-object p1, p0, Li2/z;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Li2/z;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget-object v0, p0, Li2/z;->b:Ljava/lang/Object;

    check-cast v0, Lj4/w;

    .line 2
    invoke-virtual {v0}, Lj4/w;->h()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4
    invoke-static {v3}, Lj4/w;->i(Ljava/io/File;)V

    .line 5
    invoke-static {v3, v1}, Lj4/w;->d(Ljava/io/File;Z)J

    move-result-wide v4

    iget-object v6, v0, Lj4/w;->b:Lj4/t1;

    .line 6
    invoke-virtual {v6}, Lj4/t1;->a()I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v6, v4

    if-eqz v8, :cond_1

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    .line 7
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "stale.tmp"

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    sget-object v4, Lj4/w;->c:Lp6/c;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Could not write staleness marker."

    .line 10
    invoke-virtual {v4, v6, v5}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 12
    invoke-static {v6}, Lj4/w;->i(Ljava/io/File;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 13
    :pswitch_1
    iget-object v0, p0, Li2/z;->b:Ljava/lang/Object;

    check-cast v0, Li2/i;

    sget-object v1, Li2/n;->m:Li2/c;

    invoke-interface {v0, v1, v2}, Li2/i;->e(Li2/c;Ljava/util/List;)V

    return-void

    .line 14
    :goto_2
    iget-object v0, p0, Li2/z;->b:Ljava/lang/Object;

    check-cast v0, Lj4/f2;

    .line 15
    iget-object v3, v0, Lj4/f2;->b:Lo4/p;

    invoke-interface {v3}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj4/l2;

    iget-object v4, v0, Lj4/f2;->a:Lj4/w;

    .line 16
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 18
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x1

    .line 19
    :try_start_1
    invoke-virtual {v4}, Lj4/w;->h()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 20
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 21
    invoke-virtual {v4, v10}, Lj4/w;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    new-instance v11, Ljava/io/File;

    const-string v12, "assets"

    .line 22
    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_5

    sget-object v10, Lj4/w;->c:Lp6/c;

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v11, v12, v1

    const-string v11, "Failed to find assets directory: %s"

    .line 24
    invoke-virtual {v10, v11, v12}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_4
    move-object v12, v2

    goto :goto_5

    .line 25
    :cond_5
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lj4/z;

    invoke-direct {v12, v1, v10, v11}, Lj4/z;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz v12, :cond_3

    .line 26
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    sget-object v8, Lj4/w;->c:Lp6/c;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    const-string v1, "Could not process directory while scanning installed packs: %s"

    .line 27
    invoke-virtual {v8, v1, v7}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 28
    :cond_6
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {v4, v2}, Lj4/w;->l(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 30
    :cond_7
    invoke-interface {v3, v5}, Lj4/l2;->c(Ljava/util/Map;)Lr4/o;

    move-result-object v1

    iget-object v2, v0, Lj4/f2;->d:Lo4/p;

    .line 31
    invoke-interface {v2}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v3, v0, Lj4/f2;->a:Lj4/w;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lp6/c;

    invoke-direct {v4, v3}, Lp6/c;-><init>(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v1, v2, v4}, Lr4/o;->a(Ljava/util/concurrent/Executor;Lr4/b;)Lr4/o;

    iget-object v0, v0, Lj4/f2;->d:Lo4/p;

    .line 33
    invoke-interface {v0}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    sget-object v2, Lc4/e;->d:Lc4/e;

    .line 34
    iget-object v3, v1, Lr4/o;->b:Lr4/k;

    new-instance v4, Lr4/g;

    invoke-direct {v4, v0, v2}, Lr4/g;-><init>(Ljava/util/concurrent/Executor;Lr4/a;)V

    invoke-virtual {v3, v4}, Lr4/k;->a(Lr4/j;)V

    .line 35
    invoke-virtual {v1}, Lr4/o;->f()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
