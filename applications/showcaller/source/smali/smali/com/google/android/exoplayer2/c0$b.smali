.class final Lcom/google/android/exoplayer2/c0$b;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final d:Lcom/google/android/exoplayer2/k0;

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/exoplayer2/trackselection/h;

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private final p:Z

.field private final q:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/k0;Lcom/google/android/exoplayer2/k0;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/trackselection/h;ZIIZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/k0;",
            "Lcom/google/android/exoplayer2/k0;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/t$a;",
            ">;",
            "Lcom/google/android/exoplayer2/trackselection/h;",
            "ZIIZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/c0$b;->d:Lcom/google/android/exoplayer2/k0;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/c0$b;->f:Lcom/google/android/exoplayer2/trackselection/h;

    .line 5
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/c0$b;->g:Z

    .line 6
    iput p6, p0, Lcom/google/android/exoplayer2/c0$b;->h:I

    .line 7
    iput p7, p0, Lcom/google/android/exoplayer2/c0$b;->i:I

    .line 8
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/c0$b;->j:Z

    .line 9
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/c0$b;->p:Z

    .line 10
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/c0$b;->q:Z

    .line 11
    iget p3, p2, Lcom/google/android/exoplayer2/k0;->f:I

    iget p4, p1, Lcom/google/android/exoplayer2/k0;->f:I

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-eq p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/c0$b;->k:Z

    .line 12
    iget-object p3, p2, Lcom/google/android/exoplayer2/k0;->g:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object p4, p1, Lcom/google/android/exoplayer2/k0;->g:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eq p3, p4, :cond_1

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/c0$b;->l:Z

    .line 13
    iget-object p3, p2, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    iget-object p4, p1, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    if-eq p3, p4, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/c0$b;->m:Z

    .line 14
    iget-boolean p3, p2, Lcom/google/android/exoplayer2/k0;->h:Z

    iget-boolean p4, p1, Lcom/google/android/exoplayer2/k0;->h:Z

    if-eq p3, p4, :cond_3

    const/4 p3, 0x1

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/c0$b;->n:Z

    .line 15
    iget-object p2, p2, Lcom/google/android/exoplayer2/k0;->j:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object p1, p1, Lcom/google/android/exoplayer2/k0;->j:Lcom/google/android/exoplayer2/trackselection/i;

    if-eq p2, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p5, 0x0

    :goto_4
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/c0$b;->o:Z

    return-void
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->d:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    iget v1, p0, Lcom/google/android/exoplayer2/c0$b;->i:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/o0$a;->onTimelineChanged(Lcom/google/android/exoplayer2/y0;I)V

    return-void
.end method

.method private synthetic c(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/c0$b;->h:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/o0$a;->onPositionDiscontinuity(I)V

    return-void
.end method

.method private synthetic e(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->d:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->g:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/o0$a;->onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method private synthetic g(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->d:Lcom/google/android/exoplayer2/k0;

    iget-object v1, v0, Lcom/google/android/exoplayer2/k0;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->j:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/i;->c:Lcom/google/android/exoplayer2/trackselection/g;

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/o0$a;->onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V

    return-void
.end method

.method private synthetic i(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->d:Lcom/google/android/exoplayer2/k0;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/k0;->h:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/o0$a;->onLoadingChanged(Z)V

    return-void
.end method

.method private synthetic k(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c0$b;->p:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/c0$b;->d:Lcom/google/android/exoplayer2/k0;

    iget v1, v1, Lcom/google/android/exoplayer2/k0;->f:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/o0$a;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method private synthetic m(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->d:Lcom/google/android/exoplayer2/k0;

    iget v0, v0, Lcom/google/android/exoplayer2/k0;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/o0$a;->onIsPlayingChanged(Z)V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c0$b;->a(Lcom/google/android/exoplayer2/o0$a;)V

    return-void
.end method

.method public synthetic d(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c0$b;->c(Lcom/google/android/exoplayer2/o0$a;)V

    return-void
.end method

.method public synthetic f(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c0$b;->e(Lcom/google/android/exoplayer2/o0$a;)V

    return-void
.end method

.method public synthetic h(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c0$b;->g(Lcom/google/android/exoplayer2/o0$a;)V

    return-void
.end method

.method public synthetic j(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c0$b;->i(Lcom/google/android/exoplayer2/o0$a;)V

    return-void
.end method

.method public synthetic l(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c0$b;->k(Lcom/google/android/exoplayer2/o0$a;)V

    return-void
.end method

.method public synthetic n(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c0$b;->m(Lcom/google/android/exoplayer2/o0$a;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c0$b;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/c0$b;->i:I

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/f;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/f;-><init>(Lcom/google/android/exoplayer2/c0$b;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/c0;->Y(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c0$b;->g:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/h;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/h;-><init>(Lcom/google/android/exoplayer2/c0$b;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/c0;->Y(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c0$b;->l:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/e;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/e;-><init>(Lcom/google/android/exoplayer2/c0$b;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/c0;->Y(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V

    .line 7
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c0$b;->o:Z

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->f:Lcom/google/android/exoplayer2/trackselection/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c0$b;->d:Lcom/google/android/exoplayer2/k0;

    iget-object v1, v1, Lcom/google/android/exoplayer2/k0;->j:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/i;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/h;->c(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/i;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/i;-><init>(Lcom/google/android/exoplayer2/c0$b;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/c0;->Y(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V

    .line 10
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c0$b;->n:Z

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/g;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/g;-><init>(Lcom/google/android/exoplayer2/c0$b;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/c0;->Y(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V

    .line 12
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c0$b;->k:Z

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/k;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/k;-><init>(Lcom/google/android/exoplayer2/c0$b;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/c0;->Y(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V

    .line 14
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c0$b;->q:Z

    if-eqz v0, :cond_7

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/j;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/j;-><init>(Lcom/google/android/exoplayer2/c0$b;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/c0;->Y(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V

    .line 16
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c0$b;->j:Z

    if-eqz v0, :cond_8

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Lcom/google/android/exoplayer2/q;->a:Lcom/google/android/exoplayer2/q;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/c0;->Y(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V

    :cond_8
    return-void
.end method
