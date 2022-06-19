.class public abstract Lcom/google/android/exoplayer2/source/n;
.super Lcom/google/android/exoplayer2/source/l;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/n$a;,
        Lcom/google/android/exoplayer2/source/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/exoplayer2/source/l;"
    }
.end annotation


# instance fields
.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/google/android/exoplayer2/source/n$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;

.field private h:Lcom/google/android/exoplayer2/upstream/x;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/l;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/n;->f:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic w(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/y0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->y(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/y0;)V

    return-void
.end method


# virtual methods
.method protected A(Lcom/google/android/exoplayer2/source/v$a;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/n$b;

    .line 2
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/n$b;->a:Lcom/google/android/exoplayer2/source/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/v;->h()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/n$b;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/n$b;->a:Lcom/google/android/exoplayer2/source/v;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/n$b;->b:Lcom/google/android/exoplayer2/source/v$b;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/v;->f(Lcom/google/android/exoplayer2/source/v$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/n$b;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/n$b;->a:Lcom/google/android/exoplayer2/source/v;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/n$b;->b:Lcom/google/android/exoplayer2/source/v$b;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/v;->k(Lcom/google/android/exoplayer2/source/v$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected q(Lcom/google/android/exoplayer2/upstream/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n;->h:Lcom/google/android/exoplayer2/upstream/x;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n;->g:Landroid/os/Handler;

    return-void
.end method

.method protected s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/n$b;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/n$b;->a:Lcom/google/android/exoplayer2/source/v;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/n$b;->b:Lcom/google/android/exoplayer2/source/v$b;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/v;->b(Lcom/google/android/exoplayer2/source/v$b;)V

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/n$b;->a:Lcom/google/android/exoplayer2/source/v;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/n$b;->c:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/v;->e(Lcom/google/android/exoplayer2/source/w;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected t(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/source/v$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/v$a;",
            ")",
            "Lcom/google/android/exoplayer2/source/v$a;"
        }
    .end annotation

    return-object p2
.end method

.method protected u(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    return-wide p2
.end method

.method protected v(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    return p2
.end method

.method public synthetic x(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/y0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->w(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/y0;)V

    return-void
.end method

.method protected abstract y(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/y0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/v;",
            "Lcom/google/android/exoplayer2/y0;",
            ")V"
        }
    .end annotation
.end method

.method protected final z(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/v;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->a(Z)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/source/a;-><init>(Lcom/google/android/exoplayer2/source/n;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/source/n$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/n$a;-><init>(Lcom/google/android/exoplayer2/source/n;Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/n;->f:Ljava/util/HashMap;

    new-instance v3, Lcom/google/android/exoplayer2/source/n$b;

    invoke-direct {v3, p2, v0, v1}, Lcom/google/android/exoplayer2/source/n$b;-><init>(Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/source/v$b;Lcom/google/android/exoplayer2/source/w;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n;->g:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/v;->d(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/w;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n;->h:Lcom/google/android/exoplayer2/upstream/x;

    invoke-interface {p2, v0, p1}, Lcom/google/android/exoplayer2/source/v;->j(Lcom/google/android/exoplayer2/source/v$b;Lcom/google/android/exoplayer2/upstream/x;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/l;->p()Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/source/v;->f(Lcom/google/android/exoplayer2/source/v$b;)V

    :cond_0
    return-void
.end method
