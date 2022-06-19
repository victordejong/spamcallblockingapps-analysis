.class public Lcom/google/firebase/abt/component/AbtRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getComponents$0(Lcom/google/firebase/components/e;)Lcom/google/firebase/abt/component/a;
    .locals 3

    .line 44
    new-instance v0, Lcom/google/firebase/abt/component/a;

    const-class v1, Landroid/content/Context;

    .line 45
    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/google/firebase/analytics/connector/a;

    invoke-interface {p0, v2}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/analytics/connector/a;

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/abt/component/a;-><init>(Landroid/content/Context;Lcom/google/firebase/analytics/connector/a;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/b<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firebase/components/b;

    .line 38
    const-class v1, Lcom/google/firebase/abt/component/a;

    .line 39
    invoke-static {v1}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 40
    invoke-static {v2}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Lcom/google/firebase/analytics/connector/a;

    .line 41
    invoke-static {v2}, Lcom/google/firebase/components/r;->a(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/abt/component/b;->a()Lcom/google/firebase/components/h;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/firebase/components/b$a;->a()Lcom/google/firebase/components/b;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-abt"

    const-string v2, "20.0.0"

    .line 47
    invoke-static {v1, v2}, Lcom/google/firebase/f/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
