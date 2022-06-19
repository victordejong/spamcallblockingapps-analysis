.class public final Ldz$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnz$f;
.implements Llz$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldz$e$b;,
        Ldz$e$f;,
        Ldz$e$c;,
        Ldz$e$d;,
        Ldz$e$e;
    }
.end annotation


# instance fields
.field public A:Ldz$g;

.field public B:Ldz$e$c;

.field public C:Landroid/support/v4/media/session/MediaSessionCompat;

.field public D:Lzy$b$d;

.field public final a:Landroid/content/Context;

.field public final b:Z

.field public final c:Lvy;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ldz;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldz$i;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lka<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldz$h;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldz$e$f;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lmz$a;

.field public final j:Ldz$e$e;

.field public final k:Ldz$e$b;

.field public final l:Lnz;

.field public final m:Z

.field public n:Ljz;

.field public o:Llz;

.field public p:Ldz$i;

.field public q:Ldz$i;

.field public r:Ldz$i;

.field public s:Lzy$e;

.field public t:Ldz$i;

.field public u:Lzy$e;

.field public final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzy$e;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lyy;

.field public x:Lyy;

.field public y:I

.field public z:Ldz$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor",
            "NewApi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldz$e;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldz$e;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldz$e;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldz$e;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldz$e;->h:Ljava/util/ArrayList;

    new-instance v0, Lmz$a;

    invoke-direct {v0}, Lmz$a;-><init>()V

    iput-object v0, p0, Ldz$e;->i:Lmz$a;

    new-instance v0, Ldz$e$e;

    invoke-direct {v0, p0}, Ldz$e$e;-><init>(Ldz$e;)V

    iput-object v0, p0, Ldz$e;->j:Ldz$e$e;

    new-instance v0, Ldz$e$b;

    invoke-direct {v0, p0}, Ldz$e$b;-><init>(Ldz$e;)V

    iput-object v0, p0, Ldz$e;->k:Ldz$e$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldz$e;->v:Ljava/util/Map;

    new-instance v0, Ldz$e$a;

    invoke-direct {v0, p0}, Ldz$e$a;-><init>(Ldz$e;)V

    iput-object v0, p0, Ldz$e;->D:Lzy$b$d;

    iput-object p1, p0, Ldz$e;->a:Landroid/content/Context;

    invoke-static {p1}, Lj9;->a(Landroid/content/Context;)Lj9;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Ls7;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    iput-boolean v0, p0, Ldz$e;->m:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroidx/mediarouter/media/MediaTransferReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ldz$e;->b:Z

    iget-boolean v0, p0, Ldz$e;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lvy;

    new-instance v2, Ldz$e$d;

    invoke-direct {v2, p0, v1}, Ldz$e$d;-><init>(Ldz$e;Ldz$a;)V

    invoke-direct {v0, p1, v2}, Lvy;-><init>(Landroid/content/Context;Lvy$a;)V

    iput-object v0, p0, Ldz$e;->c:Lvy;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Ldz$e;->c:Lvy;

    :goto_1
    invoke-static {p1, p0}, Lnz;->A(Landroid/content/Context;Lnz$f;)Lnz;

    move-result-object p1

    iput-object p1, p0, Ldz$e;->l:Lnz;

    return-void
.end method

.method public static synthetic e(Ldz$e;)Ldz$i;
    .locals 0

    iget-object p0, p0, Ldz$e;->p:Ldz$i;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 5

    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->k()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldz$i;

    iget-object v3, v3, Ldz$i;->c:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ldz$e;->v:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzy$e;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lzy$e;->i(I)V

    invoke-virtual {v3}, Lzy$e;->e()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldz$i;

    iget-object v2, p0, Ldz$e;->v:Ljava/util/Map;

    iget-object v3, v1, Ldz$i;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ldz$i;->q()Lzy;

    move-result-object v2

    iget-object v3, v1, Ldz$i;->b:Ljava/lang/String;

    iget-object v4, p0, Ldz$e;->r:Ldz$i;

    iget-object v4, v4, Ldz$i;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lzy;->u(Ljava/lang/String;Ljava/lang/String;)Lzy$e;

    move-result-object v2

    invoke-virtual {v2}, Lzy$e;->f()V

    iget-object v3, p0, Ldz$e;->v:Ljava/util/Map;

    iget-object v1, v1, Ldz$i;->c:Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-void
.end method

.method public B(Ldz$e;Ldz$i;Lzy$e;ILdz$i;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldz$e;",
            "Ldz$i;",
            "Lzy$e;",
            "I",
            "Ldz$i;",
            "Ljava/util/Collection<",
            "Lzy$b$c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ldz$e;->A:Ldz$g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldz$g;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldz$e;->A:Ldz$g;

    :cond_0
    new-instance v0, Ldz$g;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Ldz$g;-><init>(Ldz$e;Ldz$i;Lzy$e;ILdz$i;Ljava/util/Collection;)V

    iput-object v0, p0, Ldz$e;->A:Ldz$g;

    iget p1, v0, Ldz$g;->b:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Ldz$e;->z:Ldz$f;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Ldz$e;->r:Ldz$i;

    iget-object p3, v0, Ldz$g;->d:Ldz$i;

    invoke-interface {p1, p2, p3}, Ldz$f;->a(Ldz$i;Ldz$i;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ldz$e;->A:Ldz$g;

    invoke-virtual {p1}, Ldz$g;->b()V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Ldz$e;->A:Ldz$g;

    invoke-virtual {p2, p1}, Ldz$g;->f(Lcom/google/common/util/concurrent/ListenableFuture;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ldz$g;->b()V

    :goto_1
    return-void
.end method

.method public C(Ldz$i;)V
    .locals 3

    iget-object v0, p0, Ldz$e;->s:Lzy$e;

    instance-of v0, v0, Lzy$b;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Ldz$e;->n(Ldz$i;)Ldz$i$a;

    move-result-object v0

    iget-object v1, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MediaRouter"

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ldz$i$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    const-string p1, "Ignoring attempt to remove the last member route."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Ldz$e;->s:Lzy$e;

    check-cast v0, Lzy$b;

    invoke-virtual {p1}, Ldz$i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzy$b;->o(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to remove a non-unselectable member route : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is no currently selected dynamic group route."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(Ldz$i;I)V
    .locals 1

    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ldz$e;->s:Lzy$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lzy$e;->g(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldz$e;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldz$e;->v:Ljava/util/Map;

    iget-object p1, p1, Ldz$i;->c:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzy$e;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lzy$e;->g(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public E(Ldz$i;I)V
    .locals 1

    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ldz$e;->s:Lzy$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lzy$e;->j(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldz$e;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldz$e;->v:Ljava/util/Map;

    iget-object p1, p1, Ldz$i;->c:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzy$e;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lzy$e;->j(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public F(Ldz$i;I)V
    .locals 2

    iget-object v0, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MediaRouter"

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to select removed route: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p1, Ldz$i;->g:Z

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to select disabled route: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ldz$i;->q()Lzy;

    move-result-object v0

    iget-object v1, p0, Ldz$e;->c:Lvy;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Ldz$i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lvy;->C(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, p1, p2}, Ldz$e;->G(Ldz$i;I)V

    return-void
.end method

.method public G(Ldz$i;I)V
    .locals 11

    sget-object v0, Ldz;->d:Ldz$e;

    const/4 v1, 0x3

    const-string v2, "MediaRouter"

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldz$e;->q:Ldz$i;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ldz$i;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Ldz;->d:Ldz$e;

    const-string v4, ", callers="

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSelectedRouteInternal is called while sGlobal is null: pkgName="

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default route is selected while a BT route is available: pkgName="

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ldz$e;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    if-ne v0, p1, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Ldz$e;->t:Ldz$i;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iput-object v3, p0, Ldz$e;->t:Ldz$i;

    iget-object v0, p0, Ldz$e;->u:Lzy$e;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lzy$e;->i(I)V

    iget-object v0, p0, Ldz$e;->u:Lzy$e;

    invoke-virtual {v0}, Lzy$e;->e()V

    iput-object v3, p0, Ldz$e;->u:Lzy$e;

    :cond_5
    invoke-virtual {p0}, Ldz$e;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ldz$i;->p()Ldz$h;

    move-result-object v0

    invoke-virtual {v0}, Ldz$h;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ldz$i;->q()Lzy;

    move-result-object v0

    iget-object v1, p1, Ldz$i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzy;->s(Ljava/lang/String;)Lzy$b;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p2, p0, Ldz$e;->a:Landroid/content/Context;

    invoke-static {p2}, Lg8;->i(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object v1, p0, Ldz$e;->D:Lzy$b$d;

    invoke-virtual {v0, p2, v1}, Lzy$b;->q(Ljava/util/concurrent/Executor;Lzy$b$d;)V

    iput-object p1, p0, Ldz$e;->t:Ldz$i;

    iput-object v0, p0, Ldz$e;->u:Lzy$e;

    invoke-virtual {v0}, Lzy$e;->f()V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectedRouteInternal: Failed to create dynamic group route controller. route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p1}, Ldz$i;->q()Lzy;

    move-result-object v0

    iget-object v1, p1, Ldz$i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzy;->t(Ljava/lang/String;)Lzy$e;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lzy$e;->f()V

    :cond_8
    sget-boolean v0, Ldz;->c:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    if-nez v0, :cond_a

    iput-object p1, p0, Ldz$e;->r:Ldz$i;

    iput-object v7, p0, Ldz$e;->s:Lzy$e;

    iget-object v0, p0, Ldz$e;->k:Ldz$e$b;

    const/16 v1, 0x106

    new-instance v2, Lka;

    invoke-direct {v2, v3, p1}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, p2}, Ldz$e$b;->c(ILjava/lang/Object;I)V

    return-void

    :cond_a
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p0

    move-object v6, p1

    move v8, p2

    invoke-virtual/range {v4 .. v10}, Ldz$e;->B(Ldz$e;Ldz$i;Lzy$e;ILdz$i;Ljava/util/Collection;)V

    return-void
.end method

.method public H()V
    .locals 2

    iget-object v0, p0, Ldz$e;->l:Lnz;

    invoke-virtual {p0, v0}, Ldz$e;->a(Lzy;)V

    iget-object v0, p0, Ldz$e;->c:Lvy;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ldz$e;->a(Lzy;)V

    :cond_0
    new-instance v0, Llz;

    iget-object v1, p0, Ldz$e;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Llz;-><init>(Landroid/content/Context;Llz$c;)V

    iput-object v0, p0, Ldz$e;->o:Llz;

    invoke-virtual {v0}, Llz;->h()V

    return-void
.end method

.method public I(Ldz$i;)V
    .locals 1

    iget-object v0, p0, Ldz$e;->s:Lzy$e;

    instance-of v0, v0, Lzy$b;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ldz$e;->n(Ldz$i;)Ldz$i$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ldz$i$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldz$e;->s:Lzy$e;

    check-cast v0, Lzy$b;

    invoke-virtual {p1}, Ldz$i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzy$b;->p(Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "MediaRouter"

    const-string v0, "Ignoring attempt to transfer to a non-transferable route."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is no currently selected dynamic group route."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J()V
    .locals 12

    new-instance v0, Lcz$a;

    invoke-direct {v0}, Lcz$a;-><init>()V

    iget-object v1, p0, Ldz$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    iget-object v6, p0, Ldz$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldz;

    if-nez v6, :cond_1

    iget-object v6, p0, Ldz$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v7, v6, Ldz;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v3, v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    iget-object v9, v6, Ldz;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldz$c;

    iget-object v10, v9, Ldz$c;->c:Lcz;

    invoke-virtual {v0, v10}, Lcz$a;->c(Lcz;)Lcz$a;

    iget v9, v9, Ldz$c;->d:I

    and-int/lit8 v10, v9, 0x1

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x1

    :cond_2
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Ldz$e;->m:Z

    if-nez v10, :cond_3

    const/4 v4, 0x1

    :cond_3
    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_4

    const/4 v4, 0x1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    iput v3, p0, Ldz$e;->y:I

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcz$a;->d()Lcz;

    move-result-object v1

    goto :goto_2

    :cond_6
    sget-object v1, Lcz;->c:Lcz;

    :goto_2
    invoke-virtual {v0}, Lcz$a;->d()Lcz;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Ldz$e;->K(Lcz;Z)V

    iget-object v0, p0, Ldz$e;->w:Lyy;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lyy;->d()Lcz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ldz$e;->w:Lyy;

    invoke-virtual {v0}, Lyy;->e()Z

    move-result v0

    if-ne v0, v5, :cond_7

    return-void

    :cond_7
    invoke-virtual {v1}, Lcz;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v5, :cond_9

    iget-object v0, p0, Ldz$e;->w:Lyy;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    new-instance v0, Lyy;

    invoke-direct {v0, v1, v5}, Lyy;-><init>(Lcz;Z)V

    :goto_3
    iput-object v0, p0, Ldz$e;->w:Lyy;

    sget-boolean v0, Ldz;->c:Z

    const-string v1, "MediaRouter"

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated discovery request: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ldz$e;->w:Lyy;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    iget-boolean v0, p0, Ldz$e;->m:Z

    if-eqz v0, :cond_b

    const-string v0, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Ldz$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_d

    iget-object v1, p0, Ldz$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldz$h;

    iget-object v1, v1, Ldz$h;->a:Lzy;

    iget-object v3, p0, Ldz$e;->c:Lvy;

    if-ne v1, v3, :cond_c

    goto :goto_5

    :cond_c
    iget-object v3, p0, Ldz$e;->w:Lyy;

    invoke-virtual {v1, v3}, Lzy;->y(Lyy;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    return-void
.end method

.method public final K(Lcz;Z)V
    .locals 1

    invoke-virtual {p0}, Ldz$e;->v()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldz$e;->x:Lyy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lyy;->d()Lcz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldz$e;->x:Lyy;

    invoke-virtual {v0}, Lyy;->e()Z

    move-result v0

    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcz;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    iget-object p1, p0, Ldz$e;->x:Lyy;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Ldz$e;->x:Lyy;

    goto :goto_0

    :cond_3
    new-instance v0, Lyy;

    invoke-direct {v0, p1, p2}, Lyy;-><init>(Lcz;Z)V

    iput-object v0, p0, Ldz$e;->x:Lyy;

    :goto_0
    sget-boolean p1, Ldz;->c:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Updated MediaRoute2Provider\'s discovery request: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ldz$e;->x:Lyy;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaRouter"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Ldz$e;->c:Lvy;

    iget-object p2, p0, Ldz$e;->x:Lyy;

    invoke-virtual {p1, p2}, Lzy;->y(Lyy;)V

    return-void
.end method

.method public L()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Ldz$e;->i:Lmz$a;

    invoke-virtual {v0}, Ldz$i;->r()I

    move-result v0

    iput v0, v2, Lmz$a;->a:I

    iget-object v0, p0, Ldz$e;->i:Lmz$a;

    iget-object v2, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v2}, Ldz$i;->t()I

    move-result v2

    iput v2, v0, Lmz$a;->b:I

    iget-object v0, p0, Ldz$e;->i:Lmz$a;

    iget-object v2, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v2}, Ldz$i;->s()I

    move-result v2

    iput v2, v0, Lmz$a;->c:I

    iget-object v0, p0, Ldz$e;->i:Lmz$a;

    iget-object v2, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v2}, Ldz$i;->m()I

    move-result v2

    iput v2, v0, Lmz$a;->d:I

    iget-object v0, p0, Ldz$e;->i:Lmz$a;

    iget-object v2, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v2}, Ldz$i;->n()I

    move-result v2

    iput v2, v0, Lmz$a;->e:I

    iget-boolean v0, p0, Ldz$e;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->q()Lzy;

    move-result-object v0

    iget-object v2, p0, Ldz$e;->c:Lvy;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Ldz$e;->i:Lmz$a;

    iget-object v2, p0, Ldz$e;->s:Lzy$e;

    invoke-static {v2}, Lvy;->B(Lzy$e;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmz$a;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldz$e;->i:Lmz$a;

    iput-object v1, v0, Lmz$a;->f:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Ldz$e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Ldz$e;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldz$e$f;

    invoke-virtual {v4}, Ldz$e$f;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ldz$e;->B:Ldz$e$c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {p0}, Ldz$e;->m()Ldz$i;

    move-result-object v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {p0}, Ldz$e;->k()Ldz$i;

    move-result-object v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Ldz$e;->i:Lmz$a;

    iget v3, v0, Lmz$a;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v2, 0x2

    :cond_2
    iget-object v3, p0, Ldz$e;->B:Ldz$e$c;

    iget v4, v0, Lmz$a;->b:I

    iget v5, v0, Lmz$a;->a:I

    iget-object v0, v0, Lmz$a;->f:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v5, v0}, Ldz$e$c;->b(IIILjava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Ldz$e;->B:Ldz$e$c;

    invoke-virtual {v0}, Ldz$e$c;->a()V

    throw v1

    :cond_4
    iget-object v0, p0, Ldz$e;->B:Ldz$e$c;

    if-nez v0, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v0}, Ldz$e$c;->a()V

    throw v1
.end method

.method public final M(Ldz$h;Laz;)V
    .locals 12

    invoke-virtual {p1, p2}, Ldz$h;->h(Laz;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "MediaRouter"

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Laz;->d()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Ldz$e;->l:Lnz;

    invoke-virtual {v3}, Lzy;->o()Laz;

    move-result-object v3

    if-ne p2, v3, :cond_e

    :cond_1
    invoke-virtual {p2}, Laz;->c()Ljava/util/List;

    move-result-object p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "Route added: "

    const/16 v8, 0x101

    if-eqz v6, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lxy;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lxy;->y()Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v6}, Lxy;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ldz$h;->b(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_5

    invoke-virtual {p0, p1, v9}, Ldz$e;->g(Ldz$h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ldz$i;

    invoke-direct {v11, p1, v9, v10}, Ldz$i;-><init>(Ldz$h;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p1, Ldz$h;->b:Ljava/util/List;

    add-int/lit8 v10, v0, 0x1

    invoke-interface {v9, v0, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lxy;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lka;

    invoke-direct {v0, v11, v6}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v11, v6}, Ldz$i;->E(Lxy;)I

    sget-boolean v0, Ldz;->c:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Ldz$e;->k:Ldz$e$b;

    invoke-virtual {v0, v8, v11}, Ldz$e$b;->b(ILjava/lang/Object;)V

    :goto_1
    move v0, v10

    goto :goto_0

    :cond_5
    if-ge v10, v0, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring route descriptor with duplicate id: "

    goto :goto_4

    :cond_6
    iget-object v7, p1, Ldz$h;->b:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldz$i;

    iget-object v8, p1, Ldz$h;->b:Ljava/util/List;

    add-int/lit8 v9, v0, 0x1

    invoke-static {v8, v10, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    invoke-virtual {v6}, Lxy;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    new-instance v0, Lka;

    invoke-direct {v0, v7, v6}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v7, v6}, Ldz$e;->O(Ldz$i;Lxy;)I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    if-ne v7, v0, :cond_8

    move v0, v9

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_2
    move v0, v9

    goto/16 :goto_0

    :cond_9
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring invalid system route descriptor: "

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lka;

    iget-object v6, v3, Lka;->a:Ljava/lang/Object;

    check-cast v6, Ldz$i;

    iget-object v3, v3, Lka;->b:Ljava/lang/Object;

    check-cast v3, Lxy;

    invoke-virtual {v6, v3}, Ldz$i;->E(Lxy;)I

    sget-boolean v3, Ldz;->c:Z

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v3, p0, Ldz$e;->k:Ldz$e$b;

    invoke-virtual {v3, v8, v6}, Ldz$e$b;->b(ILjava/lang/Object;)V

    goto :goto_5

    :cond_c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lka;

    iget-object v4, v3, Lka;->a:Ljava/lang/Object;

    check-cast v4, Ldz$i;

    iget-object v3, v3, Lka;->b:Ljava/lang/Object;

    check-cast v3, Lxy;

    invoke-virtual {p0, v4, v3}, Ldz$e;->O(Ldz$i;Lxy;)I

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Ldz$e;->r:Ldz$i;

    if-ne v4, v3, :cond_d

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring invalid provider descriptor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :cond_f
    iget-object p2, p1, Ldz$h;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_7
    if-lt p2, v0, :cond_10

    iget-object v3, p1, Ldz$h;->b:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldz$i;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ldz$i;->E(Lxy;)I

    iget-object v4, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    :cond_10
    invoke-virtual {p0, v5}, Ldz$e;->P(Z)V

    iget-object p2, p1, Ldz$h;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_8
    if-lt p2, v0, :cond_12

    iget-object v1, p1, Ldz$h;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldz$i;

    sget-boolean v3, Ldz;->c:Z

    if-eqz v3, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Route removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v3, p0, Ldz$e;->k:Ldz$e$b;

    const/16 v4, 0x102

    invoke-virtual {v3, v4, v1}, Ldz$e$b;->b(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_8

    :cond_12
    sget-boolean p2, Ldz;->c:Z

    if-eqz p2, :cond_13

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Provider changed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object p2, p0, Ldz$e;->k:Ldz$e$b;

    const/16 v0, 0x203

    invoke-virtual {p2, v0, p1}, Ldz$e$b;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public N(Lzy;Laz;)V
    .locals 0

    invoke-virtual {p0, p1}, Ldz$e;->i(Lzy;)Ldz$h;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Ldz$e;->M(Ldz$h;Laz;)V

    :cond_0
    return-void
.end method

.method public O(Ldz$i;Lxy;)I
    .locals 3

    invoke-virtual {p1, p2}, Ldz$i;->E(Lxy;)I

    move-result p2

    if-eqz p2, :cond_5

    and-int/lit8 v0, p2, 0x1

    const-string v1, "MediaRouter"

    if-eqz v0, :cond_1

    sget-boolean v0, Ldz;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Ldz$e;->k:Ldz$e$b;

    const/16 v2, 0x103

    invoke-virtual {v0, v2, p1}, Ldz$e$b;->b(ILjava/lang/Object;)V

    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    sget-boolean v0, Ldz;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route volume changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Ldz$e;->k:Ldz$e$b;

    const/16 v2, 0x104

    invoke-virtual {v0, v2, p1}, Ldz$e$b;->b(ILjava/lang/Object;)V

    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_5

    sget-boolean v0, Ldz;->c:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route presentation display changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Ldz$e;->k:Ldz$e$b;

    const/16 v1, 0x105

    invoke-virtual {v0, v1, p1}, Ldz$e$b;->b(ILjava/lang/Object;)V

    :cond_5
    return p2
.end method

.method public P(Z)V
    .locals 5

    iget-object v0, p0, Ldz$e;->p:Ldz$i;

    const/4 v1, 0x0

    const-string v2, "MediaRouter"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldz$i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing the default route because it is no longer selectable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ldz$e;->p:Ldz$i;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Ldz$e;->p:Ldz$i;

    :cond_0
    iget-object v0, p0, Ldz$e;->p:Ldz$i;

    if-nez v0, :cond_2

    iget-object v0, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldz$i;

    invoke-virtual {p0, v3}, Ldz$e;->x(Ldz$i;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ldz$i;->A()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, Ldz$e;->p:Ldz$i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found default route: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ldz$e;->p:Ldz$i;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Ldz$e;->q:Ldz$i;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ldz$i;->A()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing the bluetooth route because it is no longer selectable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ldz$e;->q:Ldz$i;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Ldz$e;->q:Ldz$i;

    :cond_3
    iget-object v0, p0, Ldz$e;->q:Ldz$i;

    if-nez v0, :cond_5

    iget-object v0, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldz$i;

    invoke-virtual {p0, v1}, Ldz$e;->y(Ldz$i;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ldz$i;->A()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v1, p0, Ldz$e;->q:Ldz$i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found bluetooth route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldz$e;->q:Ldz$i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ldz$i;->w()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ldz$e;->A()V

    invoke-virtual {p0}, Ldz$e;->L()V

    goto :goto_1

    :cond_7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unselecting the current route because it is no longer selectable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ldz$e;->h()Ldz$i;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldz$e;->G(Ldz$i;I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public a(Lzy;)V
    .locals 3

    invoke-virtual {p0, p1}, Ldz$e;->i(Lzy;)Ldz$h;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ldz$h;

    invoke-direct {v0, p1}, Ldz$h;-><init>(Lzy;)V

    iget-object v1, p0, Ldz$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Ldz;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Ldz$e;->k:Ldz$e$b;

    const/16 v2, 0x201

    invoke-virtual {v1, v2, v0}, Ldz$e$b;->b(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lzy;->o()Laz;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ldz$e;->M(Ldz$h;Laz;)V

    iget-object v0, p0, Ldz$e;->j:Ldz$e$e;

    invoke-virtual {p1, v0}, Lzy;->w(Lzy$a;)V

    iget-object v0, p0, Ldz$e;->w:Lyy;

    invoke-virtual {p1, v0}, Lzy;->y(Lyy;)V

    :cond_1
    return-void
.end method

.method public b(Lzy;)V
    .locals 2

    invoke-virtual {p0, p1}, Ldz$e;->i(Lzy;)Ldz$h;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lzy;->w(Lzy$a;)V

    invoke-virtual {p1, v1}, Lzy;->y(Lyy;)V

    invoke-virtual {p0, v0, v1}, Ldz$e;->M(Ldz$h;Laz;)V

    sget-boolean p1, Ldz;->c:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider removed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaRouter"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Ldz$e;->k:Ldz$e$b;

    const/16 v1, 0x202

    invoke-virtual {p1, v1, v0}, Ldz$e$b;->b(ILjava/lang/Object;)V

    iget-object p1, p0, Ldz$e;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ldz$e;->k:Ldz$e$b;

    const/16 v1, 0x106

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Ldz$e;->l:Lnz;

    invoke-virtual {p0, v0}, Ldz$e;->i(Lzy;)Ldz$h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ldz$h;->a(Ljava/lang/String;)Ldz$i;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ldz$i;->H()V

    :cond_0
    return-void
.end method

.method public d(Lkz;Lzy$e;)V
    .locals 0

    iget-object p1, p0, Ldz$e;->s:Lzy$e;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Ldz$e;->h()Ldz$i;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Ldz$e;->F(Ldz$i;I)V

    :cond_0
    return-void
.end method

.method public f(Ldz$i;)V
    .locals 2

    iget-object v0, p0, Ldz$e;->s:Lzy$e;

    instance-of v0, v0, Lzy$b;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ldz$e;->n(Ldz$i;)Ldz$i$a;

    move-result-object v0

    iget-object v1, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ldz$i$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldz$e;->s:Lzy$e;

    check-cast v0, Lzy$b;

    invoke-virtual {p1}, Ldz$i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzy$b;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to add a non-groupable route to dynamic group : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouter"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is no currently selected dynamic group route."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ldz$h;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Ldz$h;->c()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldz$e;->j(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Ldz$e;->f:Ljava/util/Map;

    new-instance v2, Lka;

    invoke-direct {v2, p1, p2}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t unique in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or we\'re trying to assign a unique ID for an already added route"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouter"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const/4 v2, 0x2

    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "%s_%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ldz$e;->j(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    iget-object v0, p0, Ldz$e;->f:Ljava/util/Map;

    new-instance v1, Lka;

    invoke-direct {v1, p1, p2}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public h()Ldz$i;
    .locals 3

    iget-object v0, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldz$i;

    iget-object v2, p0, Ldz$e;->p:Ldz$i;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ldz$e;->y(Ldz$i;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ldz$i;->A()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    iget-object v0, p0, Ldz$e;->p:Ldz$i;

    return-object v0
.end method

.method public final i(Lzy;)Ldz$h;
    .locals 3

    iget-object v0, p0, Ldz$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ldz$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldz$h;

    iget-object v2, v2, Ldz$h;->a:Lzy;

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Ldz$e;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldz$h;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final j(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldz$i;

    iget-object v2, v2, Ldz$i;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public k()Ldz$i;
    .locals 1

    iget-object v0, p0, Ldz$e;->q:Ldz$i;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Ldz$e;->y:I

    return v0
.end method

.method public m()Ldz$i;
    .locals 2

    iget-object v0, p0, Ldz$e;->p:Ldz$i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n(Ldz$i;)Ldz$i$a;
    .locals 1

    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v0, p1}, Ldz$i;->h(Ldz$i;)Ldz$i$a;

    move-result-object p1

    return-object p1
.end method

.method public o()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    iget-object v0, p0, Ldz$e;->B:Ldz$e$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldz$e$c;->c()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ldz$e;->C:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public p(Ljava/lang/String;)Ldz$i;
    .locals 3

    iget-object v0, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldz$i;

    iget-object v2, v1, Ldz$i;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public q(Landroid/content/Context;)Ldz;
    .locals 3

    iget-object v0, p0, Ldz$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v1, p0, Ldz$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldz;

    if-nez v1, :cond_1

    iget-object v1, p0, Ldz$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v2, v1, Ldz;->a:Landroid/content/Context;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_2
    new-instance v0, Ldz;

    invoke-direct {v0, p1}, Ldz;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Ldz$e;->d:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public r()Ljz;
    .locals 1

    iget-object v0, p0, Ldz$e;->n:Ljz;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldz$i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldz$e;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public t()Ldz$i;
    .locals 2

    iget-object v0, p0, Ldz$e;->r:Ldz$i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u(Ldz$h;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ldz$h;->c()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ldz$e;->f:Ljava/util/Map;

    new-instance v1, Lka;

    invoke-direct {v1, p1, p2}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Ldz$e;->b:Z

    return v0
.end method

.method public w(Lcz;I)Z
    .locals 6

    invoke-virtual {p1}, Lcz;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldz$e;->m:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Ldz$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldz$i;

    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ldz$i;->v()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Ldz$i;->D(Lcz;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final x(Ldz$i;)Z
    .locals 2

    invoke-virtual {p1}, Ldz$i;->q()Lzy;

    move-result-object v0

    iget-object v1, p0, Ldz$e;->l:Lnz;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Ldz$i;->b:Ljava/lang/String;

    const-string v0, "DEFAULT_ROUTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final y(Ldz$i;)Z
    .locals 2

    invoke-virtual {p1}, Ldz$i;->q()Lzy;

    move-result-object v0

    iget-object v1, p0, Ldz$e;->l:Lnz;

    if-ne v0, v1, :cond_0

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {p1, v0}, Ldz$i;->I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {p1, v0}, Ldz$i;->I(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Ldz$e;->n:Ljz;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljz;->c()Z

    move-result v0

    return v0
.end method
