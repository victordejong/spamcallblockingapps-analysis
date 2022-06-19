.class public final Lcom/google/android/exoplayer2/source/y;
.super Lcom/google/android/exoplayer2/source/l;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/x$c;


# instance fields
.field private final f:Landroid/net/Uri;

.field private final g:Lcom/google/android/exoplayer2/upstream/j$a;

.field private final h:Lcom/google/android/exoplayer2/c1/l;

.field private final i:Lcom/google/android/exoplayer2/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/k<",
            "*>;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/exoplayer2/upstream/u;

.field private final k:Ljava/lang/String;

.field private final l:I

.field private final m:Ljava/lang/Object;

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Lcom/google/android/exoplayer2/upstream/x;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/j$a;Lcom/google/android/exoplayer2/c1/l;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/upstream/u;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/j$a;",
            "Lcom/google/android/exoplayer2/c1/l;",
            "Lcom/google/android/exoplayer2/drm/k<",
            "*>;",
            "Lcom/google/android/exoplayer2/upstream/u;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/y;->f:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/y;->g:Lcom/google/android/exoplayer2/upstream/j$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/y;->h:Lcom/google/android/exoplayer2/c1/l;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/y;->i:Lcom/google/android/exoplayer2/drm/k;

    .line 6
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/y;->j:Lcom/google/android/exoplayer2/upstream/u;

    .line 7
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/y;->k:Ljava/lang/String;

    .line 8
    iput p7, p0, Lcom/google/android/exoplayer2/source/y;->l:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/y;->n:J

    .line 10
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/y;->m:Ljava/lang/Object;

    return-void
.end method

.method private t(JZZ)V
    .locals 8

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/y;->n:J

    .line 2
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/y;->o:Z

    .line 3
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/source/y;->p:Z

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/source/d0;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/y;->n:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/y;->o:Z

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/y;->p:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/y;->m:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/d0;-><init>(JZZZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/l;->r(Lcom/google/android/exoplayer2/y0;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/upstream/e;J)Lcom/google/android/exoplayer2/source/u;
    .locals 11

    .line 1
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/y;->g:Lcom/google/android/exoplayer2/upstream/j$a;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/upstream/j$a;->a()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v2

    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/y;->q:Lcom/google/android/exoplayer2/upstream/x;

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {v2, p3}, Lcom/google/android/exoplayer2/upstream/j;->a(Lcom/google/android/exoplayer2/upstream/x;)V

    .line 4
    :cond_0
    new-instance p3, Lcom/google/android/exoplayer2/source/x;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y;->f:Landroid/net/Uri;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/y;->h:Lcom/google/android/exoplayer2/c1/l;

    .line 5
    invoke-interface {p4}, Lcom/google/android/exoplayer2/c1/l;->a()[Lcom/google/android/exoplayer2/c1/h;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/y;->i:Lcom/google/android/exoplayer2/drm/k;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/y;->j:Lcom/google/android/exoplayer2/upstream/u;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/l;->m(Lcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/source/w$a;

    move-result-object v6

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/y;->k:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/exoplayer2/source/y;->l:I

    move-object v0, p3

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/x;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/j;[Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/upstream/u;Lcom/google/android/exoplayer2/source/w$a;Lcom/google/android/exoplayer2/source/x$c;Lcom/google/android/exoplayer2/upstream/e;Ljava/lang/String;I)V

    return-object p3
.end method

.method public g(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/y;->n:J

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y;->n:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/y;->o:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/y;->p:Z

    if-ne v0, p4, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/y;->t(JZZ)V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i(Lcom/google/android/exoplayer2/source/u;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/x;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/x;->a0()V

    return-void
.end method

.method protected q(Lcom/google/android/exoplayer2/upstream/x;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/y;->q:Lcom/google/android/exoplayer2/upstream/x;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/y;->i:Lcom/google/android/exoplayer2/drm/k;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/k;->c()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y;->n:J

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/y;->o:Z

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/y;->p:Z

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/google/android/exoplayer2/source/y;->t(JZZ)V

    return-void
.end method

.method protected s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->i:Lcom/google/android/exoplayer2/drm/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/k;->b()V

    return-void
.end method
