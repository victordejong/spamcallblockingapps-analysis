.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"

# interfaces
.implements Lcom/google/firebase/components/h;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getComponents$0(Lcom/google/firebase/components/e;)Lcom/google/firebase/installations/h;
    .locals 4

    .prologue
    .line 41
    new-instance v3, Lcom/google/firebase/installations/c;

    const-class v0, Lcom/google/firebase/b;

    .line 42
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/b;

    const-class v1, Lcom/google/firebase/e/h;

    .line 43
    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/e/h;

    const-class v2, Lcom/google/firebase/b/c;

    .line 44
    invoke-interface {p0, v2}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/b/c;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/firebase/installations/c;-><init>(Lcom/google/firebase/b;Lcom/google/firebase/e/h;Lcom/google/firebase/b/c;)V

    .line 41
    return-object v3
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/components/b",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firebase/components/b;

    const/4 v1, 0x0

    const-class v2, Lcom/google/firebase/installations/h;

    .line 35
    invoke-static {v2}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    const-class v3, Lcom/google/firebase/b;

    .line 36
    invoke-static {v3}, Lcom/google/firebase/components/n;->b(Ljava/lang/Class;)Lcom/google/firebase/components/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/n;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    const-class v3, Lcom/google/firebase/b/c;

    .line 37
    invoke-static {v3}, Lcom/google/firebase/components/n;->b(Ljava/lang/Class;)Lcom/google/firebase/components/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/n;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    const-class v3, Lcom/google/firebase/e/h;

    .line 38
    invoke-static {v3}, Lcom/google/firebase/components/n;->b(Ljava/lang/Class;)Lcom/google/firebase/components/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/n;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    invoke-static {}, Lcom/google/firebase/installations/i;->a()Lcom/google/firebase/components/g;

    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/g;)Lcom/google/firebase/components/b$a;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/google/firebase/components/b$a;->c()Lcom/google/firebase/components/b;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "fire-installations"

    const-string/jumbo v3, "16.2.1"

    .line 46
    invoke-static {v2, v3}, Lcom/google/firebase/e/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v2

    aput-object v2, v0, v1

    .line 34
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
