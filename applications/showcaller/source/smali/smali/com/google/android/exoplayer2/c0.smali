.class final Lcom/google/android/exoplayer2/c0;
.super Lcom/google/android/exoplayer2/t;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/o0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c0$b;
    }
.end annotation


# instance fields
.field final b:Lcom/google/android/exoplayer2/trackselection/i;

.field private final c:[Lcom/google/android/exoplayer2/r0;

.field private final d:Lcom/google/android/exoplayer2/trackselection/h;

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/google/android/exoplayer2/d0;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/exoplayer2/y0$b;

.field private final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/android/exoplayer2/source/v;

.field private l:Z

.field private m:I

.field private n:I

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Lcom/google/android/exoplayer2/l0;

.field private u:Lcom/google/android/exoplayer2/w0;

.field private v:Lcom/google/android/exoplayer2/k0;

.field private w:I

.field private x:I

.field private y:J


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/r0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/g0;Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/util/f;Landroid/os/Looper;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/t;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ExoPlayerLib/2.11.3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/android/exoplayer2/util/h0;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    array-length v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/r0;

    iput-object v1, v0, Lcom/google/android/exoplayer2/c0;->c:[Lcom/google/android/exoplayer2/r0;

    .line 5
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/h;

    iput-object v1, v0, Lcom/google/android/exoplayer2/c0;->d:Lcom/google/android/exoplayer2/trackselection/h;

    .line 6
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/c0;->l:Z

    .line 7
    iput v3, v0, Lcom/google/android/exoplayer2/c0;->n:I

    .line 8
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/c0;->o:Z

    .line 9
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/c0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/i;

    array-length v1, v2

    new-array v1, v1, [Lcom/google/android/exoplayer2/u0;

    array-length v5, v2

    new-array v5, v5, [Lcom/google/android/exoplayer2/trackselection/f;

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6}, Lcom/google/android/exoplayer2/trackselection/i;-><init>([Lcom/google/android/exoplayer2/u0;[Lcom/google/android/exoplayer2/trackselection/f;Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/google/android/exoplayer2/c0;->b:Lcom/google/android/exoplayer2/trackselection/i;

    .line 11
    new-instance v1, Lcom/google/android/exoplayer2/y0$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/y0$b;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/c0;->i:Lcom/google/android/exoplayer2/y0$b;

    .line 12
    sget-object v1, Lcom/google/android/exoplayer2/l0;->a:Lcom/google/android/exoplayer2/l0;

    iput-object v1, v0, Lcom/google/android/exoplayer2/c0;->t:Lcom/google/android/exoplayer2/l0;

    .line 13
    sget-object v1, Lcom/google/android/exoplayer2/w0;->e:Lcom/google/android/exoplayer2/w0;

    iput-object v1, v0, Lcom/google/android/exoplayer2/c0;->u:Lcom/google/android/exoplayer2/w0;

    .line 14
    iput v3, v0, Lcom/google/android/exoplayer2/c0;->m:I

    .line 15
    new-instance v10, Lcom/google/android/exoplayer2/c0$a;

    move-object/from16 v1, p6

    invoke-direct {v10, p0, v1}, Lcom/google/android/exoplayer2/c0$a;-><init>(Lcom/google/android/exoplayer2/c0;Landroid/os/Looper;)V

    iput-object v10, v0, Lcom/google/android/exoplayer2/c0;->e:Landroid/os/Handler;

    const-wide/16 v5, 0x0

    .line 16
    invoke-static {v5, v6, v4}, Lcom/google/android/exoplayer2/k0;->h(JLcom/google/android/exoplayer2/trackselection/i;)Lcom/google/android/exoplayer2/k0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    .line 17
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/c0;->j:Ljava/util/ArrayDeque;

    .line 18
    new-instance v12, Lcom/google/android/exoplayer2/d0;

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/c0;->l:Z

    iget v8, v0, Lcom/google/android/exoplayer2/c0;->n:I

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/c0;->o:Z

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/d0;-><init>([Lcom/google/android/exoplayer2/r0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/trackselection/i;Lcom/google/android/exoplayer2/g0;Lcom/google/android/exoplayer2/upstream/f;ZIZLandroid/os/Handler;Lcom/google/android/exoplayer2/util/f;)V

    iput-object v12, v0, Lcom/google/android/exoplayer2/c0;->f:Lcom/google/android/exoplayer2/d0;

    .line 19
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/d0;->r()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/c0;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic Y(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/c0;->f0(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V

    return-void
.end method

.method private b0(ZZZI)Lcom/google/android/exoplayer2/k0;
    .locals 24

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1
    iput v3, v0, Lcom/google/android/exoplayer2/c0;->w:I

    .line 2
    iput v3, v0, Lcom/google/android/exoplayer2/c0;->x:I

    .line 3
    iput-wide v1, v0, Lcom/google/android/exoplayer2/c0;->y:J

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/c0;->u()I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/c0;->w:I

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/c0;->a0()I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/c0;->x:I

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/c0;->getCurrentPosition()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/exoplayer2/c0;->y:J

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    .line 7
    iget-object v4, v0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/c0;->o:Z

    iget-object v6, v0, Lcom/google/android/exoplayer2/t;->a:Lcom/google/android/exoplayer2/y0$c;

    iget-object v7, v0, Lcom/google/android/exoplayer2/c0;->i:Lcom/google/android/exoplayer2/y0$b;

    .line 8
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/exoplayer2/k0;->i(ZLcom/google/android/exoplayer2/y0$c;Lcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/source/v$a;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v4, v4, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    :goto_1
    move-object/from16 v17, v4

    if-eqz v3, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/k0;->n:J

    :goto_2
    move-wide/from16 v22, v1

    if-eqz v3, :cond_5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    .line 10
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/k0;->e:J

    :goto_3
    move-wide v10, v1

    .line 11
    new-instance v1, Lcom/google/android/exoplayer2/k0;

    if-eqz p2, :cond_6

    sget-object v2, Lcom/google/android/exoplayer2/y0;->a:Lcom/google/android/exoplayer2/y0;

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v2, v2, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    :goto_4
    move-object v6, v2

    if-eqz p3, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    iget-object v2, v0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v2, v2, Lcom/google/android/exoplayer2/k0;->g:Lcom/google/android/exoplayer2/ExoPlaybackException;

    :goto_5
    move-object v13, v2

    const/4 v14, 0x0

    if-eqz p2, :cond_8

    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->d:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_6

    :cond_8
    iget-object v2, v0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v2, v2, Lcom/google/android/exoplayer2/k0;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_6
    move-object v15, v2

    if-eqz p2, :cond_9

    iget-object v2, v0, Lcom/google/android/exoplayer2/c0;->b:Lcom/google/android/exoplayer2/trackselection/i;

    goto :goto_7

    :cond_9
    iget-object v2, v0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v2, v2, Lcom/google/android/exoplayer2/k0;->j:Lcom/google/android/exoplayer2/trackselection/i;

    :goto_7
    move-object/from16 v16, v2

    const-wide/16 v20, 0x0

    move-object v5, v1

    move-object/from16 v7, v17

    move-wide/from16 v8, v22

    move/from16 v12, p4

    move-wide/from16 v18, v22

    invoke-direct/range {v5 .. v23}, Lcom/google/android/exoplayer2/k0;-><init>(Lcom/google/android/exoplayer2/y0;Lcom/google/android/exoplayer2/source/v$a;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Lcom/google/android/exoplayer2/source/v$a;JJJ)V

    return-object v1
.end method

.method private d0(Lcom/google/android/exoplayer2/k0;IZI)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/c0;->p:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/c0;->p:I

    if-nez v0, :cond_3

    .line 2
    iget-wide v0, p1, Lcom/google/android/exoplayer2/k0;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 3
    iget-object v1, p1, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Lcom/google/android/exoplayer2/k0;->e:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/k0;->m:J

    move-object v0, p1

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/k0;->c(Lcom/google/android/exoplayer2/source/v$a;JJJ)Lcom/google/android/exoplayer2/k0;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object p1, p1, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, v1, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iput p2, p0, Lcom/google/android/exoplayer2/c0;->x:I

    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/c0;->w:I

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lcom/google/android/exoplayer2/c0;->y:J

    .line 9
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/c0;->q:Z

    if-eqz p1, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    const/4 v4, 0x2

    .line 10
    :goto_0
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/c0;->r:Z

    .line 11
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/c0;->q:Z

    .line 12
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/c0;->r:Z

    move-object v0, p0

    move v2, p3

    move v3, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/c0;->v0(Lcom/google/android/exoplayer2/k0;ZIIZ)V

    :cond_3
    return-void
.end method

.method private e0(Lcom/google/android/exoplayer2/l0;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Lcom/google/android/exoplayer2/c0;->s:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/android/exoplayer2/c0;->s:I

    .line 2
    :cond_0
    iget p2, p0, Lcom/google/android/exoplayer2/c0;->s:I

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/c0;->t:Lcom/google/android/exoplayer2/l0;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/l0;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/c0;->t:Lcom/google/android/exoplayer2/l0;

    .line 5
    new-instance p2, Lcom/google/android/exoplayer2/b;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/b;-><init>(Lcom/google/android/exoplayer2/l0;)V

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/c0;->n0(Lcom/google/android/exoplayer2/t$b;)V

    :cond_1
    return-void
.end method

.method private static f0(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/t$a;",
            ">;",
            "Lcom/google/android/exoplayer2/t$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/t$a;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/t$a;->a(Lcom/google/android/exoplayer2/t$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic g0(Lcom/google/android/exoplayer2/l0;Lcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/o0$a;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/l0;)V

    return-void
.end method

.method static synthetic h0(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/c0;->f0(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V

    return-void
.end method

.method static synthetic i0(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/o0$a;->onPositionDiscontinuity(I)V

    return-void
.end method

.method static synthetic j0(ZZIZIZZLcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p7, p1, p2}, Lcom/google/android/exoplayer2/o0$a;->onPlayerStateChanged(ZI)V

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    invoke-interface {p7, p4}, Lcom/google/android/exoplayer2/o0$a;->onPlaybackSuppressionReasonChanged(I)V

    :cond_1
    if-eqz p5, :cond_2

    .line 3
    invoke-interface {p7, p6}, Lcom/google/android/exoplayer2/o0$a;->onIsPlayingChanged(Z)V

    :cond_2
    return-void
.end method

.method static synthetic k0(Lcom/google/android/exoplayer2/l0;Lcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/o0$a;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/l0;)V

    return-void
.end method

.method static synthetic l0(ILcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/o0$a;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic m0(ZLcom/google/android/exoplayer2/o0$a;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/o0$a;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method private n0(Lcom/google/android/exoplayer2/t$b;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/m;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/m;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/t$b;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/c0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o0(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/c0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/c0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/c0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/c0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private p0(Lcom/google/android/exoplayer2/source/v$a;J)J
    .locals 2

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide p2

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c0;->i:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/y0;->h(Ljava/lang/Object;Lcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/c0;->i:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y0$b;->k()J

    move-result-wide v0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method private u0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/c0;->p:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private v0(Lcom/google/android/exoplayer2/k0;ZIIZ)V
    .locals 14

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/t;->isPlaying()Z

    move-result v1

    .line 2
    iget-object v4, v0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    move-object v3, p1

    .line 3
    iput-object v3, v0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/t;->isPlaying()Z

    move-result v2

    .line 5
    new-instance v13, Lcom/google/android/exoplayer2/c0$b;

    iget-object v5, v0, Lcom/google/android/exoplayer2/c0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v6, v0, Lcom/google/android/exoplayer2/c0;->d:Lcom/google/android/exoplayer2/trackselection/h;

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/c0;->l:Z

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_0
    move-object v2, v13

    move-object v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/c0$b;-><init>(Lcom/google/android/exoplayer2/k0;Lcom/google/android/exoplayer2/k0;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/android/exoplayer2/trackselection/h;ZIIZZZ)V

    invoke-direct {p0, v13}, Lcom/google/android/exoplayer2/c0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c0;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v1, v0, Lcom/google/android/exoplayer2/k0;->k:Lcom/google/android/exoplayer2/source/v$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/k0;->l:J

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c0;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c0;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method public B()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget v0, v0, Lcom/google/android/exoplayer2/k0;->f:I

    return v0
.end method

.method public D()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    iget v0, v0, Lcom/google/android/exoplayer2/source/v$a;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public E(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/c0;->n:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/c0;->n:I

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->f:Lcom/google/android/exoplayer2/d0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/d0;->p0(I)V

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/o;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/o;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c0;->n0(Lcom/google/android/exoplayer2/t$b;)V

    :cond_0
    return-void
.end method

.method public I()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/c0;->m:I

    return v0
.end method

.method public J()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public K()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/c0;->n:I

    return v0
.end method

.method public L()Lcom/google/android/exoplayer2/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    return-object v0
.end method

.method public M()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c0;->o:Z

    return v0
.end method

.method public O()J
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c0;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c0;->y:J

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v1, v0, Lcom/google/android/exoplayer2/k0;->k:Lcom/google/android/exoplayer2/source/v$a;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/v$a;->d:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/v$a;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c0;->u()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/t;->a:Lcom/google/android/exoplayer2/y0$c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0$c;->c()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    iget-wide v0, v0, Lcom/google/android/exoplayer2/k0;->l:J

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v2, v2, Lcom/google/android/exoplayer2/k0;->k:Lcom/google/android/exoplayer2/source/v$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/v$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v1, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->k:Lcom/google/android/exoplayer2/source/v$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c0;->i:Lcom/google/android/exoplayer2/y0$b;

    .line 8
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/y0;->h(Ljava/lang/Object;Lcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v1, v1, Lcom/google/android/exoplayer2/k0;->k:Lcom/google/android/exoplayer2/source/v$a;

    iget v1, v1, Lcom/google/android/exoplayer2/source/v$a;->b:I

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/y0$b;->f(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 11
    iget-wide v0, v0, Lcom/google/android/exoplayer2/y0$b;->d:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    .line 12
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v2, v2, Lcom/google/android/exoplayer2/k0;->k:Lcom/google/android/exoplayer2/source/v$a;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/c0;->p0(Lcom/google/android/exoplayer2/source/v$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q()Lcom/google/android/exoplayer2/trackselection/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->j:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/i;->c:Lcom/google/android/exoplayer2/trackselection/g;

    return-object v0
.end method

.method public R(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->c:[Lcom/google/android/exoplayer2/r0;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/r0;->i()I

    move-result p1

    return p1
.end method

.method public T()Lcom/google/android/exoplayer2/o0$b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Z(Lcom/google/android/exoplayer2/p0$b;)Lcom/google/android/exoplayer2/p0;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/exoplayer2/p0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c0;->f:Lcom/google/android/exoplayer2/d0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v3, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c0;->u()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/c0;->g:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/p0;-><init>(Lcom/google/android/exoplayer2/p0$a;Lcom/google/android/exoplayer2/p0$b;Lcom/google/android/exoplayer2/y0;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public a0()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c0;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/c0;->x:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v1, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/y0;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method c0(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    .line 2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/l0;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/c0;->e0(Lcom/google/android/exoplayer2/l0;Z)V

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/k0;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v4, -0x1

    if-eq p1, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v0, v3, v1, p1}, Lcom/google/android/exoplayer2/c0;->d0(Lcom/google/android/exoplayer2/k0;IZI)V

    :goto_0
    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->t:Lcom/google/android/exoplayer2/l0;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c0;->u0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/k0;->m:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    if-ltz p1, :cond_5

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0;->p()I

    move-result v1

    if-ge p1, v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c0;->r:Z

    .line 4
    iget v2, p0, Lcom/google/android/exoplayer2/c0;->p:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/c0;->p:I

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c0;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/c0;->e:Landroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    .line 8
    invoke-virtual {p1, v3, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 10
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/c0;->w:I

    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    cmp-long v1, p2, v4

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    move-wide v1, p2

    .line 12
    :goto_0
    iput-wide v1, p0, Lcom/google/android/exoplayer2/c0;->y:J

    .line 13
    iput v3, p0, Lcom/google/android/exoplayer2/c0;->x:I

    goto :goto_2

    :cond_3
    cmp-long v1, p2, v4

    if-nez v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/t;->a:Lcom/google/android/exoplayer2/y0$c;

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y0$c;->b()J

    move-result-wide v1

    goto :goto_1

    :cond_4
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/v;->a(J)J

    move-result-wide v1

    :goto_1
    move-wide v7, v1

    .line 16
    iget-object v2, p0, Lcom/google/android/exoplayer2/t;->a:Lcom/google/android/exoplayer2/y0$c;

    iget-object v3, p0, Lcom/google/android/exoplayer2/c0;->i:Lcom/google/android/exoplayer2/y0$b;

    move-object v1, v0

    move v4, p1

    move-wide v5, v7

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/y0;->j(Lcom/google/android/exoplayer2/y0$c;Lcom/google/android/exoplayer2/y0$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 18
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/c0;->y:J

    .line 19
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/y0;->b(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/c0;->x:I

    .line 20
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/c0;->f:Lcom/google/android/exoplayer2/d0;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/v;->a(J)J

    move-result-wide p2

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/d0;->a0(Lcom/google/android/exoplayer2/y0;IJ)V

    .line 21
    sget-object p1, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/c;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c0;->n0(Lcom/google/android/exoplayer2/t$b;)V

    return-void

    .line 22
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/y0;IJ)V

    throw v1
.end method

.method public getCurrentPosition()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c0;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c0;->y:J

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/k0;->n:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v1, v0, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/k0;->n:J

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/c0;->p0(Lcom/google/android/exoplayer2/source/v$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v1, v0, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/c0;->i:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/y0;->h(Ljava/lang/Object;Lcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->i:Lcom/google/android/exoplayer2/y0$b;

    iget v2, v1, Lcom/google/android/exoplayer2/source/v$a;->b:I

    iget v1, v1, Lcom/google/android/exoplayer2/source/v$a;->c:I

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/y0$b;->b(II)J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/t;->V()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c0;->l:Z

    return v0
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c0;->o:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/c0;->o:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->f:Lcom/google/android/exoplayer2/d0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/d0;->s0(Z)V

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/l;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/l;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c0;->n0(Lcom/google/android/exoplayer2/t$b;)V

    :cond_0
    return-void
.end method

.method public k()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->g:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-object v0
.end method

.method public o(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/t$a;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/t$a;-><init>(Lcom/google/android/exoplayer2/o0$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public q()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    iget v0, v0, Lcom/google/android/exoplayer2/source/v$a;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public q0(Lcom/google/android/exoplayer2/source/v;ZZ)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/c0;->k:Lcom/google/android/exoplayer2/source/v;

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/google/android/exoplayer2/c0;->b0(ZZZI)Lcom/google/android/exoplayer2/k0;

    move-result-object v3

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c0;->q:Z

    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/c0;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/c0;->p:I

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->f:Lcom/google/android/exoplayer2/d0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/d0;->O(Lcom/google/android/exoplayer2/source/v;ZZ)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    .line 6
    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/c0;->v0(Lcom/google/android/exoplayer2/k0;ZIIZ)V

    return-void
.end method

.method public r0()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayerLib/2.11.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/android/exoplayer2/util/h0;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/google/android/exoplayer2/e0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/c0;->k:Lcom/google/android/exoplayer2/source/v;

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/c0;->f:Lcom/google/android/exoplayer2/d0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/d0;->Q()V

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/c0;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7
    invoke-direct {p0, v0, v0, v0, v1}, Lcom/google/android/exoplayer2/c0;->b0(ZZZI)Lcom/google/android/exoplayer2/k0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    return-void
.end method

.method public s0(ZI)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/t;->isPlaying()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/c0;->l:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer2/c0;->m:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eq v1, v4, :cond_2

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/c0;->f:Lcom/google/android/exoplayer2/d0;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/d0;->l0(Z)V

    .line 4
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/c0;->l:Z

    if-eq v1, p1, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 5
    :goto_2
    iget v1, p0, Lcom/google/android/exoplayer2/c0;->m:I

    if-eq v1, p2, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .line 6
    :goto_3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/c0;->l:Z

    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/c0;->m:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/t;->isPlaying()Z

    move-result v11

    if-eq v0, v11, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-nez v5, :cond_6

    if-nez v8, :cond_6

    if-eqz v10, :cond_7

    .line 9
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget v7, v0, Lcom/google/android/exoplayer2/k0;->f:I

    .line 10
    new-instance v0, Lcom/google/android/exoplayer2/d;

    move-object v4, v0

    move v6, p1

    move v9, p2

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer2/d;-><init>(ZZIZIZZ)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c0;->n0(Lcom/google/android/exoplayer2/t$b;)V

    :cond_7
    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/t$a;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/t$a;->a:Lcom/google/android/exoplayer2/o0$a;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/t$a;->b()V

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/c0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public t0(Lcom/google/android/exoplayer2/l0;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/exoplayer2/l0;->a:Lcom/google/android/exoplayer2/l0;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->t:Lcom/google/android/exoplayer2/l0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/l0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/c0;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c0;->s:I

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/c0;->t:Lcom/google/android/exoplayer2/l0;

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->f:Lcom/google/android/exoplayer2/d0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/d0;->n0(Lcom/google/android/exoplayer2/l0;)V

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/n;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/n;-><init>(Lcom/google/android/exoplayer2/l0;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c0;->n0(Lcom/google/android/exoplayer2/t$b;)V

    return-void
.end method

.method public u()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c0;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/c0;->w:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v1, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c0;->i:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/y0;->h(Ljava/lang/Object;Lcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/y0$b;->c:I

    return v0
.end method

.method public w(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/c0;->s0(ZI)V

    return-void
.end method

.method public x()Lcom/google/android/exoplayer2/o0$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c0;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-object v1, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c0;->i:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/y0;->h(Ljava/lang/Object;Lcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/k0;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/k0;->b:Lcom/google/android/exoplayer2/y0;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c0;->u()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/t;->a:Lcom/google/android/exoplayer2/y0$c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0$c;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c0;->i:Lcom/google/android/exoplayer2/y0$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0$b;->k()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/c0;->v:Lcom/google/android/exoplayer2/k0;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/k0;->e:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c0;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method
