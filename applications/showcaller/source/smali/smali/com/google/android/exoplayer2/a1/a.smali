.class public Lcom/google/android/exoplayer2/a1/a;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"

# interfaces
.implements Lcom/google/android/exoplayer2/o0$a;
.implements Lcom/google/android/exoplayer2/metadata/e;
.implements Lcom/google/android/exoplayer2/audio/l;
.implements Lcom/google/android/exoplayer2/video/q;
.implements Lcom/google/android/exoplayer2/source/w;
.implements Lcom/google/android/exoplayer2/upstream/f$a;
.implements Lcom/google/android/exoplayer2/drm/h;
.implements Lcom/google/android/exoplayer2/video/p;
.implements Lcom/google/android/exoplayer2/audio/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/a1/a$a;,
        Lcom/google/android/exoplayer2/a1/a$b;
    }
.end annotation


# instance fields
.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/a1/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/exoplayer2/util/f;

.field private final f:Lcom/google/android/exoplayer2/y0$c;

.field private final g:Lcom/google/android/exoplayer2/a1/a$b;

.field private h:Lcom/google/android/exoplayer2/o0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/f;

    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a;->e:Lcom/google/android/exoplayer2/util/f;

    .line 3
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/a1/a$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/a1/a$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/y0$c;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/y0$c;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a;->f:Lcom/google/android/exoplayer2/y0$c;

    return-void
.end method

.method private D(Lcom/google/android/exoplayer2/a1/a$a;)Lcom/google/android/exoplayer2/a1/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o0;->u()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a1/a$b;->o(I)Lcom/google/android/exoplayer2/a1/a$a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->L()Lcom/google/android/exoplayer2/y0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0;->p()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/y0;->a:Lcom/google/android/exoplayer2/y0;

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/a1/a;->C(Lcom/google/android/exoplayer2/y0;ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    return-object p1

    :cond_2
    move-object p1, v0

    .line 7
    :cond_3
    iget-object v0, p1, Lcom/google/android/exoplayer2/a1/a$a;->b:Lcom/google/android/exoplayer2/y0;

    iget v1, p1, Lcom/google/android/exoplayer2/a1/a$a;->c:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/a1/a$a;->a:Lcom/google/android/exoplayer2/source/v$a;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/a1/a;->C(Lcom/google/android/exoplayer2/y0;ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    return-object p1
.end method

.method private E()Lcom/google/android/exoplayer2/a1/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a1/a$b;->b()Lcom/google/android/exoplayer2/a1/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1/a;->D(Lcom/google/android/exoplayer2/a1/a$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    return-object v0
.end method

.method private F()Lcom/google/android/exoplayer2/a1/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a1/a$b;->c()Lcom/google/android/exoplayer2/a1/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1/a;->D(Lcom/google/android/exoplayer2/a1/a$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    return-object v0
.end method

.method private G(ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/a1/a$b;->d(Lcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1/a;->D(Lcom/google/android/exoplayer2/a1/a$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/y0;->a:Lcom/google/android/exoplayer2/y0;

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/a1/a;->C(Lcom/google/android/exoplayer2/y0;ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    :goto_0
    return-object p1

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/o0;->L()Lcom/google/android/exoplayer2/y0;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/y0;->p()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    sget-object p2, Lcom/google/android/exoplayer2/y0;->a:Lcom/google/android/exoplayer2/y0;

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/a1/a;->C(Lcom/google/android/exoplayer2/y0;ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    return-object p1
.end method

.method private H()Lcom/google/android/exoplayer2/a1/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a1/a$b;->e()Lcom/google/android/exoplayer2/a1/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1/a;->D(Lcom/google/android/exoplayer2/a1/a$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    return-object v0
.end method

.method private I()Lcom/google/android/exoplayer2/a1/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a1/a$b;->f()Lcom/google/android/exoplayer2/a1/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1/a;->D(Lcom/google/android/exoplayer2/a1/a$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A(ILcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/source/w$c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a1/a;->G(ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v0, p1, p3}, Lcom/google/android/exoplayer2/a1/b;->y(Lcom/google/android/exoplayer2/a1/b$a;Lcom/google/android/exoplayer2/source/w$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final B()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/a1/b;->J(Lcom/google/android/exoplayer2/a1/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected C(Lcom/google/android/exoplayer2/y0;ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;
    .locals 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v5, p3

    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/a1/a;->e:Lcom/google/android/exoplayer2/util/f;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/util/f;->b()J

    move-result-wide v1

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    .line 4
    invoke-interface {p3}, Lcom/google/android/exoplayer2/o0;->L()Lcom/google/android/exoplayer2/y0;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/o0;->u()I

    move-result p3

    if-ne p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    .line 5
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/v$a;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    .line 6
    iget-object p3, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    .line 7
    invoke-interface {p3}, Lcom/google/android/exoplayer2/o0;->D()I

    move-result p3

    iget v4, v5, Lcom/google/android/exoplayer2/source/v$a;->b:I

    if-ne p3, v4, :cond_2

    iget-object p3, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    .line 8
    invoke-interface {p3}, Lcom/google/android/exoplayer2/o0;->q()I

    move-result p3

    iget v4, v5, Lcom/google/android/exoplayer2/source/v$a;->c:I

    if-ne p3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 9
    iget-object p3, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/o0;->getCurrentPosition()J

    move-result-wide v6

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 10
    iget-object p3, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/o0;->y()J

    move-result-wide v3

    move-wide v6, v3

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lcom/google/android/exoplayer2/a1/a;->f:Lcom/google/android/exoplayer2/y0$c;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/y0$c;->a()J

    move-result-wide v6

    .line 12
    :cond_6
    :goto_2
    new-instance p3, Lcom/google/android/exoplayer2/a1/b$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    .line 13
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->getCurrentPosition()J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    .line 14
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o0;->f()J

    move-result-wide v10

    move-object v0, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/a1/b$a;-><init>(JLcom/google/android/exoplayer2/y0;ILcom/google/android/exoplayer2/source/v$a;JJJ)V

    return-object p3
.end method

.method public final J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a1/a$b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a1/a$b;->m()V

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 5
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/a1/b;->G(Lcom/google/android/exoplayer2/a1/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final K()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/a1/a$b;->a(Lcom/google/android/exoplayer2/a1/a$b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/a1/a$a;

    .line 4
    iget v2, v1, Lcom/google/android/exoplayer2/a1/a$a;->c:I

    iget-object v1, v1, Lcom/google/android/exoplayer2/a1/a$a;->a:Lcom/google/android/exoplayer2/source/v$a;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/a1/a;->u(ILcom/google/android/exoplayer2/source/v$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public L(Lcom/google/android/exoplayer2/o0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/a1/a$b;->a(Lcom/google/android/exoplayer2/a1/a$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/o0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a;->h:Lcom/google/android/exoplayer2/o0;

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->L(Lcom/google/android/exoplayer2/a1/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->E()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    const/4 v3, 0x1

    .line 3
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/a1/b;->I(Lcom/google/android/exoplayer2/a1/b$a;ILcom/google/android/exoplayer2/b1/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    const/4 v3, 0x1

    .line 3
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/a1/b;->q(Lcom/google/android/exoplayer2/a1/b$a;ILcom/google/android/exoplayer2/b1/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p2

    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    const/4 v2, 0x2

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/a1/b;->g(Lcom/google/android/exoplayer2/a1/b$a;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(ILcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a1/a;->G(ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/a1/b;->c(Lcom/google/android/exoplayer2/a1/b$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/a1/b;->k(Lcom/google/android/exoplayer2/a1/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(F)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->w(Lcom/google/android/exoplayer2/a1/b$a;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(ILcom/google/android/exoplayer2/source/v$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/a1/a$b;->k(Lcom/google/android/exoplayer2/source/v$a;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a1/a;->G(ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/a1/b;->K(Lcom/google/android/exoplayer2/a1/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(ILcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a1/a;->G(ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/a1/b;->d(Lcom/google/android/exoplayer2/a1/b$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->i(Lcom/google/android/exoplayer2/a1/b$a;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(Landroid/view/Surface;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->H(Lcom/google/android/exoplayer2/a1/b$a;Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(IJJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->F()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v7

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 3
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/a1/b;->a(Lcom/google/android/exoplayer2/a1/b$a;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p2

    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    const/4 v2, 0x1

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/a1/b;->g(Lcom/google/android/exoplayer2/a1/b$a;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->r(Lcom/google/android/exoplayer2/a1/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/a1/b;->v(Lcom/google/android/exoplayer2/a1/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->B(Lcom/google/android/exoplayer2/a1/b$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadingChanged(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->n(Lcom/google/android/exoplayer2/a1/b$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPlaybackParametersChanged(Lcom/google/android/exoplayer2/l0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->m(Lcom/google/android/exoplayer2/a1/b$a;Lcom/google/android/exoplayer2/l0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->l(Lcom/google/android/exoplayer2/a1/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->E()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->M(Lcom/google/android/exoplayer2/a1/b$a;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/a1/b;->t(Lcom/google/android/exoplayer2/a1/b$a;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a1/a$b;->j(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 4
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->h(Lcom/google/android/exoplayer2/a1/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->s(Lcom/google/android/exoplayer2/a1/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSeekProcessed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a1/a$b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a1/a$b;->l()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 5
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/a1/b;->f(Lcom/google/android/exoplayer2/a1/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a1/b;->A(Lcom/google/android/exoplayer2/a1/b$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/a1/b;->z(Lcom/google/android/exoplayer2/a1/b$a;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/y0;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a1/a$b;->n(Lcom/google/android/exoplayer2/y0;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/a1/b;

    .line 4
    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/a1/b;->E(Lcom/google/android/exoplayer2/a1/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/y0;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/n0;->k(Lcom/google/android/exoplayer2/o0$a;Lcom/google/android/exoplayer2/y0;Ljava/lang/Object;I)V

    return-void
.end method

.method public final onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/a1/b;->x(Lcom/google/android/exoplayer2/a1/b$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onVideoSizeChanged(IIIF)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v6

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/a1/b;->b(Lcom/google/android/exoplayer2/a1/b$a;IIIF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p(IJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->E()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/a1/b;->C(Lcom/google/android/exoplayer2/a1/b$a;IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(ILcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a1/a;->G(ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/a1/b;->F(Lcom/google/android/exoplayer2/a1/b$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(ILcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;Ljava/io/IOException;Z)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a1/a;->G(ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/a1/b;->p(Lcom/google/android/exoplayer2/a1/b$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;Ljava/io/IOException;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(Lcom/google/android/exoplayer2/Format;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    const/4 v3, 0x2

    .line 3
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/a1/b;->e(Lcom/google/android/exoplayer2/a1/b$a;ILcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->H()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    const/4 v3, 0x2

    .line 3
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/a1/b;->q(Lcom/google/android/exoplayer2/a1/b$a;ILcom/google/android/exoplayer2/b1/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u(ILcom/google/android/exoplayer2/source/v$a;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a1/a;->G(ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/a1/a$b;->i(Lcom/google/android/exoplayer2/source/v$a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/a1/b;->u(Lcom/google/android/exoplayer2/a1/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v(Lcom/google/android/exoplayer2/Format;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    const/4 v3, 0x1

    .line 3
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/a1/b;->e(Lcom/google/android/exoplayer2/a1/b$a;ILcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(ILcom/google/android/exoplayer2/source/v$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->g:Lcom/google/android/exoplayer2/a1/a$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/a1/a$b;->h(ILcom/google/android/exoplayer2/source/v$a;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a1/a;->G(ILcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/a1/b;->D(Lcom/google/android/exoplayer2/a1/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x(IJJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->I()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v7

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/b;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 3
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/a1/b;->o(Lcom/google/android/exoplayer2/a1/b$a;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->E()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    const/4 v3, 0x2

    .line 3
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/a1/b;->I(Lcom/google/android/exoplayer2/a1/b$a;ILcom/google/android/exoplayer2/b1/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1/a;->E()Lcom/google/android/exoplayer2/a1/b$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a1/b;

    .line 3
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/a1/b;->j(Lcom/google/android/exoplayer2/a1/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
