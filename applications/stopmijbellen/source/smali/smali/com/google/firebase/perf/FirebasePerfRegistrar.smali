.class public Lcom/google/firebase/perf/FirebasePerfRegistrar;
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

.method public static synthetic a(Lz4/d;)Lc6/a;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/perf/FirebasePerfRegistrar;->providesFirebasePerformance(Lz4/d;)Lc6/a;

    move-result-object p0

    return-object p0
.end method

.method private static providesFirebasePerformance(Lz4/d;)Lc6/a;
    .locals 13

    .line 1
    new-instance v0, Lf6/a;

    const-class v1, Lt4/c;

    .line 2
    invoke-interface {p0, v1}, Lz4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/c;

    const-class v2, Lx5/e;

    .line 3
    invoke-interface {p0, v2}, Lz4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx5/e;

    const-class v3, Lq6/g;

    .line 4
    invoke-interface {p0, v3}, Lz4/d;->c(Ljava/lang/Class;)Lw5/b;

    move-result-object v3

    const-class v4, Lr2/g;

    .line 5
    invoke-interface {p0, v4}, Lz4/d;->c(Ljava/lang/Class;)Lw5/b;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lf6/a;-><init>(Lt4/c;Lx5/e;Lw5/b;Lw5/b;)V

    .line 6
    new-instance v5, Lf6/c;

    const/4 p0, 0x0

    invoke-direct {v5, v0, p0}, Lf6/c;-><init>(Lf6/a;I)V

    .line 7
    new-instance v6, Lp6/c;

    invoke-direct {v6, v0}, Lp6/c;-><init>(Ljava/lang/Object;)V

    .line 8
    new-instance v7, Lx2/f;

    const/4 v1, 0x4

    invoke-direct {v7, v0, v1}, Lx2/f;-><init>(Ljava/lang/Object;I)V

    .line 9
    new-instance v8, Lf6/c;

    const/4 v1, 0x1

    invoke-direct {v8, v0, v1}, Lf6/c;-><init>(Lf6/a;I)V

    .line 10
    new-instance v9, Lf6/b;

    invoke-direct {v9, v0, v1}, Lf6/b;-><init>(Lf6/a;I)V

    .line 11
    new-instance v10, Lf6/b;

    invoke-direct {v10, v0, p0}, Lf6/b;-><init>(Lf6/a;I)V

    .line 12
    new-instance v11, Lf/t;

    invoke-direct {v11, v0}, Lf/t;-><init>(Ljava/lang/Object;)V

    .line 13
    new-instance p0, Ly2/o;

    const/4 v12, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Ly2/o;-><init>(Ll9/a;Ll9/a;Ll9/a;Ll9/a;Ll9/a;Ll9/a;Ll9/a;I)V

    .line 14
    sget-object v0, Lh9/a;->c:Ljava/lang/Object;

    .line 15
    instance-of v0, p0, Lh9/a;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lh9/a;

    invoke-direct {v0, p0}, Lh9/a;-><init>(Ll9/a;)V

    move-object p0, v0

    .line 17
    :goto_0
    invoke-interface {p0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6/a;

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

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
    const-class v1, Lc6/a;

    .line 2
    invoke-static {v1}, Lz4/c;->a(Ljava/lang/Class;)Lz4/c$b;

    move-result-object v1

    const-class v2, Lt4/c;

    .line 3
    new-instance v3, Lz4/m;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    const-class v2, Lq6/g;

    .line 5
    new-instance v3, Lz4/m;

    invoke-direct {v3, v2, v4, v4}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    const-class v2, Lx5/e;

    .line 7
    new-instance v3, Lz4/m;

    invoke-direct {v3, v2, v4, v5}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    const-class v2, Lr2/g;

    .line 9
    new-instance v3, Lz4/m;

    invoke-direct {v3, v2, v4, v4}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    sget-object v2, Lv5/c;->c:Lv5/c;

    .line 11
    iput-object v2, v1, Lz4/c$b;->e:Lz4/f;

    .line 12
    invoke-virtual {v1}, Lz4/c$b;->b()Lz4/c;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-perf"

    const-string v2, "20.0.1"

    .line 13
    invoke-static {v1, v2}, Lp6/f;->a(Ljava/lang/String;Ljava/lang/String;)Lz4/c;

    move-result-object v1

    aput-object v1, v0, v4

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
