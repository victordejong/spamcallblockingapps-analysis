.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getComponents$0(Lcom/google/firebase/components/e;)Lcom/google/firebase/installations/h;
    .locals 4

    .line 41
    new-instance v0, Lcom/google/firebase/installations/c;

    const-class v1, Lcom/google/firebase/b;

    .line 42
    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/b;

    const-class v2, Lcom/google/firebase/f/i;

    .line 43
    invoke-interface {p0, v2}, Lcom/google/firebase/components/e;->c(Ljava/lang/Class;)Lcom/google/firebase/d/b;

    move-result-object v2

    const-class v3, Lcom/google/firebase/c/f;

    .line 44
    invoke-interface {p0, v3}, Lcom/google/firebase/components/e;->c(Ljava/lang/Class;)Lcom/google/firebase/d/b;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/firebase/installations/c;-><init>(Lcom/google/firebase/b;Lcom/google/firebase/d/b;Lcom/google/firebase/d/b;)V

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

    .line 34
    const-class v1, Lcom/google/firebase/installations/h;

    .line 35
    invoke-static {v1}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Lcom/google/firebase/b;

    .line 36
    invoke-static {v2}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Lcom/google/firebase/c/f;

    .line 37
    invoke-static {v2}, Lcom/google/firebase/components/r;->d(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Lcom/google/firebase/f/i;

    .line 38
    invoke-static {v2}, Lcom/google/firebase/components/r;->d(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/installations/i;->a()Lcom/google/firebase/components/h;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/google/firebase/components/b$a;->a()Lcom/google/firebase/components/b;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-installations"

    const-string v2, "16.3.5"

    .line 46
    invoke-static {v1, v2}, Lcom/google/firebase/f/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 34
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
