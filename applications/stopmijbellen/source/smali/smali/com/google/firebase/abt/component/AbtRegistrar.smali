.class public Lcom/google/firebase/abt/component/AbtRegistrar;
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

.method public static synthetic a(Lz4/d;)Lv4/a;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/abt/component/AbtRegistrar;->lambda$getComponents$0(Lz4/d;)Lv4/a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lz4/d;)Lv4/a;
    .locals 3

    .line 1
    new-instance v0, Lv4/a;

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-interface {p0, v1}, Lz4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lx4/a;

    .line 3
    invoke-interface {p0, v2}, Lz4/d;->c(Ljava/lang/Class;)Lw5/b;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lv4/a;-><init>(Landroid/content/Context;Lw5/b;)V

    return-object v0
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
    const-class v1, Lv4/a;

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

    const-class v2, Lx4/a;

    .line 5
    new-instance v3, Lz4/m;

    invoke-direct {v3, v2, v5, v4}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    sget-object v2, La6/d;->a:La6/d;

    .line 7
    invoke-virtual {v1, v2}, Lz4/c$b;->d(Lz4/f;)Lz4/c$b;

    .line 8
    invoke-virtual {v1}, Lz4/c$b;->b()Lz4/c;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-abt"

    const-string v2, "21.0.0"

    .line 9
    invoke-static {v1, v2}, Lp6/f;->a(Ljava/lang/String;Ljava/lang/String;)Lz4/c;

    move-result-object v1

    aput-object v1, v0, v4

    .line 10
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
