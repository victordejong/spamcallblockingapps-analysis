.class public final Lcom/google/android/exoplayer2/offline/d;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/d$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/scheduler/Requirements;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/exoplayer2/scheduler/b$c;

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/offline/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/android/exoplayer2/scheduler/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/Requirements;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/offline/d;->a:Lcom/google/android/exoplayer2/scheduler/Requirements;

    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/d;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/d$a;

    .line 2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/offline/d;->j:Z

    invoke-interface {v1, p0, v2}, Lcom/google/android/exoplayer2/offline/d$a;->a(Lcom/google/android/exoplayer2/offline/d;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/scheduler/b;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/scheduler/b;->e()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/offline/d;->i:I

    if-ne v0, p2, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/d;->r()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/d;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/d$a;

    .line 5
    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/offline/d$a;->b(Lcom/google/android/exoplayer2/offline/d;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/d;->i()V

    :cond_1
    return-void

    .line 7
    :cond_2
    iput p2, p0, Lcom/google/android/exoplayer2/offline/d;->i:I

    .line 8
    iget p1, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method private o(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/d;->h:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/d;->h:Z

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method private r()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/d;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/offline/d;->i:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/d;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/d;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/b;

    iget v3, v3, Lcom/google/android/exoplayer2/offline/b;->a:I

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/offline/d;->j:Z

    if-eq v3, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/d;->j:Z

    return v1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public b(Lcom/google/android/exoplayer2/offline/d$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/d;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/d;->k:Ljava/util/List;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/d;->h:Z

    return v0
.end method

.method public e()Lcom/google/android/exoplayer2/scheduler/Requirements;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/d;->l:Lcom/google/android/exoplayer2/scheduler/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/b;->e()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/offline/d;->f:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/d;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/d;->j:Z

    return v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/d;->o(Z)V

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/d;->o(Z)V

    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/scheduler/Requirements;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/d;->l:Lcom/google/android/exoplayer2/scheduler/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/b;->e()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/d;->l:Lcom/google/android/exoplayer2/scheduler/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/b;->h()V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/d;->c:Lcom/google/android/exoplayer2/scheduler/b$c;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/scheduler/b;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/b$c;Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/d;->l:Lcom/google/android/exoplayer2/scheduler/b;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/b;->g()I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/d;->l:Lcom/google/android/exoplayer2/scheduler/b;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/d;->j(Lcom/google/android/exoplayer2/scheduler/b;I)V

    return-void
.end method

.method public q(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/offline/d;->e:I

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
