.class public final Landroidx/media2/exoplayer/external/h;
.super Landroidx/media2/exoplayer/external/a;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/h$a;
    }
.end annotation


# instance fields
.field final b:Landroidx/media2/exoplayer/external/trackselection/h;

.field final c:Landroid/os/Handler;

.field public final d:Landroidx/media2/exoplayer/external/u;

.field e:Z

.field f:I

.field g:I

.field h:Z

.field i:Z

.field public j:I

.field public k:Landroidx/media2/exoplayer/external/ad;

.field public l:Landroidx/media2/exoplayer/external/aj;

.field m:Landroidx/media2/exoplayer/external/ac;

.field n:I

.field o:I

.field p:J

.field private final q:[Landroidx/media2/exoplayer/external/ag;

.field private final r:Landroidx/media2/exoplayer/external/trackselection/g;

.field private final s:Landroid/os/Handler;

.field private final t:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Landroidx/media2/exoplayer/external/al$a;

.field private final v:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroidx/media2/exoplayer/external/source/t;

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/ag;Landroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/y;Landroidx/media2/exoplayer/external/upstream/c;Landroidx/media2/exoplayer/external/util/b;Landroid/os/Looper;)V
    .locals 13

    move-object v0, p0

    move-object v2, p1

    .line 110
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a;-><init>()V

    .line 111
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroidx/media2/exoplayer/external/util/ac;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Init "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [ExoPlayerLib/2.10.4] ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/media2/exoplayer/external/util/j;->b()V

    .line 113
    array-length v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 114
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/ag;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/h;->q:[Landroidx/media2/exoplayer/external/ag;

    .line 115
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/trackselection/g;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/h;->r:Landroidx/media2/exoplayer/external/trackselection/g;

    .line 116
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/h;->e:Z

    .line 117
    iput v3, v0, Landroidx/media2/exoplayer/external/h;->f:I

    .line 118
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/h;->y:Z

    .line 119
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/h;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    new-instance v4, Landroidx/media2/exoplayer/external/trackselection/h;

    array-length v1, v2

    new-array v1, v1, [Landroidx/media2/exoplayer/external/RendererConfiguration;

    array-length v3, v2

    new-array v3, v3, [Landroidx/media2/exoplayer/external/trackselection/e;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Landroidx/media2/exoplayer/external/trackselection/h;-><init>([Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/e;Ljava/lang/Object;)V

    iput-object v4, v0, Landroidx/media2/exoplayer/external/h;->b:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 125
    new-instance v1, Landroidx/media2/exoplayer/external/al$a;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/al$a;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/h;->u:Landroidx/media2/exoplayer/external/al$a;

    .line 126
    sget-object v1, Landroidx/media2/exoplayer/external/ad;->a:Landroidx/media2/exoplayer/external/ad;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/h;->k:Landroidx/media2/exoplayer/external/ad;

    .line 127
    sget-object v1, Landroidx/media2/exoplayer/external/aj;->e:Landroidx/media2/exoplayer/external/aj;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/h;->l:Landroidx/media2/exoplayer/external/aj;

    .line 128
    new-instance v10, Landroidx/media2/exoplayer/external/h$1;

    move-object/from16 v1, p6

    invoke-direct {v10, p0, v1}, Landroidx/media2/exoplayer/external/h$1;-><init>(Landroidx/media2/exoplayer/external/h;Landroid/os/Looper;)V

    iput-object v10, v0, Landroidx/media2/exoplayer/external/h;->c:Landroid/os/Handler;

    const-wide/16 v5, 0x0

    .line 135
    invoke-static {v5, v6, v4}, Landroidx/media2/exoplayer/external/ac;->a(JLandroidx/media2/exoplayer/external/trackselection/h;)Landroidx/media2/exoplayer/external/ac;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    .line 136
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/h;->v:Ljava/util/ArrayDeque;

    .line 137
    new-instance v12, Landroidx/media2/exoplayer/external/u;

    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/h;->e:Z

    iget v8, v0, Landroidx/media2/exoplayer/external/h;->f:I

    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/h;->y:Z

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Landroidx/media2/exoplayer/external/u;-><init>([Landroidx/media2/exoplayer/external/ag;Landroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/y;Landroidx/media2/exoplayer/external/upstream/c;ZIZLandroid/os/Handler;Landroidx/media2/exoplayer/external/util/b;)V

    iput-object v12, v0, Landroidx/media2/exoplayer/external/h;->d:Landroidx/media2/exoplayer/external/u;

    .line 149
    new-instance v1, Landroid/os/Handler;

    .line 1271
    iget-object v2, v12, Landroidx/media2/exoplayer/external/u;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 149
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/h;->s:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/source/t$a;J)J
    .locals 2

    .line 717
    invoke-static {p2, p3}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide p2

    .line 718
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->u:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    .line 719
    iget-object p1, p0, Landroidx/media2/exoplayer/external/h;->u:Landroidx/media2/exoplayer/external/al$a;

    .line 7382
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/al$a;->e:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method private a(ZZZI)Landroidx/media2/exoplayer/external/ac;
    .locals 24

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 645
    iput v3, v0, Landroidx/media2/exoplayer/external/h;->n:I

    .line 646
    iput v3, v0, Landroidx/media2/exoplayer/external/h;->o:I

    .line 647
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/h;->p:J

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/h;->c()I

    move-result v4

    iput v4, v0, Landroidx/media2/exoplayer/external/h;->n:I

    .line 650
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/h;->l()I

    move-result v4

    iput v4, v0, Landroidx/media2/exoplayer/external/h;->o:I

    .line 651
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/h;->e()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/h;->p:J

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    .line 657
    iget-object v4, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/h;->y:Z

    iget-object v6, v0, Landroidx/media2/exoplayer/external/h;->a:Landroidx/media2/exoplayer/external/al$b;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/h;->u:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/media2/exoplayer/external/ac;->a(ZLandroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object v4

    goto :goto_1

    .line 658
    :cond_3
    iget-object v4, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    :goto_1
    move-object/from16 v17, v4

    if-eqz v3, :cond_4

    goto :goto_2

    .line 659
    :cond_4
    iget-object v1, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/ac;->m:J

    :goto_2
    move-wide/from16 v22, v1

    if-eqz v3, :cond_5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    .line 660
    :cond_5
    iget-object v1, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/ac;->d:J

    :goto_3
    move-wide v10, v1

    .line 661
    new-instance v1, Landroidx/media2/exoplayer/external/ac;

    if-eqz p2, :cond_6

    .line 662
    sget-object v2, Landroidx/media2/exoplayer/external/al;->a:Landroidx/media2/exoplayer/external/al;

    goto :goto_4

    :cond_6
    iget-object v2, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    :goto_4
    move-object v6, v2

    if-eqz p3, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    .line 667
    :cond_7
    iget-object v2, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    :goto_5
    move-object v13, v2

    const/4 v14, 0x0

    if-eqz p2, :cond_8

    .line 669
    sget-object v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    goto :goto_6

    :cond_8
    iget-object v2, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/ac;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    :goto_6
    move-object v15, v2

    if-eqz p2, :cond_9

    .line 670
    iget-object v2, v0, Landroidx/media2/exoplayer/external/h;->b:Landroidx/media2/exoplayer/external/trackselection/h;

    goto :goto_7

    :cond_9
    iget-object v2, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/ac;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    :goto_7
    move-object/from16 v16, v2

    const-wide/16 v20, 0x0

    move-object v5, v1

    move-object/from16 v7, v17

    move-wide/from16 v8, v22

    move/from16 v12, p4

    move-wide/from16 v18, v22

    invoke-direct/range {v5 .. v23}, Landroidx/media2/exoplayer/external/ac;-><init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/t$a;JJILandroidx/media2/exoplayer/external/ExoPlaybackException;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/source/t$a;JJJ)V

    return-object v1
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .line 705
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->v:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 706
    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->v:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    return-void

    .line 710
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/h;->v:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 711
    iget-object p1, p0, Landroidx/media2/exoplayer/external/h;->v:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 712
    iget-object p1, p0, Landroidx/media2/exoplayer/external/h;->v:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static a(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/a$a;",
            ">;",
            "Landroidx/media2/exoplayer/external/a$b;",
            ")V"
        }
    .end annotation

    .line 810
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/a$a;

    .line 8176
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/a$a;->b:Z

    if-nez v1, :cond_0

    .line 8177
    iget-object v0, v0, Landroidx/media2/exoplayer/external/a$a;->a:Landroidx/media2/exoplayer/external/ae$b;

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/a$b;->a(Landroidx/media2/exoplayer/external/ae$b;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l()I
    .locals 2

    .line 440
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget v0, p0, Landroidx/media2/exoplayer/external/h;->o:I

    return v0

    .line 443
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private m()Z
    .locals 1

    .line 496
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/h;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private n()Z
    .locals 1

    .line 724
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/h;->g:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/af$b;)Landroidx/media2/exoplayer/external/af;
    .locals 7

    .line 430
    new-instance v6, Landroidx/media2/exoplayer/external/af;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->d:Landroidx/media2/exoplayer/external/u;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    .line 434
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/h;->c()I

    move-result v4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/h;->s:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/af;-><init>(Landroidx/media2/exoplayer/external/af$a;Landroidx/media2/exoplayer/external/af$b;Landroidx/media2/exoplayer/external/al;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public final a(IJ)V
    .locals 9

    .line 307
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    if-ltz p1, :cond_5

    .line 308
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result v1

    if-ge p1, v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    .line 311
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/h;->i:Z

    .line 312
    iget v2, p0, Landroidx/media2/exoplayer/external/h;->g:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/h;->g:I

    .line 313
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/h;->m()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    .line 317
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Landroidx/media2/exoplayer/external/h;->c:Landroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    .line 319
    invoke-virtual {p1, v3, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 327
    :cond_1
    iput p1, p0, Landroidx/media2/exoplayer/external/h;->n:I

    .line 328
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v1

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    cmp-long v1, p2, v6

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, p2

    .line 329
    :goto_0
    iput-wide v4, p0, Landroidx/media2/exoplayer/external/h;->p:J

    .line 330
    iput v3, p0, Landroidx/media2/exoplayer/external/h;->o:I

    goto :goto_2

    :cond_3
    cmp-long v1, p2, v6

    if-nez v1, :cond_4

    .line 333
    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->a:Landroidx/media2/exoplayer/external/al$b;

    .line 2648
    invoke-virtual {v0, p1, v1, v4, v5}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object v1

    .line 3228
    iget-wide v1, v1, Landroidx/media2/exoplayer/external/al$b;->i:J

    goto :goto_1

    .line 333
    :cond_4
    invoke-static {p2, p3}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v1

    :goto_1
    move-wide v7, v1

    .line 334
    iget-object v2, p0, Landroidx/media2/exoplayer/external/h;->a:Landroidx/media2/exoplayer/external/al$b;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/h;->u:Landroidx/media2/exoplayer/external/al$a;

    move-object v1, v0

    move v4, p1

    move-wide v5, v7

    .line 335
    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/al;->a(Landroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 336
    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/h;->p:J

    .line 337
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/h;->o:I

    .line 339
    :goto_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->d:Landroidx/media2/exoplayer/external/u;

    invoke-static {p2, p3}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide p2

    .line 4202
    iget-object v1, v1, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/4 v2, 0x3

    new-instance v3, Landroidx/media2/exoplayer/external/u$d;

    invoke-direct {v3, v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/u$d;-><init>(Landroidx/media2/exoplayer/external/al;IJ)V

    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4203
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 340
    sget-object p1, Landroidx/media2/exoplayer/external/j;->a:Landroidx/media2/exoplayer/external/a$b;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/a$b;)V

    return-void

    .line 309
    :cond_5
    new-instance v1, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;

    invoke-direct {v1, v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;-><init>(Landroidx/media2/exoplayer/external/al;IJ)V

    throw v1
.end method

.method public final a(Landroidx/media2/exoplayer/external/a$b;)V
    .locals 2

    .line 700
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 701
    new-instance v1, Landroidx/media2/exoplayer/external/m;

    invoke-direct {v1, v0, p1}, Landroidx/media2/exoplayer/external/m;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/a$b;)V

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Landroidx/media2/exoplayer/external/ac;ZIIZ)V
    .locals 12

    move-object v0, p0

    .line 684
    iget-object v3, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    move-object v2, p1

    .line 685
    iput-object v2, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    .line 686
    new-instance v11, Landroidx/media2/exoplayer/external/h$a;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/h;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/h;->r:Landroidx/media2/exoplayer/external/trackselection/g;

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/h;->e:Z

    move-object v1, v11

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/h$a;-><init>(Landroidx/media2/exoplayer/external/ac;Landroidx/media2/exoplayer/external/ac;Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/trackselection/g;ZIIZZ)V

    invoke-direct {p0, v11}, Landroidx/media2/exoplayer/external/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/ae$b;)V
    .locals 2

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/a$a;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/a$a;-><init>(Landroidx/media2/exoplayer/external/ae$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/t;ZZ)V
    .locals 6

    .line 227
    iput-object p1, p0, Landroidx/media2/exoplayer/external/h;->w:Landroidx/media2/exoplayer/external/source/t;

    const/4 p2, 0x1

    const/4 p3, 0x2

    .line 229
    invoke-direct {p0, p2, p2, p2, p3}, Landroidx/media2/exoplayer/external/h;->a(ZZZI)Landroidx/media2/exoplayer/external/ac;

    move-result-object v1

    .line 238
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/h;->h:Z

    .line 239
    iget p3, p0, Landroidx/media2/exoplayer/external/h;->g:I

    add-int/2addr p3, p2

    iput p3, p0, Landroidx/media2/exoplayer/external/h;->g:I

    .line 240
    iget-object p3, p0, Landroidx/media2/exoplayer/external/h;->d:Landroidx/media2/exoplayer/external/u;

    .line 2184
    iget-object p3, p3, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/4 v0, 0x0

    .line 2185
    invoke-interface {p3, v0, p2, p2, p1}, Landroidx/media2/exoplayer/external/util/i;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2186
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 241
    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/ac;ZIIZ)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 256
    :goto_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/h;->x:Z

    if-eq v0, p2, :cond_1

    .line 257
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/h;->x:Z

    .line 258
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->d:Landroidx/media2/exoplayer/external/u;

    .line 2190
    iget-object v0, v0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    invoke-interface {v0, p2}, Landroidx/media2/exoplayer/external/util/i;->a(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 260
    :cond_1
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/h;->e:Z

    if-eq p2, p1, :cond_2

    .line 261
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/h;->e:Z

    .line 262
    iget-object p2, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget p2, p2, Landroidx/media2/exoplayer/external/ac;->e:I

    .line 263
    new-instance v0, Landroidx/media2/exoplayer/external/i;

    invoke-direct {v0, p1, p2}, Landroidx/media2/exoplayer/external/i;-><init>(ZI)V

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/a$b;)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 5

    .line 414
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->e:Ljava/lang/String;

    .line 416
    invoke-static {}, Landroidx/media2/exoplayer/external/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [ExoPlayerLib/2.10.4] ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-static {}, Landroidx/media2/exoplayer/external/util/j;->b()V

    const/4 v0, 0x0

    .line 417
    iput-object v0, p0, Landroidx/media2/exoplayer/external/h;->w:Landroidx/media2/exoplayer/external/source/t;

    .line 418
    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->d:Landroidx/media2/exoplayer/external/u;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/u;->a()V

    .line 419
    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 421
    invoke-direct {p0, v0, v0, v0, v1}, Landroidx/media2/exoplayer/external/h;->a(ZZZI)Landroidx/media2/exoplayer/external/ac;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    return-void
.end method

.method public final c()I
    .locals 3

    .line 449
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget v0, p0, Landroidx/media2/exoplayer/external/h;->n:I

    return v0

    .line 452
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/h;->u:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/al$a;->c:I

    return v0
.end method

.method public final d()J
    .locals 4

    .line 459
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    .line 461
    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/h;->u:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    .line 462
    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->u:Landroidx/media2/exoplayer/external/al$a;

    iget v2, v0, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    iget v0, v0, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    invoke-virtual {v1, v2, v0}, Landroidx/media2/exoplayer/external/al$a;->c(II)J

    move-result-wide v0

    .line 463
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 465
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/h;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 3

    .line 470
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/h;->p:J

    return-wide v0

    .line 472
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 475
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/ac;->m:J

    invoke-direct {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/source/t$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()J
    .locals 6

    .line 481
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/h;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/ac;->k:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/h;->d()J

    move-result-wide v0

    return-wide v0

    .line 4523
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/h;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4524
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/h;->p:J

    return-wide v0

    .line 4526
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 4528
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/h;->c()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/h;->a:Landroidx/media2/exoplayer/external/al$b;

    const-wide/16 v3, 0x0

    .line 4648
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object v0

    .line 5235
    iget-wide v0, v0, Landroidx/media2/exoplayer/external/al$b;->j:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 4530
    :cond_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/ac;->k:J

    .line 4531
    iget-object v2, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4532
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/h;->u:Landroidx/media2/exoplayer/external/al$a;

    .line 4533
    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    move-result-object v0

    .line 4534
    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    iget v1, v1, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    .line 4535
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/al$a;->a(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    .line 4537
    iget-wide v0, v0, Landroidx/media2/exoplayer/external/al$a;->d:J

    goto :goto_0

    :cond_4
    move-wide v0, v1

    .line 4540
    :cond_5
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-direct {p0, v2, v0, v1}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/source/t$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .line 491
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/ac;->l:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .line 501
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final i()I
    .locals 1

    .line 506
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final j()J
    .locals 5

    .line 511
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/h;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/h;->u:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    .line 513
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/ac;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 514
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/h;->c()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/h;->a:Landroidx/media2/exoplayer/external/al$b;

    const-wide/16 v3, 0x0

    .line 5648
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object v0

    .line 6218
    iget-wide v0, v0, Landroidx/media2/exoplayer/external/al$b;->i:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 515
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->u:Landroidx/media2/exoplayer/external/al$a;

    .line 6382
    iget-wide v0, v0, Landroidx/media2/exoplayer/external/al$a;->e:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v0

    .line 515
    iget-object v2, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/ac;->d:J

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 517
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/h;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()Landroidx/media2/exoplayer/external/al;
    .locals 1

    .line 566
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    return-object v0
.end method
