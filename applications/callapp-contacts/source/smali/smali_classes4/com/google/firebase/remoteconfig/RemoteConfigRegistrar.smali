.class public Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getComponents$0(Lcom/google/firebase/components/e;)Lcom/google/firebase/remoteconfig/g;
    .locals 7

    .line 51
    new-instance v6, Lcom/google/firebase/remoteconfig/g;

    const-class v0, Landroid/content/Context;

    .line 52
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/google/firebase/b;

    .line 53
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/b;

    const-class v0, Lcom/google/firebase/installations/h;

    .line 54
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/installations/h;

    const-class v0, Lcom/google/firebase/abt/component/a;

    .line 55
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/abt/component/a;

    const-string v4, "frc"

    invoke-virtual {v0, v4}, Lcom/google/firebase/abt/component/a;->a(Ljava/lang/String;)Lcom/google/firebase/abt/b;

    move-result-object v4

    const-class v0, Lcom/google/firebase/analytics/connector/a;

    .line 56
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/google/firebase/analytics/connector/a;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/remoteconfig/g;-><init>(Landroid/content/Context;Lcom/google/firebase/b;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/b;Lcom/google/firebase/analytics/connector/a;)V

    return-object v6
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/b<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/google/firebase/components/b;

    .line 42
    const-class v2, Lcom/google/firebase/remoteconfig/g;

    .line 43
    invoke-static {v2}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    const-class v3, Landroid/content/Context;

    .line 44
    invoke-static {v3}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    const-class v3, Lcom/google/firebase/b;

    .line 45
    invoke-static {v3}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    const-class v3, Lcom/google/firebase/installations/h;

    .line 46
    invoke-static {v3}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    const-class v3, Lcom/google/firebase/abt/component/a;

    .line 47
    invoke-static {v3}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    const-class v3, Lcom/google/firebase/analytics/connector/a;

    .line 48
    invoke-static {v3}, Lcom/google/firebase/components/r;->a(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    invoke-static {}, Lcom/google/firebase/remoteconfig/j;->a()Lcom/google/firebase/components/h;

    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    .line 1254
    invoke-virtual {v2, v0}, Lcom/google/firebase/components/b$a;->a(I)Lcom/google/firebase/components/b$a;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/firebase/components/b$a;->a()Lcom/google/firebase/components/b;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "fire-rc"

    const-string v2, "20.0.4"

    .line 59
    invoke-static {v0, v2}, Lcom/google/firebase/f/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 42
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
