.class final Lcom/google/android/gms/internal/ads/p4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/gms/internal/ads/kk3;
.implements Lcom/google/android/gms/internal/ads/en3;
.implements Lcom/google/android/gms/internal/ads/x5;
.implements Lcom/google/android/gms/internal/ads/b3;
.implements Lcom/google/android/gms/internal/ads/o6;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Lcom/google/android/gms/internal/ads/o4;

.field private L:J

.field private M:I

.field private N:Z

.field private O:Lcom/google/android/gms/internal/ads/zzaeg;

.field private final P:Lcom/google/android/gms/internal/ads/z2;

.field private final d:[Lcom/google/android/gms/internal/ads/t6;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/t6;",
            ">;"
        }
    .end annotation
.end field

.field private final f:[Lcom/google/android/gms/internal/ads/u6;

.field private final g:Lcom/google/android/gms/internal/ads/fn3;

.field private final h:Lcom/google/android/gms/internal/ads/hn3;

.field private final i:Lcom/google/android/gms/internal/ads/w4;

.field private final j:Lcom/google/android/gms/internal/ads/on3;

.field private final k:Lcom/google/android/gms/internal/ads/l9;

.field private final l:Landroid/os/HandlerThread;

.field private final m:Landroid/os/Looper;

.field private final n:Lcom/google/android/gms/internal/ads/o7;

.field private final o:Lcom/google/android/gms/internal/ads/m7;

.field private final p:J

.field private final q:Lcom/google/android/gms/internal/ads/c3;

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/l4;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/android/gms/internal/ads/z8;

.field private final t:Lcom/google/android/gms/internal/ads/n4;

.field private final u:Lcom/google/android/gms/internal/ads/r5;

.field private final v:Lcom/google/android/gms/internal/ads/y5;

.field private w:Lcom/google/android/gms/internal/ads/x6;

.field private x:Lcom/google/android/gms/internal/ads/b6;

.field private y:Lcom/google/android/gms/internal/ads/m4;

.field private z:Z


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/t6;Lcom/google/android/gms/internal/ads/fn3;Lcom/google/android/gms/internal/ads/hn3;Lcom/google/android/gms/internal/ads/w4;Lcom/google/android/gms/internal/ads/on3;IZLcom/google/android/gms/internal/ads/rz0;Lcom/google/android/gms/internal/ads/x6;Lcom/google/android/gms/internal/ads/z2;JZLandroid/os/Looper;Lcom/google/android/gms/internal/ads/z8;Lcom/google/android/gms/internal/ads/n4;[B)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p16

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/p4;->t:Lcom/google/android/gms/internal/ads/n4;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/p4;->g:Lcom/google/android/gms/internal/ads/fn3;

    move-object v6, p3

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/p4;->h:Lcom/google/android/gms/internal/ads/hn3;

    move-object v7, p4

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/p4;->i:Lcom/google/android/gms/internal/ads/w4;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/p4;->j:Lcom/google/android/gms/internal/ads/on3;

    const/4 v8, 0x0

    iput v8, v0, Lcom/google/android/gms/internal/ads/p4;->E:I

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/p4;->F:Z

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/p4;->w:Lcom/google/android/gms/internal/ads/x6;

    move-object/from16 v9, p10

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/p4;->P:Lcom/google/android/gms/internal/ads/z2;

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/p4;->A:Z

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/p4;->s:Lcom/google/android/gms/internal/ads/z8;

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/w4;->e()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/p4;->p:J

    .line 2
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/w4;->a()Z

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/b6;->a(Lcom/google/android/gms/internal/ads/hn3;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    new-instance v7, Lcom/google/android/gms/internal/ads/m4;

    .line 4
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/m4;-><init>(Lcom/google/android/gms/internal/ads/b6;)V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/google/android/gms/internal/ads/u6;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/p4;->f:[Lcom/google/android/gms/internal/ads/u6;

    :goto_0
    if-ge v8, v6, :cond_0

    .line 5
    aget-object v7, v1, v8

    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/t6;->S(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/p4;->f:[Lcom/google/android/gms/internal/ads/u6;

    .line 6
    aget-object v9, v1, v8

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/t6;->Z()Lcom/google/android/gms/internal/ads/u6;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/c3;

    .line 7
    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/internal/ads/c3;-><init>(Lcom/google/android/gms/internal/ads/b3;Lcom/google/android/gms/internal/ads/z8;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->r:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/IdentityHashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 10
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->e:Ljava/util/Set;

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/o7;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/o7;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    new-instance v1, Lcom/google/android/gms/internal/ads/m7;

    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/m7;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    .line 13
    invoke-virtual {p2, p0, v3}, Lcom/google/android/gms/internal/ads/fn3;->c(Lcom/google/android/gms/internal/ads/en3;Lcom/google/android/gms/internal/ads/on3;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/p4;->N:Z

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    .line 14
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/r5;

    .line 15
    invoke-direct {v2, v4, v1}, Lcom/google/android/gms/internal/ads/r5;-><init>(Lcom/google/android/gms/internal/ads/rz0;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    new-instance v2, Lcom/google/android/gms/internal/ads/y5;

    .line 16
    invoke-direct {v2, p0, v4, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Lcom/google/android/gms/internal/ads/x5;Lcom/google/android/gms/internal/ads/rz0;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/p4;->v:Lcom/google/android/gms/internal/ads/y5;

    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    .line 17
    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->l:Landroid/os/HandlerThread;

    .line 18
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 19
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->m:Landroid/os/Looper;

    .line 20
    invoke-interface {v5, v1, p0}, Lcom/google/android/gms/internal/ads/z8;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/l9;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    return-void
.end method

.method private final A(Lcom/google/android/gms/internal/ads/mk3;JJJZI)Lcom/google/android/gms/internal/ads/b6;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    .line 1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/p4;->N:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/b6;->t:J

    cmp-long v1, p2, v7

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/p4;->N:Z

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->u()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 4
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    .line 5
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/p4;->v:Lcom/google/android/gms/internal/ads/y5;

    .line 7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/y5;->c()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    if-nez v1, :cond_2

    .line 9
    sget-object v7, Lcom/google/android/gms/internal/ads/dv3;->a:Lcom/google/android/gms/internal/ads/dv3;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->p()Lcom/google/android/gms/internal/ads/dv3;

    move-result-object v7

    :goto_2
    if-nez v1, :cond_3

    .line 11
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/p4;->h:Lcom/google/android/gms/internal/ads/hn3;

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v8

    .line 13
    :goto_3
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/hn3;->d:[Lcom/google/android/gms/internal/ads/mm3;

    new-instance v10, Lcom/google/android/gms/internal/ads/ax2;

    .line 14
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/ax2;-><init>()V

    .line 15
    array-length v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    if-ge v12, v11, :cond_6

    aget-object v14, v9, v12

    if-eqz v14, :cond_5

    .line 16
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/mm3;->c(I)Lcom/google/android/gms/internal/ads/u4;

    move-result-object v14

    .line 17
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/u4;->l:Lcom/google/android/gms/internal/ads/zzaiv;

    if-nez v14, :cond_4

    new-instance v14, Lcom/google/android/gms/internal/ads/zzaiv;

    new-array v15, v3, [Lcom/google/android/gms/internal/ads/zzaiu;

    .line 18
    invoke-direct {v14, v15}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/ax2;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ax2;

    goto :goto_5

    .line 19
    :cond_4
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/ax2;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ax2;

    const/4 v13, 0x1

    :cond_5
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    if-eqz v13, :cond_7

    .line 20
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/ax2;->g()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v3

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v3

    :goto_6
    if-eqz v1, :cond_8

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 21
    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/p5;->c:J

    cmp-long v11, v9, v5

    if-eqz v11, :cond_8

    .line 22
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/p5;->b(J)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    :cond_8
    move-object v13, v3

    goto :goto_7

    .line 23
    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 24
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/dv3;->a:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/p4;->h:Lcom/google/android/gms/internal/ads/hn3;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v4

    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    goto :goto_8

    :cond_a
    move-object v13, v1

    :goto_7
    move-object v11, v7

    move-object v12, v8

    :goto_8
    if-eqz p8, :cond_b

    .line 27
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    move/from16 v3, p9

    .line 28
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/m4;->d(I)V

    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->E()J

    move-result-wide v9

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 30
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/b6;->c(Lcom/google/android/gms/internal/ads/mk3;JJJJLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    return-object v1
.end method

.method private final B()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/p4;->C([Z)V

    return-void
.end method

.method private final C([Z)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->l()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 3
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/hn3;->a(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/p4;->e:Ljava/util/Set;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    .line 4
    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/t6;->R()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v4, v5, :cond_7

    .line 5
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/hn3;->a(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 6
    aget-boolean v7, p1, v4

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    .line 7
    aget-object v8, v8, v4

    .line 8
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/p4;->K(Lcom/google/android/gms/internal/ads/t6;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/r5;->l()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 10
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v10

    if-ne v9, v10, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    .line 11
    :goto_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v10

    .line 12
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/hn3;->b:[Lcom/google/android/gms/internal/ads/v6;

    aget-object v11, v11, v4

    .line 13
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/hn3;->d:[Lcom/google/android/gms/internal/ads/mm3;

    aget-object v10, v10, v4

    .line 14
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/p4;->O(Lcom/google/android/gms/internal/ads/mm3;)[Lcom/google/android/gms/internal/ads/u4;

    move-result-object v12

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->H()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget v10, v10, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v13, 0x3

    if-ne v10, v13, :cond_4

    const/16 v21, 0x1

    goto :goto_3

    :cond_4
    const/16 v21, 0x0

    :goto_3
    if-nez v7, :cond_5

    if-eqz v21, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    iget v7, v0, Lcom/google/android/gms/internal/ads/p4;->J:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/gms/internal/ads/p4;->J:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/p4;->e:Ljava/util/Set;

    .line 16
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/o5;->c:[Lcom/google/android/gms/internal/ads/bm3;

    aget-object v6, v6, v4

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/p4;->L:J

    .line 18
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/o5;->c()J

    move-result-wide v17

    .line 19
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v19

    move-object v9, v8

    move-object v10, v11

    move-object v11, v12

    move-object v12, v6

    .line 20
    invoke-interface/range {v9 .. v20}, Lcom/google/android/gms/internal/ads/t6;->V(Lcom/google/android/gms/internal/ads/v6;[Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/bm3;JZZJJ)V

    new-instance v6, Lcom/google/android/gms/internal/ads/h4;

    .line 21
    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/h4;-><init>(Lcom/google/android/gms/internal/ads/p4;)V

    const/16 v7, 0xb

    invoke-interface {v8, v7, v6}, Lcom/google/android/gms/internal/ads/p6;->a(ILjava/lang/Object;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 22
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/c3;->e(Lcom/google/android/gms/internal/ads/t6;)V

    if-eqz v21, :cond_6

    .line 23
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/t6;->M()V

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 24
    :cond_7
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/o5;->g:Z

    return-void
.end method

.method private final D(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->j()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 7
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/b6;->g(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    if-nez v0, :cond_2

    .line 8
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/b6;->t:J

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->e()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/b6;->r:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->E()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/b6;->s:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/o5;->d:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->p()Lcom/google/android/gms/internal/ads/dv3;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/p4;->G(Lcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;)V

    :cond_4
    return-void
.end method

.method private final E()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/b6;->r:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/p4;->F(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final F(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->j()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/p4;->L:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    .line 2
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final G(Lcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->i:Lcom/google/android/gms/internal/ads/w4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/hn3;->d:[Lcom/google/android/gms/internal/ads/mm3;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/w4;->h([Lcom/google/android/gms/internal/ads/t6;Lcom/google/android/gms/internal/ads/dv3;[Lcom/google/android/gms/internal/ads/mm3;)V

    return-void
.end method

.method private final H()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/gms/internal/ads/b6;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static I(Lcom/google/android/gms/internal/ads/b6;Lcom/google/android/gms/internal/ads/m7;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/m7;->g:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static J(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/o4;ZIZLcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/p7;",
            "Lcom/google/android/gms/internal/ads/o4;",
            "ZIZ",
            "Lcom/google/android/gms/internal/ads/o7;",
            "Lcom/google/android/gms/internal/ads/m7;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/o4;->a:Lcom/google/android/gms/internal/ads/p7;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    :cond_0
    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v3

    if-ne v2, v3, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    .line 4
    :goto_0
    :try_start_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/o4;->b:I

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/o4;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/p7;->m(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/p7;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 7
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 8
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/m7;->g:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/google/android/gms/internal/ads/m7;->d:I

    const-wide/16 v3, 0x0

    move-object/from16 v11, p5

    .line 9
    invoke-virtual {v10, v2, v11, v3, v4}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v2

    .line 10
    iget v2, v2, Lcom/google/android/gms/internal/ads/o7;->q:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 12
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/ads/m7;->d:I

    .line 13
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/o4;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/p7;->m(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    .line 15
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/p4;->X(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IZLjava/lang/Object;Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/p7;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p0, v0, v8}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v0

    iget v3, v0, Lcom/google/android/gms/internal/ads/m7;->d:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/p7;->m(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method private static K(Lcom/google/android/gms/internal/ads/t6;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/t6;->T()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final L(Lcom/google/android/gms/internal/ads/q6;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/q6;->h()Z

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/q6;->a()Lcom/google/android/gms/internal/ads/p6;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/q6;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/q6;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/p6;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/q6;->i(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/q6;->i(Z)V

    .line 4
    throw v1
.end method

.method private static final M(Lcom/google/android/gms/internal/ads/t6;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/t6;->T()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/t6;->L()V

    :cond_0
    return-void
.end method

.method private static final N(Lcom/google/android/gms/internal/ads/t6;J)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/t6;->Y()V

    .line 2
    instance-of p1, p0, Lcom/google/android/gms/internal/ads/x8;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/ads/x8;

    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method private static O(Lcom/google/android/gms/internal/ads/mm3;)[Lcom/google/android/gms/internal/ads/u4;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mm3;->b()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v2, v1, [Lcom/google/android/gms/internal/ads/u4;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/mm3;->c(I)Lcom/google/android/gms/internal/ads/u4;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/p4;)Lcom/google/android/gms/internal/ads/l9;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    return-object p0
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/ads/p4;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/p4;->H:Z

    return p1
.end method

.method static X(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IZLjava/lang/Object;Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/p7;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p5, p4}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result p4

    .line 2
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/p7;->g()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    const/4 p4, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 3
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/p7;->l(ILcom/google/android/gms/internal/ads/m7;Lcom/google/android/gms/internal/ads/o7;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    const/4 p4, -0x1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p5, v4}, Lcom/google/android/gms/internal/ads/p7;->j(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p6, p4}, Lcom/google/android/gms/internal/ads/p7;->j(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic a0(Lcom/google/android/gms/internal/ads/q6;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/p4;->L(Lcom/google/android/gms/internal/ads/q6;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 2
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/s9;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final b0(Ljava/io/IOException;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaeg;->zza(Ljava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 3
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaeg;->zzd(Lcom/google/android/gms/internal/ads/ar3;)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    .line 4
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/s9;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, p2, p2}, Lcom/google/android/gms/internal/ads/p4;->m(ZZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/b6;->f(Lcom/google/android/gms/internal/ads/zzaeg;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    return-void
.end method

.method private final c()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/o5;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/o5;->a:Lcom/google/android/gms/internal/ads/lk3;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/lk3;->zzg()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    const/4 v10, 0x0

    cmp-long v1, v6, v2

    if-eqz v1, :cond_2

    .line 3
    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/internal/ads/p4;->l(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 4
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    cmp-long v2, v6, v0

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/b6;->d:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    .line 6
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/p4;->A(Lcom/google/android/gms/internal/ads/mk3;JJJZI)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    goto/16 :goto_4

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r5;->l()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 9
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/c3;->g(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/p4;->L:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 10
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->r:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->N:Z

    if-eqz v0, :cond_5

    const-wide/16 v5, -0x1

    add-long/2addr v3, v5

    iput-boolean v10, p0, Lcom/google/android/gms/internal/ads/p4;->N:Z

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 13
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 14
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v0

    iget v5, p0, Lcom/google/android/gms/internal/ads/p4;->M:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/p4;->r:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/p4;->r:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    .line 16
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/l4;

    goto :goto_2

    :cond_6
    move-object v7, v6

    :goto_2
    if-eqz v7, :cond_8

    if-ltz v0, :cond_7

    if-nez v0, :cond_8

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-gez v9, :cond_8

    :cond_7
    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/p4;->r:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    .line 17
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/l4;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->r:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->r:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/l4;

    :cond_9
    iput v5, p0, Lcom/google/android/gms/internal/ads/p4;->M:I

    .line 20
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 21
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    .line 22
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->j()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->e()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/b6;->r:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->E()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->s:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 26
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    .line 27
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/p4;->e(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    iget v1, v1, Lcom/google/android/gms/internal/ads/d6;->c:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->P:Lcom/google/android/gms/internal/ads/z2;

    .line 28
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/p4;->d(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;J)J

    move-result-wide v2

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->E()J

    move-result-wide v4

    .line 30
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/z2;->d(JJ)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/c3;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/d6;->c:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 32
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    new-instance v3, Lcom/google/android/gms/internal/ads/d6;

    iget v2, v2, Lcom/google/android/gms/internal/ads/d6;->d:F

    .line 33
    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/d6;-><init>(FF)V

    .line 34
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/c3;->b(Lcom/google/android/gms/internal/ads/d6;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 35
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/c3;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/d6;->c:F

    .line 37
    invoke-direct {p0, v0, v1, v10, v10}, Lcom/google/android/gms/internal/ads/p4;->w(Lcom/google/android/gms/internal/ads/d6;FZZ)V

    :cond_c
    return-void
.end method

.method private final declared-synchronized c0(Lcom/google/android/gms/internal/ads/jv2;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/jv2<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    const-wide/16 v0, 0x1f4

    add-long/2addr p2, v0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jv2;->zza()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 4
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p2, v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final d(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/m7;->d:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    .line 3
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/o7;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o7;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/o7;->k:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/o7;->i:J

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/wa;->C(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    .line 5
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/o7;->h:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/x2;->b(J)J

    move-result-wide p1

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v2
.end method

.method private final d0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget v1, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    if-eq v1, p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/b6;->e(I)Lcom/google/android/gms/internal/ads/b6;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    :cond_0
    return-void
.end method

.method private final e(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/m7;->d:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o7;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/o7;->k:Z

    if-eqz p2, :cond_1

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/o7;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private final e0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/m4;->c(Lcom/google/android/gms/internal/ads/b6;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/m4;->a(Lcom/google/android/gms/internal/ads/m4;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->t:Lcom/google/android/gms/internal/ads/n4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/n4;->a(Lcom/google/android/gms/internal/ads/m4;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/m4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/m4;-><init>(Lcom/google/android/gms/internal/ads/b6;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    :cond_0
    return-void
.end method

.method private final f(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/l9;->d0(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    add-long/2addr p1, p3

    .line 2
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/l9;->i0(IJ)Z

    return-void
.end method

.method private final f0(ZIZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/m4;->b(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    .line 2
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/m4;->e(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/b6;->h(ZI)Lcom/google/android/gms/internal/ads/b6;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/p4;->C:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object p3

    .line 5
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/hn3;->d:[Lcom/google/android/gms/internal/ads/mm3;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_0

    aget-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->H()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->i0()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->c()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 9
    iget p1, p1, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->h0()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    .line 11
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/l9;->A(I)Z

    return-void

    :cond_3
    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    .line 12
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/l9;->A(I)Z

    :cond_4
    return-void
.end method

.method private final g0(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 2
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/b6;->t:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/p4;->j(Lcom/google/android/gms/internal/ads/mk3;JZZ)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 4
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/b6;->t:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 5
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/b6;->d:J

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/b6;->e:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    .line 6
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/p4;->A(Lcom/google/android/gms/internal/ads/mk3;JJJZI)Lcom/google/android/gms/internal/ads/b6;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    :cond_0
    return-void
.end method

.method private final h(Lcom/google/android/gms/internal/ads/mk3;JZ)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->l()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/p4;->j(Lcom/google/android/gms/internal/ads/mk3;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final h0()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->C:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/c3;->a()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v2, v1, v0

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/p4;->K(Lcom/google/android/gms/internal/ads/t6;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/t6;->M()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final i0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c3;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, v0, v1

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/p4;->K(Lcom/google/android/gms/internal/ads/t6;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/p4;->M(Lcom/google/android/gms/internal/ads/t6;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final j(Lcom/google/android/gms/internal/ads/mk3;JZZ)J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->i0()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->C:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 2
    iget p5, p5, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/p4;->d0(I)V

    :cond_1
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 4
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object p5

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 5
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    const-wide/16 v3, 0x0

    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide p4

    add-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    const/4 p4, 0x0

    :goto_2
    if-ge p4, v1, :cond_5

    .line 8
    aget-object p5, p1, p4

    .line 9
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/ads/p4;->q(Lcom/google/android/gms/internal/ads/t6;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object p1

    if-eq p1, v2, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r5;->n()Lcom/google/android/gms/internal/ads/o5;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 12
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/r5;->o(Lcom/google/android/gms/internal/ads/o5;)Z

    .line 13
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/o5;->b(J)V

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->B()V

    :cond_7
    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 15
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/r5;->o(Lcom/google/android/gms/internal/ads/o5;)Z

    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/o5;->d:Z

    if-nez p1, :cond_8

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 16
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/p5;->a(J)Lcom/google/android/gms/internal/ads/p5;

    move-result-object p1

    iput-object p1, v2, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    goto :goto_4

    .line 17
    :cond_8
    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/o5;->e:Z

    if-eqz p1, :cond_9

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/o5;->a:Lcom/google/android/gms/internal/ads/lk3;

    .line 18
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/lk3;->n(J)J

    move-result-wide p2

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/o5;->a:Lcom/google/android/gms/internal/ads/lk3;

    iget-wide p4, p0, Lcom/google/android/gms/internal/ads/p4;->p:J

    sub-long p4, p2, p4

    .line 19
    invoke-interface {p1, p4, p5, v0}, Lcom/google/android/gms/internal/ads/lk3;->q(JZ)V

    .line 20
    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/p4;->l(J)V

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->x()V

    goto :goto_5

    .line 22
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r5;->p()V

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/p4;->l(J)V

    .line 25
    :goto_5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/p4;->D(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    .line 26
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/l9;->A(I)Z

    return-wide p2
.end method

.method private final l(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 3
    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/p4;->L:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/c3;->d(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 5
    aget-object v1, p1, v0

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/p4;->K(Lcom/google/android/gms/internal/ads/t6;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/p4;->L:J

    .line 7
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/t6;->d0(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hn3;->d:[Lcom/google/android/gms/internal/ads/mm3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object p1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final m(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/p4;->G:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/gms/internal/ads/p4;->n(ZZZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/m4;->b(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->i:Lcom/google/android/gms/internal/ads/w4;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/w4;->b()V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/p4;->d0(I)V

    return-void
.end method

.method private final n(ZZZZ)V
    .locals 30

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/l9;->d0(I)V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/p4;->O:Lcom/google/android/gms/internal/ads/zzaeg;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/p4;->C:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c3;->c()V

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/p4;->L:J

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    const/4 v6, 0x0

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v2, :cond_0

    .line 3
    aget-object v0, v5, v6

    .line 4
    :try_start_0
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/p4;->q(Lcom/google/android/gms/internal/ads/t6;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v8, "Disable failed."

    .line 5
    invoke-static {v7, v8, v0}, Lcom/google/android/gms/internal/ads/s9;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 6
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_2

    .line 7
    aget-object v0, v5, v6

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/p4;->e:Ljava/util/Set;

    .line 8
    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/t6;->R()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    .line 10
    invoke-static {v7, v0, v8}, Lcom/google/android/gms/internal/ads/s9;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 11
    :cond_2
    iput v4, v1, Lcom/google/android/gms/internal/ads/p4;->J:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 12
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    .line 13
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/p4;->I(Lcom/google/android/gms/internal/ads/b6;Lcom/google/android/gms/internal/ads/m7;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    .line 15
    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 16
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    goto :goto_6

    .line 17
    :cond_4
    :goto_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 18
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/b6;->d:J

    :goto_6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_6

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/p4;->K:Lcom/google/android/gms/internal/ads/o4;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 20
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/p4;->o(Lcom/google/android/gms/internal/ads/p7;)Landroid/util/Pair;

    move-result-object v0

    .line 21
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/mk3;

    .line 22
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move-object/from16 v18, v2

    move-wide/from16 v26, v5

    move-wide v8, v9

    goto :goto_8

    :cond_5
    move-object/from16 v18, v2

    move-wide/from16 v26, v5

    move-wide v8, v9

    goto :goto_7

    :cond_6
    move-object/from16 v18, v2

    move-wide/from16 v26, v5

    move-wide v8, v7

    :goto_7
    const/4 v0, 0x0

    :goto_8
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r5;->p()V

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/p4;->D:Z

    new-instance v2, Lcom/google/android/gms/internal/ads/b6;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 25
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget v12, v4, Lcom/google/android/gms/internal/ads/b6;->f:I

    if-eqz p4, :cond_7

    goto :goto_9

    .line 26
    :cond_7
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    :goto_9
    move-object v13, v3

    if-eqz v0, :cond_8

    .line 27
    sget-object v3, Lcom/google/android/gms/internal/ads/dv3;->a:Lcom/google/android/gms/internal/ads/dv3;

    goto :goto_a

    :cond_8
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    :goto_a
    move-object v15, v3

    if-eqz v0, :cond_9

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/p4;->h:Lcom/google/android/gms/internal/ads/hn3;

    goto :goto_b

    .line 28
    :cond_9
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    :goto_b
    move-object/from16 v16, v3

    if-eqz v0, :cond_a

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    goto :goto_c

    :cond_a
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    :goto_c
    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    const/4 v14, 0x0

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    move/from16 v19, v3

    iget v3, v0, Lcom/google/android/gms/internal/ads/b6;->n:I

    move/from16 v20, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    move-object/from16 v21, v0

    const-wide/16 v24, 0x0

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/p4;->I:Z

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object v5, v2

    move-object/from16 v7, v18

    move-wide/from16 v10, v26

    move-wide/from16 v22, v26

    invoke-direct/range {v5 .. v29}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    if-eqz p3, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/p4;->v:Lcom/google/android/gms/internal/ads/y5;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->g()V

    :cond_b
    return-void
.end method

.method private final o(Lcom/google/android/gms/internal/ads/p7;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/p7;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/ads/mk3;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/b6;->b()Lcom/google/android/gms/internal/ads/mk3;

    move-result-object p1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->F:Z

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/p7;->e(Z)I

    move-result v6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 4
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/p7;->m(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 5
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/gms/internal/ads/r5;->s(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/mk3;

    move-result-object v3

    .line 7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    .line 8
    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    iget p1, v3, Lcom/google/android/gms/internal/ads/ar3;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    iget v4, v3, Lcom/google/android/gms/internal/ads/ar3;->b:I

    .line 9
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/m7;->c(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/m7;->i()J

    goto :goto_0

    :cond_1
    move-wide v1, v4

    .line 11
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final p(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/p7;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->r:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->r:Ljava/util/ArrayList;

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p4;->r:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/l4;

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/l4;->d:Ljava/lang/Object;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/x2;->b(J)J

    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method private final q(Lcom/google/android/gms/internal/ads/t6;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p4;->K(Lcom/google/android/gms/internal/ads/t6;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/c3;->f(Lcom/google/android/gms/internal/ads/t6;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p4;->M(Lcom/google/android/gms/internal/ads/t6;)V

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/t6;->c0()V

    iget p1, p0, Lcom/google/android/gms/internal/ads/p4;->J:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/p4;->J:I

    return-void
.end method

.method private final r()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/p5;->e:J

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/o5;->d:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    const/4 v3, 0x1

    :cond_2
    :goto_0
    return v3
.end method

.method private final s(Lcom/google/android/gms/internal/ads/p7;Z)V
    .locals 28

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/p4;->K:Lcom/google/android/gms/internal/ads/o4;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    iget v4, v11, Lcom/google/android/gms/internal/ads/p4;->E:I

    iget-boolean v10, v11, Lcom/google/android/gms/internal/ads/p4;->F:Z

    iget-object v13, v11, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    iget-object v14, v11, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v1

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/b6;->b()Lcom/google/android/gms/internal/ads/mk3;

    move-result-object v0

    move-object v8, v0

    move-object v15, v11

    move-wide/from16 v13, v16

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    goto/16 :goto_11

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    .line 3
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 4
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/p4;->I(Lcom/google/android/gms/internal/ads/b6;Lcom/google/android/gms/internal/ads/m7;)Z

    move-result v19

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v19, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/b6;->d:J

    :goto_1
    move-wide/from16 v23, v5

    if-eqz v8, :cond_6

    const/4 v5, 0x1

    move-object v6, v1

    move-object/from16 v1, p1

    move-object v2, v8

    const/4 v11, 0x1

    move v3, v5

    const/4 v7, -0x1

    move v5, v10

    move-object v11, v6

    move-object v6, v13

    move-object/from16 v21, v9

    const/4 v9, -0x1

    move-object v7, v14

    .line 8
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/p4;->J(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/o4;ZIZLcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/p7;->e(Z)I

    move-result v1

    move v5, v1

    move-wide/from16 v1, v23

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_4

    .line 10
    :cond_3
    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/o4;->c:J

    cmp-long v4, v2, v16

    if-nez v4, :cond_4

    .line 11
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 12
    invoke-virtual {v12, v1, v14}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v1

    iget v5, v1, Lcom/google/android/gms/internal/ads/m7;->d:I

    move-wide/from16 v1, v23

    const/4 v3, 0x0

    goto :goto_2

    .line 13
    :cond_4
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v5, -0x1

    .line 15
    :goto_2
    iget v4, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    move v6, v3

    const/4 v3, 0x0

    :goto_4
    move v10, v4

    move v4, v5

    move/from16 v22, v6

    const-wide/16 v7, 0x0

    :goto_5
    move-object/from16 v27, v15

    move v15, v3

    move-object/from16 v3, v27

    goto/16 :goto_a

    :cond_6
    move-object v11, v1

    move-object/from16 v21, v9

    const/4 v9, -0x1

    .line 16
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/p7;->e(Z)I

    move-result v1

    :goto_6
    move v4, v1

    move-object v3, v15

    move-wide/from16 v1, v23

    const-wide/16 v7, 0x0

    :goto_7
    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    goto/16 :goto_a

    .line 18
    :cond_7
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v9, :cond_9

    .line 19
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    move-object v1, v13

    move-object v2, v14

    move v3, v4

    move v4, v10

    move-object v5, v15

    move-object/from16 v7, p1

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/p4;->X(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IZLjava/lang/Object;Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/p7;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 21
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/p7;->e(Z)I

    move-result v1

    const/4 v3, 0x1

    goto :goto_8

    .line 22
    :cond_8
    invoke-virtual {v12, v1, v14}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/m7;->d:I

    const/4 v3, 0x0

    :goto_8
    move v4, v1

    move-wide/from16 v1, v23

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    goto :goto_5

    :cond_9
    cmp-long v1, v23, v16

    if-nez v1, :cond_a

    .line 23
    invoke-virtual {v12, v15, v14}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/m7;->d:I

    goto :goto_6

    :cond_a
    if-eqz v19, :cond_c

    .line 24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v14}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    .line 25
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget v2, v14, Lcom/google/android/gms/internal/ads/m7;->d:I

    const-wide/16 v7, 0x0

    .line 26
    invoke-virtual {v1, v2, v13, v7, v8}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v1

    .line 27
    iget v1, v1, Lcom/google/android/gms/internal/ads/o7;->q:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 29
    invoke-virtual {v12, v15, v14}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v1

    iget v4, v1, Lcom/google/android/gms/internal/ads/m7;->d:I

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    move-wide/from16 v5, v23

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/p7;->m(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 31
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 32
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_9

    :cond_b
    move-wide/from16 v1, v23

    :goto_9
    move-object v3, v15

    const/4 v4, -0x1

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x1

    goto :goto_a

    :cond_c
    const-wide/16 v7, 0x0

    move-object v3, v15

    move-wide/from16 v1, v23

    const/4 v4, -0x1

    goto/16 :goto_7

    :goto_a
    if-eq v4, v9, :cond_d

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/p7;->m(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 34
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 35
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v4, v1

    move-wide/from16 v1, v16

    goto :goto_b

    :cond_d
    move-wide v4, v1

    :goto_b
    move-object/from16 v6, v21

    .line 36
    invoke-virtual {v6, v12, v3, v4, v5}, Lcom/google/android/gms/internal/ads/r5;->s(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/mk3;

    move-result-object v6

    iget v13, v6, Lcom/google/android/gms/internal/ads/ar3;->e:I

    if-eq v13, v9, :cond_f

    .line 37
    iget v13, v11, Lcom/google/android/gms/internal/ads/ar3;->e:I

    if-eq v13, v9, :cond_e

    iget v7, v6, Lcom/google/android/gms/internal/ads/ar3;->b:I

    if-lt v7, v13, :cond_e

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v7, 0x1

    .line 38
    :goto_d
    iget-object v8, v11, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 39
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v13

    if-nez v13, :cond_10

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    .line 40
    :goto_e
    invoke-virtual {v12, v3, v14}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    if-eqz v8, :cond_12

    if-nez v19, :cond_12

    cmp-long v3, v23, v1

    if-nez v3, :cond_12

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v3

    if-eqz v3, :cond_11

    iget v3, v6, Lcom/google/android/gms/internal/ads/ar3;->b:I

    .line 41
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/m7;->j(I)Z

    .line 42
    :cond_11
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v3

    if-eqz v3, :cond_12

    iget v3, v11, Lcom/google/android/gms/internal/ads/ar3;->b:I

    .line 43
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/m7;->j(I)Z

    :cond_12
    const/4 v3, 0x1

    if-eq v3, v7, :cond_13

    goto :goto_f

    :cond_13
    move-object v6, v11

    .line 44
    :goto_f
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 45
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 46
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    goto :goto_10

    .line 47
    :cond_14
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    invoke-virtual {v12, v0, v14}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    .line 48
    iget v0, v6, Lcom/google/android/gms/internal/ads/ar3;->c:I

    iget v4, v6, Lcom/google/android/gms/internal/ads/ar3;->b:I

    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/m7;->c(I)I

    move-result v4

    if-ne v0, v4, :cond_15

    .line 49
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/m7;->i()J

    :cond_15
    const-wide/16 v4, 0x0

    :cond_16
    :goto_10
    move-wide v13, v1

    move-object v8, v6

    move v2, v10

    move v3, v15

    move/from16 v7, v22

    move-object/from16 v15, p0

    move-wide v10, v4

    const/4 v5, 0x1

    .line 50
    :goto_11
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 51
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    .line 52
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    cmp-long v4, v10, v0

    if-eqz v4, :cond_17

    goto :goto_12

    :cond_17
    const/16 v19, 0x0

    goto :goto_13

    :cond_18
    :goto_12
    const/16 v19, 0x1

    :goto_13
    const/16 v20, 0x3

    if-eqz v3, :cond_1a

    :try_start_0
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 53
    iget v0, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    if-eq v0, v5, :cond_19

    const/4 v3, 0x4

    .line 54
    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/ads/p4;->d0(I)V

    goto :goto_14

    :cond_19
    const/4 v3, 0x4

    :goto_14
    const/4 v4, 0x0

    .line 55
    invoke-direct {v15, v4, v4, v4, v5}, Lcom/google/android/gms/internal/ads/p4;->n(ZZZZ)V

    goto :goto_16

    :catchall_0
    move-exception v0

    move-wide/from16 v25, v13

    :goto_15
    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1f

    :cond_1a
    const/4 v3, 0x4

    const/4 v4, 0x0

    :goto_16
    if-nez v19, :cond_21

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/p4;->L:J

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->l()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    const-wide/high16 v21, -0x8000000000000000L

    if-nez v0, :cond_1b

    move-wide/from16 v25, v13

    const-wide/16 v5, 0x0

    goto :goto_19

    .line 57
    :cond_1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v23

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/o5;->d:Z

    if-nez v2, :cond_1c

    move-wide/from16 v25, v13

    move-wide/from16 v5, v23

    goto :goto_19

    :cond_1c
    move-wide/from16 v5, v23

    const/4 v2, 0x0

    :goto_17
    iget-object v9, v15, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v25, v13

    const/4 v13, 0x2

    if-ge v2, v13, :cond_20

    .line 58
    :try_start_1
    aget-object v9, v9, v2

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/p4;->K(Lcom/google/android/gms/internal/ads/t6;)Z

    move-result v9

    if-eqz v9, :cond_1f

    iget-object v9, v15, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    aget-object v9, v9, v2

    .line 59
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/t6;->a0()Lcom/google/android/gms/internal/ads/bm3;

    move-result-object v9

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/o5;->c:[Lcom/google/android/gms/internal/ads/bm3;

    aget-object v13, v13, v2

    if-eq v9, v13, :cond_1d

    goto :goto_18

    :cond_1d
    iget-object v9, v15, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    .line 60
    aget-object v9, v9, v2

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/t6;->W()J

    move-result-wide v13

    cmp-long v9, v13, v21

    if-nez v9, :cond_1e

    move-wide/from16 v5, v21

    goto :goto_19

    .line 61
    :cond_1e
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1f
    :goto_18
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v13, v25

    goto :goto_17

    :catchall_1
    move-exception v0

    goto :goto_15

    :cond_20
    :goto_19
    move-object/from16 v2, p1

    const/4 v9, 0x4

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v14, 0x0

    .line 62
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/r5;->q(Lcom/google/android/gms/internal/ads/p7;JJ)Z

    move-result v0

    if-nez v0, :cond_24

    .line 63
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/ads/p4;->g0(Z)V

    goto :goto_1b

    :cond_21
    move-wide/from16 v25, v13

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    :goto_1a
    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 66
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 67
    invoke-virtual {v1, v12, v3}, Lcom/google/android/gms/internal/ads/r5;->r(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/p5;)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->r()V

    :cond_22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    goto :goto_1a

    .line 69
    :cond_23
    invoke-direct {v15, v8, v10, v11, v2}, Lcom/google/android/gms/internal/ads/p4;->h(Lcom/google/android/gms/internal/ads/mk3;JZ)J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v10, v0

    .line 70
    :cond_24
    :goto_1b
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 71
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    if-eq v9, v7, :cond_25

    move-wide/from16 v6, v16

    goto :goto_1c

    :cond_25
    move-wide v6, v10

    :goto_1c
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/p4;->t(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;J)V

    if-nez v19, :cond_26

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 72
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/b6;->d:J

    cmp-long v2, v25, v0

    if-eqz v2, :cond_29

    :cond_26
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 73
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 74
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    if-eqz v19, :cond_27

    if-eqz p2, :cond_27

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/m7;->g:Z

    if-nez v0, :cond_27

    goto :goto_1d

    :cond_27
    const/4 v9, 0x0

    :goto_1d
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 77
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/b6;->e:J

    .line 78
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    const/16 v18, 0x4

    goto :goto_1e

    :cond_28
    const/16 v18, 0x3

    :goto_1e
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v10

    move-wide v7, v5

    move-wide/from16 v5, v25

    move/from16 v10, v18

    .line 79
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/p4;->A(Lcom/google/android/gms/internal/ads/mk3;JJJZI)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 80
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->u()V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 81
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-direct {v15, v12, v0}, Lcom/google/android/gms/internal/ads/p4;->p(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/p7;)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 82
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/b6;->d(Lcom/google/android/gms/internal/ads/p7;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v0

    if-nez v0, :cond_2a

    iput-object v14, v15, Lcom/google/android/gms/internal/ads/p4;->K:Lcom/google/android/gms/internal/ads/o4;

    .line 84
    :cond_2a
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/ads/p4;->D(Z)V

    return-void

    :catchall_2
    move-exception v0

    .line 85
    :goto_1f
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 86
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    if-eq v9, v7, :cond_2b

    move-wide/from16 v6, v16

    goto :goto_20

    :cond_2b
    move-wide v6, v10

    :goto_20
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/p4;->t(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;J)V

    if-nez v19, :cond_2c

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 87
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/b6;->d:J

    cmp-long v3, v25, v1

    if-eqz v3, :cond_2f

    :cond_2c
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 88
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 89
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    if-eqz v19, :cond_2d

    if-eqz p2, :cond_2d

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    .line 91
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/m7;->g:Z

    if-nez v1, :cond_2d

    goto :goto_21

    :cond_2d
    const/4 v9, 0x0

    :goto_21
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 92
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/b6;->e:J

    .line 93
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2e

    const/16 v18, 0x4

    goto :goto_22

    :cond_2e
    const/16 v18, 0x3

    :goto_22
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v10

    move-wide v7, v5

    move-wide/from16 v5, v25

    move/from16 v10, v18

    .line 94
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/p4;->A(Lcom/google/android/gms/internal/ads/mk3;JJJZI)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 95
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->u()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 96
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-direct {v15, v12, v1}, Lcom/google/android/gms/internal/ads/p4;->p(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/p7;)V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 97
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/b6;->d(Lcom/google/android/gms/internal/ads/p7;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v1

    if-nez v1, :cond_30

    iput-object v14, v15, Lcom/google/android/gms/internal/ads/p4;->K:Lcom/google/android/gms/internal/ads/o4;

    .line 99
    :cond_30
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/ads/p4;->D(Z)V

    .line 100
    throw v0
.end method

.method private final t(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;J)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/p4;->e(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/m7;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->P:Lcom/google/android/gms/internal/ads/z2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/o7;->m:Lcom/google/android/gms/internal/ads/g5;

    sget v4, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/z2;->a(Lcom/google/android/gms/internal/ads/g5;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p5, v0

    if-eqz v4, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/p4;->P:Lcom/google/android/gms/internal/ads/z2;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 6
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/gms/internal/ads/p4;->d(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 7
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/z2;->b(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/o7;->e:Ljava/lang/Object;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result p2

    if-nez p2, :cond_2

    .line 10
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/m7;->d:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    .line 11
    invoke-virtual {p3, p2, p4, v2, v3}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object p2

    .line 12
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/o7;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->P:Lcom/google/android/gms/internal/ads/z2;

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/z2;->b(J)V

    :cond_3
    return-void

    .line 15
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c3;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/d6;->c:F

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    iget p3, p2, Lcom/google/android/gms/internal/ads/d6;->c:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/c3;->b(Lcom/google/android/gms/internal/ads/d6;)V

    :cond_5
    return-void
.end method

.method private final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/p5;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->A:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/p4;->B:Z

    return-void
.end method

.method private final v(Lcom/google/android/gms/internal/ads/d6;Z)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/d6;->c:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/p4;->w(Lcom/google/android/gms/internal/ads/d6;FZZ)V

    return-void
.end method

.method private final w(Lcom/google/android/gms/internal/ads/d6;FZZ)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/m4;->b(I)V

    :cond_0
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    new-instance v13, Lcom/google/android/gms/internal/ads/b6;

    move-object v1, v13

    iget-object v2, v14, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v3, v14, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v4, v14, Lcom/google/android/gms/internal/ads/b6;->d:J

    iget-wide v6, v14, Lcom/google/android/gms/internal/ads/b6;->e:J

    iget v8, v14, Lcom/google/android/gms/internal/ads/b6;->f:I

    iget-object v9, v14, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-boolean v10, v14, Lcom/google/android/gms/internal/ads/b6;->h:Z

    iget-object v11, v14, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v12, v14, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    move-object/from16 p3, v13

    iget-object v13, v14, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    move-object/from16 v0, p3

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    move-object/from16 p4, v1

    move-object v1, v14

    move-object v14, v0

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/b6;->m:Z

    move v15, v0

    iget v0, v1, Lcom/google/android/gms/internal/ads/b6;->n:I

    move/from16 v16, v0

    move-object v0, v2

    move-object/from16 v26, v3

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/b6;->r:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/b6;->s:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/b6;->t:J

    move-wide/from16 v22, v2

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/b6;->p:Z

    move/from16 v24, v2

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/b6;->q:Z

    move/from16 v25, v1

    move-object/from16 v17, p1

    move-object/from16 v1, p4

    move-object v2, v0

    move-object/from16 v3, v26

    .line 2
    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    :cond_1
    move-object/from16 v1, p1

    .line 3
    iget v2, v1, Lcom/google/android/gms/internal/ads/d6;->c:F

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v4

    .line 5
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/hn3;->d:[Lcom/google/android/gms/internal/ads/mm3;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    :goto_2
    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 6
    aget-object v4, v2, v3

    if-eqz v4, :cond_4

    .line 7
    iget v5, v1, Lcom/google/android/gms/internal/ads/d6;->c:F

    move/from16 v6, p2

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/t6;->b0(FF)V

    goto :goto_3

    :cond_4
    move/from16 v6, p2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private final x()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->j()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->f()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->F(J)J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/p4;->L:J

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v3

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/p4;->L:J

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/p5;->b:J

    :goto_0
    sub-long/2addr v1, v3

    move-wide v4, v1

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/p4;->i:Lcom/google/android/gms/internal/ads/w4;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c3;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v0

    iget v8, v0, Lcom/google/android/gms/internal/ads/d6;->c:F

    .line 11
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/w4;->g(JJF)Z

    move-result v0

    .line 12
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->j()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/p4;->L:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/o5;->i(J)V

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p4;->z()V

    return-void
.end method

.method private final y()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r5;->j()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->f()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final z()V
    .locals 30

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->j()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/p4;->D:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/o5;->a:Lcom/google/android/gms/internal/ads/lk3;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/lk3;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v14, 0x1

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 3
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/b6;->h:Z

    if-eq v14, v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/ads/b6;

    move-object v5, v2

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/b6;->d:J

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/b6;->e:J

    iget v12, v1, Lcom/google/android/gms/internal/ads/b6;->f:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    move-object/from16 v18, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/b6;->m:Z

    move/from16 v19, v3

    iget v3, v1, Lcom/google/android/gms/internal/ads/b6;->n:I

    move/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    move-object/from16 v21, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/b6;->r:J

    move-wide/from16 v22, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/b6;->s:J

    move-wide/from16 v24, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/b6;->t:J

    move-wide/from16 v26, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/b6;->p:Z

    move/from16 v28, v3

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/b6;->q:Z

    move/from16 v29, v1

    .line 4
    invoke-direct/range {v5 .. v29}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    :cond_2
    return-void
.end method


# virtual methods
.method public final R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/l9;->a(I)Lcom/google/android/gms/internal/ads/k9;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/k9;->zza()V

    return-void
.end method

.method public final S(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/l9;->g0(III)Lcom/google/android/gms/internal/ads/k9;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/k9;->zza()V

    return-void
.end method

.method public final T(Lcom/google/android/gms/internal/ads/p7;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    new-instance v1, Lcom/google/android/gms/internal/ads/o4;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/o4;-><init>(Lcom/google/android/gms/internal/ads/p7;IJ)V

    const/4 p1, 0x3

    .line 2
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/l9;->f0(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/k9;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/k9;->zza()V

    return-void
.end method

.method public final U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/l9;->a(I)Lcom/google/android/gms/internal/ads/k9;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/k9;->zza()V

    return-void
.end method

.method public final declared-synchronized V()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/4 v1, 0x7

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/l9;->A(I)Z

    new-instance v0, Lcom/google/android/gms/internal/ads/f4;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/f4;-><init>(Lcom/google/android/gms/internal/ads/p4;)V

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->c0(Lcom/google/android/gms/internal/ads/jv2;J)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final W()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->m:Landroid/os/Looper;

    return-object v0
.end method

.method final synthetic Y()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->z:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final Z(Ljava/util/List;IJLcom/google/android/gms/internal/ads/em3;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/w5;",
            ">;IJ",
            "Lcom/google/android/gms/internal/ads/em3;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    new-instance v9, Lcom/google/android/gms/internal/ads/i4;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/i4;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/em3;IJLcom/google/android/gms/internal/ads/k4;[B)V

    const/16 p1, 0x11

    .line 2
    invoke-interface {v0, p1, v9}, Lcom/google/android/gms/internal/ads/l9;->f0(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/k9;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/k9;->zza()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/d6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/l9;->f0(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/k9;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/k9;->zza()V

    return-void
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/q6;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/16 v1, 0xe

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/l9;->f0(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/k9;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/k9;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/q6;->i(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/lk3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/l9;->f0(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/k9;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/k9;->zza()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 48

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 1
    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/4 v15, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    .line 2
    :pswitch_0
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/p4;->g0(Z)V

    goto/16 :goto_41

    .line 3
    :pswitch_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v14, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/p4;->I:Z

    if-eq v1, v2, :cond_70

    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/p4;->I:Z

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 4
    iget v3, v2, Lcom/google/android/gms/internal/ads/b6;->f:I

    if-nez v1, :cond_2

    if-eq v3, v9, :cond_2

    if-ne v3, v14, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    .line 6
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/l9;->A(I)Z

    goto/16 :goto_41

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/b6;->i(Z)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    goto/16 :goto_41

    .line 8
    :pswitch_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/p4;->A:Z

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->u()V

    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/p4;->B:Z

    if-eqz v1, :cond_70

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->l()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    if-eq v1, v2, :cond_70

    .line 11
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/p4;->g0(Z)V

    .line 12
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/p4;->D(Z)V

    goto/16 :goto_41

    .line 13
    :pswitch_3
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->v:Lcom/google/android/gms/internal/ads/y5;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->h()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v1

    .line 15
    invoke-direct {v11, v1, v14}, Lcom/google/android/gms/internal/ads/p4;->s(Lcom/google/android/gms/internal/ads/p7;Z)V

    goto/16 :goto_41

    .line 16
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/em3;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    .line 17
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/m4;->b(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->v:Lcom/google/android/gms/internal/ads/y5;

    .line 18
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/y5;->n(Lcom/google/android/gms/internal/ads/em3;)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v1

    .line 19
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/p4;->s(Lcom/google/android/gms/internal/ads/p7;Z)V

    goto/16 :goto_41

    .line 20
    :pswitch_5
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v3, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/em3;

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    .line 21
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/m4;->b(I)V

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/p4;->v:Lcom/google/android/gms/internal/ads/y5;

    .line 22
    invoke-virtual {v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/y5;->l(IILcom/google/android/gms/internal/ads/em3;)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v1

    .line 23
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/p4;->s(Lcom/google/android/gms/internal/ads/p7;Z)V

    goto/16 :goto_41

    .line 24
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/j4;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    .line 25
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/m4;->b(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->v:Lcom/google/android/gms/internal/ads/y5;

    .line 26
    iget v1, v1, Lcom/google/android/gms/internal/ads/j4;->a:I

    .line 27
    invoke-virtual {v2, v13, v13, v13, v15}, Lcom/google/android/gms/internal/ads/y5;->m(IIILcom/google/android/gms/internal/ads/em3;)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v1

    .line 28
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/p4;->s(Lcom/google/android/gms/internal/ads/p7;Z)V

    goto/16 :goto_41

    .line 29
    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/i4;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    .line 30
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/m4;->b(I)V

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/p4;->v:Lcom/google/android/gms/internal/ads/y5;

    if-ne v1, v3, :cond_4

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/y5;->d()I

    move-result v1

    :cond_4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/i4;->a(Lcom/google/android/gms/internal/ads/i4;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/i4;->d(Lcom/google/android/gms/internal/ads/i4;)Lcom/google/android/gms/internal/ads/em3;

    move-result-object v2

    .line 32
    invoke-virtual {v4, v1, v3, v2}, Lcom/google/android/gms/internal/ads/y5;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/em3;)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v1

    .line 33
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/p4;->s(Lcom/google/android/gms/internal/ads/p7;Z)V

    goto/16 :goto_41

    .line 34
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/i4;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    .line 35
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/m4;->b(I)V

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/i4;->b(Lcom/google/android/gms/internal/ads/i4;)I

    move-result v2

    if-eq v2, v3, :cond_5

    new-instance v2, Lcom/google/android/gms/internal/ads/o4;

    new-instance v3, Lcom/google/android/gms/internal/ads/r6;

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/i4;->a(Lcom/google/android/gms/internal/ads/i4;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/i4;->d(Lcom/google/android/gms/internal/ads/i4;)Lcom/google/android/gms/internal/ads/em3;

    move-result-object v5

    invoke-direct {v3, v4, v5, v15}, Lcom/google/android/gms/internal/ads/r6;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/em3;[B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/i4;->b(Lcom/google/android/gms/internal/ads/i4;)I

    move-result v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/i4;->c(Lcom/google/android/gms/internal/ads/i4;)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/o4;-><init>(Lcom/google/android/gms/internal/ads/p7;IJ)V

    iput-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->K:Lcom/google/android/gms/internal/ads/o4;

    :cond_5
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->v:Lcom/google/android/gms/internal/ads/y5;

    .line 38
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/i4;->a(Lcom/google/android/gms/internal/ads/i4;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/i4;->d(Lcom/google/android/gms/internal/ads/i4;)Lcom/google/android/gms/internal/ads/em3;

    move-result-object v1

    .line 39
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/y5;->j(Ljava/util/List;Lcom/google/android/gms/internal/ads/em3;)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v1

    .line 40
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/p4;->s(Lcom/google/android/gms/internal/ads/p7;Z)V

    goto/16 :goto_41

    .line 41
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/d6;

    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/p4;->v(Lcom/google/android/gms/internal/ads/d6;Z)V

    goto/16 :goto_41

    .line 42
    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/q6;

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/q6;->f()Landroid/os/Looper;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v2, "TAG"

    const-string v3, "Trying to send message on a dead thread."

    .line 45
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/q6;->i(Z)V

    goto/16 :goto_41

    :cond_6
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->s:Lcom/google/android/gms/internal/ads/z8;

    .line 47
    invoke-interface {v3, v2, v15}, Lcom/google/android/gms/internal/ads/z8;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/l9;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/g4;

    invoke-direct {v3, v11, v1}, Lcom/google/android/gms/internal/ads/g4;-><init>(Lcom/google/android/gms/internal/ads/p4;Lcom/google/android/gms/internal/ads/q6;)V

    .line 48
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/l9;->j0(Ljava/lang/Runnable;)Z

    goto/16 :goto_41

    .line 49
    :pswitch_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/q6;

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/q6;->f()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->m:Landroid/os/Looper;

    if-ne v2, v3, :cond_8

    .line 51
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/p4;->L(Lcom/google/android/gms/internal/ads/q6;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 52
    iget v1, v1, Lcom/google/android/gms/internal/ads/b6;->f:I

    if-eq v1, v10, :cond_7

    if-ne v1, v7, :cond_70

    :cond_7
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    .line 53
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/l9;->A(I)Z

    goto/16 :goto_41

    :cond_8
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/16 v3, 0xf

    .line 54
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/l9;->f0(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/k9;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/k9;->zza()V

    goto/16 :goto_41

    .line 55
    :pswitch_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/p4;->G:Z

    if-eq v3, v2, :cond_b

    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/p4;->G:Z

    if-nez v2, :cond_b

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v7, :cond_b

    .line 56
    aget-object v4, v2, v3

    .line 57
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/p4;->K(Lcom/google/android/gms/internal/ads/t6;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/p4;->e:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 58
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/t6;->R()V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    if-eqz v1, :cond_70

    monitor-enter p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzey; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzak; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzgj; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    invoke-virtual {v1, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 61
    monitor-exit p0

    goto/16 :goto_41

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 62
    :pswitch_d
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/p4;->F:Z

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 63
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/r5;->e(Lcom/google/android/gms/internal/ads/p7;Z)Z

    move-result v1

    if-nez v1, :cond_d

    .line 64
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/p4;->g0(Z)V

    .line 65
    :cond_d
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/p4;->D(Z)V

    goto/16 :goto_41

    .line 66
    :pswitch_e
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v11, Lcom/google/android/gms/internal/ads/p4;->E:I

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 67
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/r5;->d(Lcom/google/android/gms/internal/ads/p7;I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 68
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/p4;->g0(Z)V

    .line 69
    :cond_e
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/p4;->D(Z)V

    goto/16 :goto_41

    .line 70
    :pswitch_f
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/c3;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/d6;->c:F

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/r5;->l()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v3

    const/4 v4, 0x1

    :goto_6
    if-eqz v2, :cond_70

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/o5;->d:Z

    if-eqz v5, :cond_70

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 74
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v2, v1, v5}, Lcom/google/android/gms/internal/ads/o5;->j(FLcom/google/android/gms/internal/ads/p7;)Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v6

    if-eqz v6, :cond_12

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/hn3;->d:[Lcom/google/android/gms/internal/ads/mm3;

    .line 75
    array-length v8, v8

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/hn3;->d:[Lcom/google/android/gms/internal/ads/mm3;

    array-length v10, v10

    if-eq v8, v10, :cond_f

    goto :goto_9

    :cond_f
    const/4 v8, 0x0

    .line 76
    :goto_7
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/hn3;->d:[Lcom/google/android/gms/internal/ads/mm3;

    .line 77
    array-length v10, v10

    if-ge v8, v10, :cond_10

    .line 78
    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/internal/ads/hn3;->b(Lcom/google/android/gms/internal/ads/hn3;I)Z

    move-result v10

    if-eqz v10, :cond_12

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_10
    if-ne v2, v3, :cond_11

    const/4 v5, 0x0

    goto :goto_8

    :cond_11
    const/4 v5, 0x1

    :goto_8
    and-int/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    goto :goto_6

    :cond_12
    :goto_9
    if-eqz v4, :cond_18

    .line 79
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v10

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 81
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/r5;->o(Lcom/google/android/gms/internal/ads/o5;)Z

    move-result v19

    new-array v8, v7, [Z

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 82
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/b6;->t:J

    move-object v15, v10

    move-object/from16 v16, v5

    move-wide/from16 v17, v1

    move-object/from16 v20, v8

    .line 83
    invoke-virtual/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/o5;->l(Lcom/google/android/gms/internal/ads/hn3;JZ[Z)J

    move-result-wide v5

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 84
    iget v2, v1, Lcom/google/android/gms/internal/ads/b6;->f:I

    if-eq v2, v9, :cond_13

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/b6;->t:J

    cmp-long v3, v5, v1

    if-eqz v3, :cond_13

    const/4 v15, 0x1

    goto :goto_a

    :cond_13
    const/4 v15, 0x0

    :goto_a
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 85
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/b6;->d:J

    move-object/from16 v16, v8

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/b6;->e:J

    const/16 v17, 0x5

    move-object/from16 v1, p0

    move-wide/from16 v19, v3

    move-wide v3, v5

    move-wide v12, v5

    move-wide/from16 v5, v19

    const/4 v14, 0x2

    move v9, v15

    move-object/from16 v22, v10

    move/from16 v10, v17

    .line 86
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/p4;->A(Lcom/google/android/gms/internal/ads/mk3;JJJZI)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    if-eqz v15, :cond_14

    .line 87
    invoke-direct {v11, v12, v13}, Lcom/google/android/gms/internal/ads/p4;->l(J)V

    :cond_14
    new-array v1, v14, [Z

    const/4 v2, 0x0

    :goto_b
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    if-ge v2, v14, :cond_17

    aget-object v3, v3, v2

    .line 88
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/p4;->K(Lcom/google/android/gms/internal/ads/t6;)Z

    move-result v4

    aput-boolean v4, v1, v2

    move-object/from16 v5, v22

    .line 89
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/o5;->c:[Lcom/google/android/gms/internal/ads/bm3;

    aget-object v6, v6, v2

    if-eqz v4, :cond_16

    .line 90
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/t6;->a0()Lcom/google/android/gms/internal/ads/bm3;

    move-result-object v4

    if-eq v6, v4, :cond_15

    .line 91
    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/p4;->q(Lcom/google/android/gms/internal/ads/t6;)V

    goto :goto_c

    :cond_15
    aget-boolean v4, v16, v2

    if-eqz v4, :cond_16

    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/p4;->L:J

    .line 92
    invoke-interface {v3, v6, v7}, Lcom/google/android/gms/internal/ads/t6;->d0(J)V

    :cond_16
    :goto_c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v22, v5

    goto :goto_b

    .line 93
    :cond_17
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/p4;->C([Z)V

    goto :goto_d

    :cond_18
    const/4 v14, 0x2

    .line 94
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 95
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/r5;->o(Lcom/google/android/gms/internal/ads/o5;)Z

    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/o5;->d:Z

    if-eqz v1, :cond_19

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 96
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/p5;->b:J

    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/p4;->L:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 97
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v2, v5, v3, v4, v1}, Lcom/google/android/gms/internal/ads/o5;->k(Lcom/google/android/gms/internal/ads/hn3;JZ)J

    :cond_19
    :goto_d
    const/4 v1, 0x1

    .line 99
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/p4;->D(Z)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 100
    iget v1, v1, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v12, 0x4

    if-eq v1, v12, :cond_70

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->x()V

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->c()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    .line 103
    invoke-interface {v1, v14}, Lcom/google/android/gms/internal/ads/l9;->A(I)Z

    goto/16 :goto_41

    .line 104
    :pswitch_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/lk3;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 105
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/r5;->f(Lcom/google/android/gms/internal/ads/lk3;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/p4;->L:J

    .line 106
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/r5;->g(J)V

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->x()V

    goto/16 :goto_41

    .line 108
    :pswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/lk3;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 109
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/r5;->f(Lcom/google/android/gms/internal/ads/lk3;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 110
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->j()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/c3;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/d6;->c:F

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 112
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/o5;->g(FLcom/google/android/gms/internal/ads/p7;)V

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->p()Lcom/google/android/gms/internal/ads/dv3;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v3

    .line 114
    invoke-direct {v11, v2, v3}, Lcom/google/android/gms/internal/ads/p4;->G(Lcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 115
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    .line 116
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/p5;->b:J

    invoke-direct {v11, v2, v3}, Lcom/google/android/gms/internal/ads/p4;->l(J)V

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->B()V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 118
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/p5;->b:J

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/b6;->d:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide v3, v7

    .line 119
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/p4;->A(Lcom/google/android/gms/internal/ads/mk3;JJJZI)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 120
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->x()V

    goto/16 :goto_41

    :pswitch_12
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 121
    invoke-direct {v11, v2, v1, v2, v1}, Lcom/google/android/gms/internal/ads/p4;->n(ZZZZ)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->i:Lcom/google/android/gms/internal/ads/w4;

    .line 122
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/w4;->c()V

    .line 123
    invoke-direct {v11, v2}, Lcom/google/android/gms/internal/ads/p4;->d0(I)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->l:Landroid/os/HandlerThread;

    .line 124
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzey; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzak; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzgj; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/p4;->z:Z

    .line 125
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit p0

    return v2

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :pswitch_13
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 127
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->m(ZZ)V

    goto/16 :goto_41

    .line 128
    :pswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/x6;

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->w:Lcom/google/android/gms/internal/ads/x6;

    goto/16 :goto_41

    .line 129
    :pswitch_15
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/d6;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 130
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/c3;->b(Lcom/google/android/gms/internal/ads/d6;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/c3;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->v(Lcom/google/android/gms/internal/ads/d6;Z)V

    goto/16 :goto_41

    :pswitch_16
    const/4 v12, 0x4

    const/4 v14, 0x2

    .line 132
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/o4;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    const/4 v3, 0x1

    .line 133
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/m4;->b(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 134
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    const/4 v4, 0x1

    iget v5, v11, Lcom/google/android/gms/internal/ads/p4;->E:I

    iget-boolean v6, v11, Lcom/google/android/gms/internal/ads/p4;->F:Z

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/p4;->n:Lcom/google/android/gms/internal/ads/o7;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    move-object v3, v1

    .line 135
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/p4;->J(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/o4;ZIZLcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1b

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 136
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 137
    invoke-direct {v11, v5}, Lcom/google/android/gms/internal/ads/p4;->o(Lcom/google/android/gms/internal/ads/p7;)Landroid/util/Pair;

    move-result-object v5

    .line 138
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/mk3;

    .line 139
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 140
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v5

    const/4 v9, 0x1

    xor-int/2addr v5, v9

    move v9, v5

    move-wide/from16 v14, v16

    move-wide/from16 v46, v7

    move-object v8, v6

    :goto_e
    move-wide/from16 v5, v46

    goto :goto_11

    .line 141
    :cond_1b
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 142
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 143
    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/o4;->c:J

    cmp-long v6, v14, v16

    if-nez v6, :cond_1c

    move-wide/from16 v14, v16

    goto :goto_f

    :cond_1c
    move-wide v14, v7

    :goto_f
    iget-object v6, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 144
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 145
    invoke-virtual {v6, v9, v5, v7, v8}, Lcom/google/android/gms/internal/ads/r5;->s(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/mk3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 146
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    iget v7, v5, Lcom/google/android/gms/internal/ads/ar3;->b:I

    .line 147
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/m7;->c(I)I

    move-result v6

    iget v7, v5, Lcom/google/android/gms/internal/ads/ar3;->c:I

    if-ne v6, v7, :cond_1d

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/p4;->o:Lcom/google/android/gms/internal/ads/m7;

    .line 148
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/m7;->i()J

    :cond_1d
    move-object v8, v5

    const/4 v9, 0x1

    move-wide v5, v3

    goto :goto_11

    :cond_1e
    move-wide/from16 v19, v14

    .line 149
    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/o4;->c:J
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzey; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzak; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzgj; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    cmp-long v6, v13, v16

    if-nez v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_10

    :cond_1f
    const/4 v6, 0x0

    :goto_10
    move v9, v6

    move-wide/from16 v14, v19

    move-wide/from16 v46, v7

    move-object v8, v5

    goto :goto_e

    .line 150
    :goto_11
    :try_start_5
    iget-object v7, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 151
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v7

    if-eqz v7, :cond_20

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->K:Lcom/google/android/gms/internal/ads/o4;

    goto :goto_12

    :cond_20
    if-nez v2, :cond_22

    .line 152
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 153
    iget v1, v1, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_21

    .line 154
    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/ads/p4;->d0(I)V

    :cond_21
    const/4 v1, 0x0

    .line 155
    invoke-direct {v11, v1, v2, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->n(ZZZZ)V

    :goto_12
    move-wide v12, v5

    goto/16 :goto_17

    :cond_22
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 156
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 157
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/o5;->d:Z

    if-eqz v2, :cond_23

    cmp-long v2, v5, v3

    if-eqz v2, :cond_23

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/o5;->a:Lcom/google/android/gms/internal/ads/lk3;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->w:Lcom/google/android/gms/internal/ads/x6;

    .line 158
    invoke-interface {v1, v5, v6, v2}, Lcom/google/android/gms/internal/ads/lk3;->m(JLcom/google/android/gms/internal/ads/x6;)J

    move-result-wide v1

    goto :goto_13

    :cond_23
    move-wide v1, v5

    .line 159
    :goto_13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v3

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/b6;->t:J

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v12

    cmp-long v7, v3, v12

    if-nez v7, :cond_26

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget v4, v3, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_24

    if-ne v4, v10, :cond_26

    .line 160
    :cond_24
    iget-wide v12, v3, Lcom/google/android/gms/internal/ads/b6;->t:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v10, 0x2

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v12

    move-wide v5, v14

    move-wide v7, v12

    .line 161
    :try_start_6
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/p4;->A(Lcom/google/android/gms/internal/ads/mk3;JJJZI)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    :goto_14
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzey; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzak; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzgj; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_41

    :cond_25
    move-wide v1, v5

    :cond_26
    :try_start_7
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 162
    iget v3, v3, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_27

    const/4 v3, 0x1

    goto :goto_15

    :cond_27
    const/4 v3, 0x0

    .line 163
    :goto_15
    invoke-direct {v11, v8, v1, v2, v3}, Lcom/google/android/gms/internal/ads/p4;->h(Lcom/google/android/gms/internal/ads/mk3;JZ)J

    move-result-wide v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    cmp-long v1, v5, v12

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_16

    :cond_28
    const/4 v1, 0x0

    :goto_16
    or-int/2addr v9, v1

    :try_start_8
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 164
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v8

    move-wide v6, v14

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/p4;->t(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_17
    const/4 v10, 0x2

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v12

    move-wide v5, v14

    move-wide v7, v12

    .line 165
    :try_start_9
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/p4;->A(Lcom/google/android/gms/internal/ads/mk3;JJJZI)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-wide/from16 v46, v12

    move-object v12, v1

    move v13, v9

    move-wide/from16 v9, v46

    goto :goto_18

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v12, v1

    move v13, v9

    move-wide v9, v5

    :goto_18
    const/16 v16, 0x2

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v9

    move-wide v5, v14

    move-wide v7, v9

    move v9, v13

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/p4;->A(Lcom/google/android/gms/internal/ads/mk3;JJJZI)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 166
    throw v12

    .line 167
    :pswitch_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 168
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->v:Lcom/google/android/gms/internal/ads/y5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->c()Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_25

    .line 169
    :cond_29
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/p4;->L:J

    .line 170
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/r5;->g(J)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 171
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->h()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/p4;->L:J

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 172
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/r5;->i(JLcom/google/android/gms/internal/ads/b6;)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->f:[Lcom/google/android/gms/internal/ads/u6;

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/p4;->g:Lcom/google/android/gms/internal/ads/fn3;

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/p4;->i:Lcom/google/android/gms/internal/ads/w4;

    .line 173
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/w4;->f()Lcom/google/android/gms/internal/ads/tn3;

    move-result-object v25

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/p4;->v:Lcom/google/android/gms/internal/ads/y5;

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/p4;->h:Lcom/google/android/gms/internal/ads/hn3;

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v1

    move-object/from16 v28, v6

    .line 174
    invoke-virtual/range {v22 .. v28}, Lcom/google/android/gms/internal/ads/r5;->u([Lcom/google/android/gms/internal/ads/u6;Lcom/google/android/gms/internal/ads/fn3;Lcom/google/android/gms/internal/ads/tn3;Lcom/google/android/gms/internal/ads/y5;Lcom/google/android/gms/internal/ads/p5;Lcom/google/android/gms/internal/ads/hn3;)Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/o5;->a:Lcom/google/android/gms/internal/ads/lk3;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/p5;->b:J

    .line 175
    invoke-interface {v3, v11, v4, v5}, Lcom/google/android/gms/internal/ads/lk3;->l(Lcom/google/android/gms/internal/ads/kk3;J)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 176
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    if-ne v1, v2, :cond_2a

    .line 177
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->c()J

    move-result-wide v1

    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->l(J)V

    :cond_2a
    const/4 v1, 0x0

    .line 178
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/p4;->D(Z)V

    :cond_2b
    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/p4;->D:Z

    if-eqz v1, :cond_2c

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->y()Z

    move-result v1

    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/p4;->D:Z

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->z()V

    goto :goto_19

    .line 181
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->x()V

    .line 182
    :goto_19
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 183
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->l()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    if-nez v1, :cond_2d

    goto/16 :goto_20

    .line 184
    :cond_2d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    if-eqz v2, :cond_36

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/p4;->B:Z

    if-eqz v2, :cond_2e

    goto/16 :goto_1d

    .line 185
    :cond_2e
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 186
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r5;->l()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    .line 187
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/o5;->d:Z

    if-eqz v3, :cond_3a

    const/4 v3, 0x0

    :goto_1a
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    const/4 v5, 0x2

    if-ge v3, v5, :cond_30

    .line 188
    aget-object v4, v4, v3

    .line 189
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/o5;->c:[Lcom/google/android/gms/internal/ads/bm3;

    aget-object v5, v5, v3

    .line 190
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/t6;->a0()Lcom/google/android/gms/internal/ads/bm3;

    move-result-object v6

    if-ne v6, v5, :cond_3a

    if-eqz v5, :cond_2f

    .line 191
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/t6;->P()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 192
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    .line 193
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/p5;->f:Z

    goto/16 :goto_20

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    .line 194
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/o5;->d:Z

    if-nez v2, :cond_31

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/p4;->L:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/o5;->c()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3a

    :cond_31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 196
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r5;->m()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v3

    .line 198
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/o5;->d:Z

    if-eqz v4, :cond_33

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/o5;->a:Lcom/google/android/gms/internal/ads/lk3;

    .line 199
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/lk3;->zzg()J

    move-result-wide v4

    cmp-long v6, v4, v16

    if-eqz v6, :cond_33

    .line 200
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->c()J

    move-result-wide v1

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    const/4 v4, 0x0

    :goto_1b
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3a

    .line 201
    aget-object v5, v3, v4

    .line 202
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/t6;->a0()Lcom/google/android/gms/internal/ads/bm3;

    move-result-object v6

    if-eqz v6, :cond_32

    .line 203
    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->N(Lcom/google/android/gms/internal/ads/t6;J)V

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_33
    const/4 v4, 0x0

    :goto_1c
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3a

    .line 204
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/hn3;->a(I)Z

    move-result v5

    .line 205
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/hn3;->a(I)Z

    move-result v6

    if-eqz v5, :cond_35

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    .line 206
    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/t6;->N()Z

    move-result v5

    if-nez v5, :cond_35

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/p4;->f:[Lcom/google/android/gms/internal/ads/u6;

    .line 207
    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/u6;->O()I

    .line 208
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/hn3;->b:[Lcom/google/android/gms/internal/ads/v6;

    aget-object v5, v5, v4

    .line 209
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/hn3;->b:[Lcom/google/android/gms/internal/ads/v6;

    aget-object v9, v9, v4

    if-eqz v6, :cond_34

    .line 210
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/v6;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    :cond_34
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    .line 211
    aget-object v5, v5, v4

    .line 212
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->c()J

    move-result-wide v13

    .line 213
    invoke-static {v5, v13, v14}, Lcom/google/android/gms/internal/ads/p4;->N(Lcom/google/android/gms/internal/ads/t6;J)V

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 214
    :cond_36
    :goto_1d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 215
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/p5;->i:Z

    if-nez v2, :cond_37

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/p4;->B:Z

    if-eqz v2, :cond_3a

    :cond_37
    const/4 v2, 0x0

    :goto_1e
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    const/4 v4, 0x2

    if-ge v2, v4, :cond_3a

    .line 216
    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/o5;->c:[Lcom/google/android/gms/internal/ads/bm3;

    .line 217
    aget-object v4, v4, v2

    if-eqz v4, :cond_39

    .line 218
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/t6;->a0()Lcom/google/android/gms/internal/ads/bm3;

    move-result-object v5

    if-ne v5, v4, :cond_39

    .line 219
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/t6;->P()Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 220
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/p5;->e:J

    cmp-long v6, v4, v16

    if-eqz v6, :cond_38

    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v6, v4, v19

    if-eqz v6, :cond_38

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v4

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 221
    iget-wide v13, v6, Lcom/google/android/gms/internal/ads/p5;->e:J

    add-long/2addr v4, v13

    goto :goto_1f

    :cond_38
    move-wide/from16 v4, v16

    .line 222
    :goto_1f
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/p4;->N(Lcom/google/android/gms/internal/ads/t6;J)V

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 223
    :cond_3a
    :goto_20
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 224
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->l()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    if-eq v2, v1, :cond_41

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/o5;->g:Z

    if-eqz v1, :cond_3b

    goto :goto_23

    .line 226
    :cond_3b
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 227
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->l()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_21
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    const/4 v6, 0x2

    if-ge v3, v6, :cond_40

    .line 229
    aget-object v5, v5, v3

    .line 230
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/p4;->K(Lcom/google/android/gms/internal/ads/t6;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 231
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/t6;->a0()Lcom/google/android/gms/internal/ads/bm3;

    move-result-object v6

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/o5;->c:[Lcom/google/android/gms/internal/ads/bm3;

    aget-object v9, v9, v3

    .line 232
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/hn3;->a(I)Z

    move-result v12

    if-eqz v12, :cond_3c

    if-ne v6, v9, :cond_3c

    goto :goto_22

    .line 233
    :cond_3c
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/t6;->N()Z

    move-result v6

    if-nez v6, :cond_3d

    .line 234
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/hn3;->d:[Lcom/google/android/gms/internal/ads/mm3;

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/p4;->O(Lcom/google/android/gms/internal/ads/mm3;)[Lcom/google/android/gms/internal/ads/u4;

    move-result-object v23

    .line 235
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/o5;->c:[Lcom/google/android/gms/internal/ads/bm3;

    aget-object v24, v6, v3

    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->c()J

    move-result-wide v25

    .line 237
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v27

    move-object/from16 v22, v5

    .line 238
    invoke-interface/range {v22 .. v28}, Lcom/google/android/gms/internal/ads/t6;->X([Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/bm3;JJ)V

    goto :goto_22

    .line 239
    :cond_3d
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/t6;->G()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 240
    invoke-direct {v11, v5}, Lcom/google/android/gms/internal/ads/p4;->q(Lcom/google/android/gms/internal/ads/t6;)V

    goto :goto_22

    :cond_3e
    const/4 v4, 0x1

    :cond_3f
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_40
    if-nez v4, :cond_41

    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->B()V

    :cond_41
    :goto_23
    const/4 v1, 0x0

    .line 242
    :goto_24
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->H()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/p4;->B:Z

    if-nez v2, :cond_43

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 243
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    if-eqz v2, :cond_43

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/p4;->L:J

    .line 244
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->c()J

    move-result-wide v5

    cmp-long v9, v3, v5

    if-ltz v9, :cond_43

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/o5;->g:Z

    if-eqz v2, :cond_43

    if-eqz v1, :cond_42

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->e0()V

    :cond_42
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 246
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v12

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 247
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->n()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v14

    .line 248
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/p5;->b:J

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/p5;->c:J

    const/4 v9, 0x1

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v22, v3

    move-wide v3, v5

    move-wide/from16 v24, v5

    move-wide/from16 v5, v22

    move-wide/from16 v29, v7

    move-wide/from16 v7, v24

    const/4 v13, 0x3

    move/from16 v10, v19

    .line 249
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/p4;->A(Lcom/google/android/gms/internal/ads/mk3;JJJZI)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 250
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/p4;->t(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;J)V

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->u()V

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->c()V

    move-wide/from16 v7, v29

    const/4 v1, 0x1

    const/4 v10, 0x3

    goto :goto_24

    :cond_43
    :goto_25
    move-wide/from16 v29, v7

    const/4 v13, 0x3

    .line 253
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 254
    iget v1, v1, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_69

    const/4 v2, 0x4

    if-ne v1, v2, :cond_44

    goto/16 :goto_3b

    .line 255
    :cond_44
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 256
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    const-wide/16 v2, 0xa

    if-nez v1, :cond_45

    move-wide/from16 v4, v29

    .line 257
    invoke-direct {v11, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/p4;->f(JJ)V

    goto/16 :goto_41

    :cond_45
    move-wide/from16 v4, v29

    const-string v6, "doSomeWork"

    .line 258
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/ua;->a(Ljava/lang/String;)V

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->c()V

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/o5;->d:Z

    const-wide/16 v7, 0x3e8

    if-eqz v6, :cond_4d

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    mul-long v9, v9, v7

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/o5;->a:Lcom/google/android/gms/internal/ads/lk3;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 261
    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/b6;->t:J

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/p4;->p:J

    sub-long/2addr v7, v2

    const/4 v2, 0x0

    invoke-interface {v6, v7, v8, v2}, Lcom/google/android/gms/internal/ads/lk3;->q(JZ)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    :goto_26
    iget-object v7, v11, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    const/4 v8, 0x2

    if-ge v6, v8, :cond_4e

    aget-object v7, v7, v6

    .line 262
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/p4;->K(Lcom/google/android/gms/internal/ads/t6;)Z

    move-result v12

    if-nez v12, :cond_46

    goto :goto_2c

    :cond_46
    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/p4;->L:J

    .line 263
    invoke-interface {v7, v13, v14, v9, v10}, Lcom/google/android/gms/internal/ads/t6;->U(JJ)V

    if-eqz v3, :cond_47

    .line 264
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/t6;->G()Z

    move-result v3

    if-eqz v3, :cond_47

    const/4 v3, 0x1

    goto :goto_27

    :cond_47
    const/4 v3, 0x0

    :goto_27
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/o5;->c:[Lcom/google/android/gms/internal/ads/bm3;

    aget-object v13, v13, v6

    .line 265
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/t6;->a0()Lcom/google/android/gms/internal/ads/bm3;

    move-result-object v14

    if-ne v13, v14, :cond_48

    .line 266
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/t6;->P()Z

    move-result v24

    if-eqz v24, :cond_48

    const/16 v24, 0x1

    goto :goto_28

    :cond_48
    const/16 v24, 0x0

    :goto_28
    if-ne v13, v14, :cond_4a

    if-nez v24, :cond_4a

    .line 267
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/t6;->J()Z

    move-result v13

    if-nez v13, :cond_4a

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/t6;->G()Z

    move-result v13

    if-eqz v13, :cond_49

    goto :goto_29

    :cond_49
    const/4 v13, 0x0

    goto :goto_2a

    :cond_4a
    :goto_29
    const/4 v13, 0x1

    :goto_2a
    if-eqz v2, :cond_4b

    if-eqz v13, :cond_4b

    const/4 v2, 0x1

    goto :goto_2b

    :cond_4b
    const/4 v2, 0x0

    :goto_2b
    if-nez v13, :cond_4c

    .line 268
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/t6;->K()V

    :cond_4c
    :goto_2c
    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x3

    goto :goto_26

    .line 269
    :cond_4d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/o5;->a:Lcom/google/android/gms/internal/ads/lk3;

    .line 270
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/lk3;->c()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 271
    :cond_4e
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 272
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/p5;->e:J

    if-eqz v3, :cond_51

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/o5;->d:Z

    if-eqz v3, :cond_51

    cmp-long v3, v6, v16

    if-eqz v3, :cond_4f

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 273
    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/b6;->t:J

    cmp-long v3, v6, v9

    if-gtz v3, :cond_51

    :cond_4f
    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/p4;->B:Z

    if-eqz v3, :cond_50

    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/google/android/gms/internal/ads/p4;->B:Z

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 274
    iget v6, v6, Lcom/google/android/gms/internal/ads/b6;->n:I

    const/4 v7, 0x5

    invoke-direct {v11, v3, v6, v3, v7}, Lcom/google/android/gms/internal/ads/p4;->f0(ZIZI)V

    :cond_50
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 275
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/p5;->i:Z

    if-eqz v3, :cond_51

    const/4 v3, 0x4

    .line 276
    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/p4;->d0(I)V

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->i0()V

    goto/16 :goto_35

    .line 278
    :cond_51
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 279
    iget v6, v3, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_58

    iget v7, v11, Lcom/google/android/gms/internal/ads/p4;->J:I

    if-nez v7, :cond_53

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->r()Z

    move-result v3

    if-eqz v3, :cond_58

    :cond_52
    :goto_2d
    const/4 v2, 0x3

    goto/16 :goto_30

    :cond_53
    if-nez v2, :cond_54

    goto/16 :goto_31

    .line 281
    :cond_54
    iget-boolean v7, v3, Lcom/google/android/gms/internal/ads/b6;->h:Z

    if-eqz v7, :cond_52

    .line 282
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    invoke-direct {v11, v3, v7}, Lcom/google/android/gms/internal/ads/p4;->e(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->P:Lcom/google/android/gms/internal/ads/z2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/z2;->e()J

    move-result-wide v16

    :cond_55
    move-wide/from16 v29, v16

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 283
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/r5;->j()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v3

    .line 284
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/o5;->d()Z

    move-result v7

    if-eqz v7, :cond_56

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/p5;->i:Z

    if-eqz v7, :cond_56

    const/4 v7, 0x1

    goto :goto_2e

    :cond_56
    const/4 v7, 0x0

    .line 285
    :goto_2e
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v8

    if-eqz v8, :cond_57

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/o5;->d:Z

    if-nez v3, :cond_57

    const/4 v3, 0x1

    goto :goto_2f

    :cond_57
    const/4 v3, 0x0

    :goto_2f
    if-nez v7, :cond_52

    if-nez v3, :cond_52

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->i:Lcom/google/android/gms/internal/ads/w4;

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->E()J

    move-result-wide v25

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/p4;->q:Lcom/google/android/gms/internal/ads/c3;

    .line 287
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/c3;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v7

    iget v7, v7, Lcom/google/android/gms/internal/ads/d6;->c:F

    iget-boolean v8, v11, Lcom/google/android/gms/internal/ads/p4;->C:Z

    move-object/from16 v24, v3

    move/from16 v27, v7

    move/from16 v28, v8

    .line 288
    invoke-interface/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/w4;->d(JFZJ)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_2d

    .line 289
    :goto_30
    invoke-direct {v11, v2}, Lcom/google/android/gms/internal/ads/p4;->d0(I)V

    iput-object v15, v11, Lcom/google/android/gms/internal/ads/p4;->O:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->H()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 291
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->h0()V

    goto :goto_35

    :cond_58
    :goto_31
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 292
    iget v3, v3, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_5d

    iget v3, v11, Lcom/google/android/gms/internal/ads/p4;->J:I

    if-nez v3, :cond_59

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->r()Z

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_32

    :cond_59
    if-nez v2, :cond_5d

    .line 294
    :goto_32
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->H()Z

    move-result v2

    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/p4;->C:Z

    const/4 v2, 0x2

    .line 295
    invoke-direct {v11, v2}, Lcom/google/android/gms/internal/ads/p4;->d0(I)V

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/p4;->C:Z

    if-eqz v3, :cond_5c

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 296
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/r5;->k()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v3

    :goto_33
    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/o5;->q()Lcom/google/android/gms/internal/ads/hn3;

    move-result-object v6

    .line 297
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/hn3;->d:[Lcom/google/android/gms/internal/ads/mm3;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_34
    if-ge v8, v7, :cond_5a

    aget-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    :cond_5a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v3

    goto :goto_33

    :cond_5b
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->P:Lcom/google/android/gms/internal/ads/z2;

    .line 298
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/z2;->c()V

    .line 299
    :cond_5c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->i0()V

    .line 300
    :cond_5d
    :goto_35
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 301
    iget v3, v3, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v2, 0x2

    if-ne v3, v2, :cond_61

    const/4 v3, 0x0

    :goto_36
    iget-object v6, v11, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    if-ge v3, v2, :cond_5f

    aget-object v6, v6, v3

    .line 302
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/p4;->K(Lcom/google/android/gms/internal/ads/t6;)Z

    move-result v6

    if-eqz v6, :cond_5e

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    aget-object v6, v6, v3

    .line 303
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/t6;->a0()Lcom/google/android/gms/internal/ads/bm3;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/o5;->c:[Lcom/google/android/gms/internal/ads/bm3;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_5e

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/p4;->d:[Lcom/google/android/gms/internal/ads/t6;

    aget-object v6, v6, v3

    .line 304
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/t6;->K()V

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x2

    goto :goto_36

    :cond_5f
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 305
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/b6;->h:Z

    if-nez v3, :cond_61

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/b6;->s:J

    const-wide/32 v8, 0x7a120

    cmp-long v1, v6, v8

    if-gez v1, :cond_61

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->y()Z

    move-result v1

    if-nez v1, :cond_60

    goto :goto_37

    .line 307
    :cond_60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    .line 308
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_61
    :goto_37
    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/p4;->I:Z

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 310
    iget-boolean v6, v3, Lcom/google/android/gms/internal/ads/b6;->p:Z

    if-eq v1, v6, :cond_62

    .line 311
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/b6;->i(Z)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 312
    :cond_62
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->H()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget v1, v1, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_64

    :cond_63
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    iget v1, v1, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_66

    :cond_64
    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/p4;->I:Z

    if-eqz v1, :cond_65

    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/p4;->H:Z

    if-eqz v1, :cond_65

    const/4 v1, 0x1

    const/16 v18, 0x0

    goto :goto_38

    :cond_65
    const-wide/16 v1, 0xa

    .line 313
    invoke-direct {v11, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->f(JJ)V

    const/4 v1, 0x1

    const/16 v18, 0x1

    :goto_38
    xor-int/lit8 v2, v18, 0x1

    goto :goto_3a

    :cond_66
    iget v2, v11, Lcom/google/android/gms/internal/ads/p4;->J:I

    if-eqz v2, :cond_67

    const/4 v2, 0x4

    if-eq v1, v2, :cond_67

    const-wide/16 v1, 0x3e8

    .line 314
    invoke-direct {v11, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->f(JJ)V

    goto :goto_39

    :cond_67
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/4 v2, 0x2

    .line 315
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/l9;->d0(I)V

    :goto_39
    const/4 v2, 0x0

    .line 316
    :goto_3a
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 317
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/b6;->q:Z

    if-eq v3, v2, :cond_68

    new-instance v3, Lcom/google/android/gms/internal/ads/b6;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/b6;->d:J

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/b6;->e:J

    iget v10, v1, Lcom/google/android/gms/internal/ads/b6;->f:I

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/b6;->h:Z

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    move/from16 v16, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    move-object/from16 v17, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    move-object/from16 v19, v2

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/b6;->m:Z

    move/from16 v20, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/b6;->n:I

    move/from16 v36, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/b6;->r:J

    move-wide/from16 v38, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/b6;->s:J

    move-wide/from16 v40, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/b6;->t:J

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/b6;->p:Z

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move/from16 v28, v10

    move-object/from16 v29, v12

    move/from16 v30, v13

    move-object/from16 v33, v17

    move-object/from16 v34, v19

    move/from16 v35, v20

    move-object/from16 v37, v2

    move-wide/from16 v42, v14

    move/from16 v44, v1

    move/from16 v45, v16

    .line 318
    invoke-direct/range {v21 .. v45}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V

    iput-object v3, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    :cond_68
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/p4;->H:Z

    .line 319
    invoke-static {}, Lcom/google/android/gms/internal/ads/ua;->b()V

    goto/16 :goto_41

    .line 320
    :cond_69
    :goto_3b
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/4 v2, 0x2

    .line 321
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/l9;->d0(I)V

    goto/16 :goto_41

    .line 322
    :pswitch_18
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_6a

    const/4 v2, 0x1

    goto :goto_3c

    :cond_6a
    const/4 v2, 0x0

    :goto_3c
    iget v1, v1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    invoke-direct {v11, v2, v1, v3, v3}, Lcom/google/android/gms/internal/ads/p4;->f0(ZIZI)V

    goto/16 :goto_41

    :pswitch_19
    const/4 v2, 0x4

    .line 323
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->y:Lcom/google/android/gms/internal/ads/m4;

    const/4 v3, 0x1

    .line 324
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/m4;->b(I)V

    const/4 v1, 0x0

    .line 325
    invoke-direct {v11, v1, v1, v1, v3}, Lcom/google/android/gms/internal/ads/p4;->n(ZZZZ)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->i:Lcom/google/android/gms/internal/ads/w4;

    .line 326
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/w4;->zza()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 327
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v1

    const/4 v3, 0x1

    if-eq v3, v1, :cond_6b

    const/4 v9, 0x2

    goto :goto_3d

    :cond_6b
    const/4 v9, 0x4

    :goto_3d
    invoke-direct {v11, v9}, Lcom/google/android/gms/internal/ads/p4;->d0(I)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->v:Lcom/google/android/gms/internal/ads/y5;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->j:Lcom/google/android/gms/internal/ads/on3;

    .line 328
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/y5;->e(Lcom/google/android/gms/internal/ads/ol;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/4 v2, 0x2

    .line 329
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/l9;->A(I)Z
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzey; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzak; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzgj; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_41

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 330
    instance-of v2, v1, Ljava/lang/IllegalStateException;

    const/16 v3, 0x3ec

    if-nez v2, :cond_6d

    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_6c

    goto :goto_3e

    :cond_6c
    const/16 v12, 0x3e8

    goto :goto_3f

    :cond_6d
    :goto_3e
    const/16 v12, 0x3ec

    .line 331
    :goto_3f
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v1

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Playback error"

    .line 332
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/s9;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 333
    invoke-direct {v11, v3, v2}, Lcom/google/android/gms/internal/ads/p4;->m(ZZ)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 334
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/b6;->f(Lcom/google/android/gms/internal/ads/zzaeg;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    goto :goto_41

    :catch_1
    move-exception v0

    move-object v1, v0

    const/16 v2, 0x7d0

    .line 335
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->b0(Ljava/io/IOException;I)V

    goto :goto_41

    :catch_2
    move-exception v0

    move-object v1, v0

    const/16 v2, 0x3ea

    .line 336
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->b0(Ljava/io/IOException;I)V

    goto :goto_41

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 337
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzak;->zza:I

    .line 338
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->b0(Ljava/io/IOException;I)V

    goto :goto_41

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 339
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaha;->zzc:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6f

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzaha;->zzb:Z

    if-eq v3, v2, :cond_6e

    const/16 v12, 0xbbb

    goto :goto_40

    :cond_6e
    const/16 v12, 0xbb9

    goto :goto_40

    :cond_6f
    const/16 v12, 0x3e8

    .line 340
    :goto_40
    invoke-direct {v11, v1, v12}, Lcom/google/android/gms/internal/ads/p4;->b0(Ljava/io/IOException;I)V

    goto :goto_41

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 341
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzey;->zza:I

    .line 342
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->b0(Ljava/io/IOException;I)V

    :cond_70
    :goto_41
    const/4 v3, 0x1

    goto :goto_42

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 343
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaeg;->zza:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_71

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->u:Lcom/google/android/gms/internal/ads/r5;

    .line 344
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r5;->l()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    if-eqz v2, :cond_71

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 345
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaeg;->zzd(Lcom/google/android/gms/internal/ads/ar3;)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v1

    :cond_71
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzaeg;->zzg:Z

    if-eqz v2, :cond_72

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->O:Lcom/google/android/gms/internal/ads/zzaeg;

    if-nez v2, :cond_72

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Recoverable renderer error"

    .line 346
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/s9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->O:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/16 v3, 0x19

    .line 347
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/l9;->f0(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/k9;

    move-result-object v1

    .line 348
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/l9;->h0(Lcom/google/android/gms/internal/ads/k9;)Z

    goto :goto_41

    .line 349
    :cond_72
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->O:Lcom/google/android/gms/internal/ads/zzaeg;

    if-eqz v2, :cond_73

    .line 350
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/qc3;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->O:Lcom/google/android/gms/internal/ads/zzaeg;

    :cond_73
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Playback error"

    .line 351
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/s9;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 352
    invoke-direct {v11, v3, v2}, Lcom/google/android/gms/internal/ads/p4;->m(ZZ)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 353
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/b6;->f(Lcom/google/android/gms/internal/ads/zzaeg;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/p4;->x:Lcom/google/android/gms/internal/ads/b6;

    .line 354
    :goto_42
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/p4;->e0()V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/l9;->A(I)Z

    return-void
.end method

.method public final bridge synthetic k(Lcom/google/android/gms/internal/ads/dm3;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/lk3;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/16 v1, 0x9

    .line 2
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/l9;->f0(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/k9;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/k9;->zza()V

    return-void
.end method

.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->k:Lcom/google/android/gms/internal/ads/l9;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/l9;->A(I)Z

    return-void
.end method
