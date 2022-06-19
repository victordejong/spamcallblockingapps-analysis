.class public Lcom/bumptech/glide/e;
.super Landroid/content/ContextWrapper;
.source "GlideContext.java"


# static fields
.field static final a:Lcom/bumptech/glide/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j",
            "<**>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Lcom/bumptech/glide/load/engine/a/b;

.field private final d:Lcom/bumptech/glide/Registry;

.field private final e:Lcom/bumptech/glide/f/a/e;

.field private final f:Lcom/bumptech/glide/f/e;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/j",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/engine/j;

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/bumptech/glide/b;

    invoke-direct {v0}, Lcom/bumptech/glide/b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/e;->a:Lcom/bumptech/glide/j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/f/a/e;Lcom/bumptech/glide/f/e;Ljava/util/Map;Lcom/bumptech/glide/load/engine/j;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/a/b;",
            "Lcom/bumptech/glide/Registry;",
            "Lcom/bumptech/glide/f/a/e;",
            "Lcom/bumptech/glide/f/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/j",
            "<**>;>;",
            "Lcom/bumptech/glide/load/engine/j;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/load/engine/a/b;

    .line 46
    iput-object p3, p0, Lcom/bumptech/glide/e;->d:Lcom/bumptech/glide/Registry;

    .line 47
    iput-object p4, p0, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/f/a/e;

    .line 48
    iput-object p5, p0, Lcom/bumptech/glide/e;->f:Lcom/bumptech/glide/f/e;

    .line 49
    iput-object p6, p0, Lcom/bumptech/glide/e;->g:Ljava/util/Map;

    .line 50
    iput-object p7, p0, Lcom/bumptech/glide/e;->h:Lcom/bumptech/glide/load/engine/j;

    .line 51
    iput p8, p0, Lcom/bumptech/glide/e;->i:I

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/e;->b:Landroid/os/Handler;

    .line 54
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/f/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class",
            "<TX;>;)",
            "Lcom/bumptech/glide/f/a/i",
            "<",
            "Landroid/widget/ImageView;",
            "TX;>;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/f/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/f/a/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/f/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/bumptech/glide/f/e;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/e;->f:Lcom/bumptech/glide/f/e;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/j",
            "<*TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    .line 64
    if-nez v0, :cond_1

    .line 65
    iget-object v1, p0, Lcom/bumptech/glide/e;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    :goto_1
    move-object v2, v0

    .line 69
    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 71
    :cond_1
    if-nez v0, :cond_2

    .line 72
    sget-object v0, Lcom/bumptech/glide/e;->a:Lcom/bumptech/glide/j;

    .line 74
    :cond_2
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public b()Lcom/bumptech/glide/load/engine/j;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/e;->h:Lcom/bumptech/glide/load/engine/j;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/Registry;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/e;->d:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/bumptech/glide/e;->i:I

    return v0
.end method

.method public e()Lcom/bumptech/glide/load/engine/a/b;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/load/engine/a/b;

    return-object v0
.end method
