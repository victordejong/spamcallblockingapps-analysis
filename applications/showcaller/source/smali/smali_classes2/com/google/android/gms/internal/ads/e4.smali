.class final Lcom/google/android/gms/internal/ads/e4;
.super Lcom/google/android/gms/internal/ads/u2;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private A:Lcom/google/android/gms/internal/ads/b6;

.field private B:I

.field private C:J

.field private D:Lcom/google/android/gms/internal/ads/em3;

.field final b:Lcom/google/android/gms/internal/ads/hn3;

.field final c:Lcom/google/android/gms/internal/ads/g6;

.field private final d:[Lcom/google/android/gms/internal/ads/t6;

.field private final e:Lcom/google/android/gms/internal/ads/fn3;

.field private final f:Lcom/google/android/gms/internal/ads/l9;

.field private final g:Lcom/google/android/gms/internal/ads/n4;

.field private final h:Lcom/google/android/gms/internal/ads/p4;

.field private final i:Lcom/google/android/gms/internal/ads/r9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/r9<",
            "Lcom/google/android/gms/internal/ads/h6;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/g3;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/android/gms/internal/ads/m7;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/d4;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Z

.field private final n:Lcom/google/android/gms/internal/ads/xk3;

.field private final o:Lcom/google/android/gms/internal/ads/rz0;

.field private final p:Landroid/os/Looper;

.field private final q:Lcom/google/android/gms/internal/ads/on3;

.field private final r:Lcom/google/android/gms/internal/ads/z8;

.field private s:I

.field private t:I

.field private u:Z

.field private v:I

.field private w:Lcom/google/android/gms/internal/ads/x6;

.field private x:Lcom/google/android/gms/internal/ads/g6;

.field private y:Lcom/google/android/gms/internal/ads/n5;

.field private z:Lcom/google/android/gms/internal/ads/n5;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/t6;Lcom/google/android/gms/internal/ads/fn3;Lcom/google/android/gms/internal/ads/xk3;Lcom/google/android/gms/internal/ads/w4;Lcom/google/android/gms/internal/ads/on3;Lcom/google/android/gms/internal/ads/rz0;ZLcom/google/android/gms/internal/ads/x6;JJLcom/google/android/gms/internal/ads/z2;JZLcom/google/android/gms/internal/ads/z8;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/n6;Lcom/google/android/gms/internal/ads/g6;[B)V
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v15, p17

    move-object/from16 v11, p18

    move-object/from16 v1, p19

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/u2;-><init>()V

    .line 2
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/wa;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1e

    add-int/2addr v5, v7

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Init "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [ExoPlayerLib/2.15.0] ["

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExoPlayerImpl"

    .line 3
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    array-length v3, v2

    .line 5
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->d:[Lcom/google/android/gms/internal/ads/t6;

    .line 6
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/e4;->e:Lcom/google/android/gms/internal/ads/fn3;

    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/e4;->n:Lcom/google/android/gms/internal/ads/xk3;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/e4;->q:Lcom/google/android/gms/internal/ads/on3;

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/e4;->o:Lcom/google/android/gms/internal/ads/rz0;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/e4;->m:Z

    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/e4;->w:Lcom/google/android/gms/internal/ads/x6;

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/e4;->p:Landroid/os/Looper;

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/e4;->r:Lcom/google/android/gms/internal/ads/z8;

    new-instance v7, Lcom/google/android/gms/internal/ads/r9;

    new-instance v4, Lcom/google/android/gms/internal/ads/i3;

    .line 7
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/i3;-><init>(Lcom/google/android/gms/internal/ads/n6;)V

    invoke-direct {v7, v11, v15, v4}, Lcom/google/android/gms/internal/ads/r9;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/z8;Lcom/google/android/gms/internal/ads/p9;)V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    .line 8
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/e4;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v4, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/e4;->l:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/em3;

    const/4 v8, 0x0

    .line 10
    invoke-direct {v4, v8}, Lcom/google/android/gms/internal/ads/em3;-><init>(I)V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/e4;->D:Lcom/google/android/gms/internal/ads/em3;

    new-instance v8, Lcom/google/android/gms/internal/ads/hn3;

    move-object v4, v8

    const/4 v12, 0x2

    new-array v13, v12, [Lcom/google/android/gms/internal/ads/v6;

    new-array v12, v12, [Lcom/google/android/gms/internal/ads/mm3;

    const/4 v14, 0x0

    .line 11
    invoke-direct {v8, v13, v12, v14, v14}, Lcom/google/android/gms/internal/ads/hn3;-><init>([Lcom/google/android/gms/internal/ads/v6;[Lcom/google/android/gms/internal/ads/mm3;Ljava/lang/Object;[B)V

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/e4;->b:Lcom/google/android/gms/internal/ads/hn3;

    new-instance v12, Lcom/google/android/gms/internal/ads/m7;

    .line 12
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/m7;-><init>()V

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    new-instance v12, Lcom/google/android/gms/internal/ads/f6;

    .line 13
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/f6;-><init>()V

    const/16 v13, 0xa

    new-array v13, v13, [I

    fill-array-data v13, :array_0

    .line 14
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/f6;->c([I)Lcom/google/android/gms/internal/ads/f6;

    const/16 v13, 0x1c

    .line 15
    invoke-virtual {v12, v13, v5}, Lcom/google/android/gms/internal/ads/f6;->b(IZ)Lcom/google/android/gms/internal/ads/f6;

    move-object/from16 v5, p20

    .line 16
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/f6;->d(Lcom/google/android/gms/internal/ads/g6;)Lcom/google/android/gms/internal/ads/f6;

    .line 17
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f6;->e()Lcom/google/android/gms/internal/ads/g6;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/e4;->c:Lcom/google/android/gms/internal/ads/g6;

    new-instance v12, Lcom/google/android/gms/internal/ads/f6;

    .line 18
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/f6;-><init>()V

    .line 19
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/f6;->d(Lcom/google/android/gms/internal/ads/g6;)Lcom/google/android/gms/internal/ads/f6;

    const/4 v5, 0x3

    .line 20
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/f6;->a(I)Lcom/google/android/gms/internal/ads/f6;

    const/16 v5, 0x9

    .line 21
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/f6;->a(I)Lcom/google/android/gms/internal/ads/f6;

    .line 22
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f6;->e()Lcom/google/android/gms/internal/ads/g6;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/e4;->x:Lcom/google/android/gms/internal/ads/g6;

    sget-object v5, Lcom/google/android/gms/internal/ads/n5;->a:Lcom/google/android/gms/internal/ads/n5;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/e4;->y:Lcom/google/android/gms/internal/ads/n5;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/e4;->z:Lcom/google/android/gms/internal/ads/n5;

    const/4 v5, -0x1

    iput v5, v0, Lcom/google/android/gms/internal/ads/e4;->B:I

    .line 23
    invoke-interface {v15, v11, v14}, Lcom/google/android/gms/internal/ads/z8;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/l9;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/e4;->f:Lcom/google/android/gms/internal/ads/l9;

    new-instance v5, Lcom/google/android/gms/internal/ads/t3;

    move-object/from16 v17, v5

    .line 24
    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/t3;-><init>(Lcom/google/android/gms/internal/ads/e4;)V

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/e4;->g:Lcom/google/android/gms/internal/ads/n4;

    .line 25
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/b6;->a(Lcom/google/android/gms/internal/ads/hn3;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 26
    invoke-virtual {v9, v1, v11}, Lcom/google/android/gms/internal/ads/rz0;->P(Lcom/google/android/gms/internal/ads/n6;Landroid/os/Looper;)V

    .line 27
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/r9;->b(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Handler;

    .line 28
    invoke-direct {v1, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v6, v1, v9}, Lcom/google/android/gms/internal/ads/on3;->b(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/nn3;)V

    .line 29
    new-instance v5, Lcom/google/android/gms/internal/ads/p4;

    move-object v1, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v12, 0x1f4

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v19, v5

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p13

    move-object/from16 v15, p18

    move-object/from16 v16, p17

    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/internal/ads/p4;-><init>([Lcom/google/android/gms/internal/ads/t6;Lcom/google/android/gms/internal/ads/fn3;Lcom/google/android/gms/internal/ads/hn3;Lcom/google/android/gms/internal/ads/w4;Lcom/google/android/gms/internal/ads/on3;IZLcom/google/android/gms/internal/ads/rz0;Lcom/google/android/gms/internal/ads/x6;Lcom/google/android/gms/internal/ads/z2;JZLandroid/os/Looper;Lcom/google/android/gms/internal/ads/z8;Lcom/google/android/gms/internal/ads/n4;[B)V

    move-object/from16 v1, v19

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/e4;->h:Lcom/google/android/gms/internal/ads/p4;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method static final synthetic g(Lcom/google/android/gms/internal/ads/b6;Lcom/google/android/gms/internal/ads/h6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/e4;->v(Lcom/google/android/gms/internal/ads/b6;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/h6;->s0(Z)V

    return-void
.end method

.method private final j()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/e4;->B:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/m7;->d:I

    return v0
.end method

.method private final k(Lcom/google/android/gms/internal/ads/b6;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/e4;->C:J

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/x2;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/b6;->t:J

    return-wide v0

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/b6;->t:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/e4;->s(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;J)J

    return-wide v2
.end method

.method private final l(Lcom/google/android/gms/internal/ads/b6;IIZZIJI)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 2
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/p7;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 3
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 4
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v8

    const/4 v10, 0x3

    const-wide/16 v11, 0x0

    const/4 v13, -0x1

    .line 6
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v8, :cond_0

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v4, Landroid/util/Pair;

    .line 8
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v9

    if-eq v8, v9, :cond_1

    new-instance v4, Landroid/util/Pair;

    .line 10
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 11
    :cond_1
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    .line 12
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/m7;->d:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    .line 13
    invoke-virtual {v6, v8, v9, v11, v12}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v6

    .line 14
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/o7;->e:Ljava/lang/Object;

    .line 15
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    .line 16
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/m7;->d:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    .line 17
    invoke-virtual {v7, v8, v9, v11, v12}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v7

    .line 18
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/o7;->e:Ljava/lang/Object;

    .line 19
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz p5, :cond_2

    if-nez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    if-ne v2, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const/4 v4, 0x3

    :goto_0
    new-instance v6, Landroid/util/Pair;

    .line 20
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v6

    goto :goto_1

    .line 21
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 22
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_5
    if-eqz p5, :cond_6

    if-nez v2, :cond_6

    .line 23
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/ar3;->d:J

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v8, v4, Lcom/google/android/gms/internal/ads/ar3;->d:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_6

    new-instance v4, Landroid/util/Pair;

    .line 24
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 25
    :cond_6
    new-instance v4, Landroid/util/Pair;

    .line 26
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    :goto_1
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 28
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/e4;->y:Lcom/google/android/gms/internal/ads/n5;

    const/4 v8, 0x0

    if-eqz v6, :cond_9

    .line 29
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v7

    if-nez v7, :cond_7

    .line 30
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    .line 31
    invoke-virtual {v7, v9, v14}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v7

    iget v7, v7, Lcom/google/android/gms/internal/ads/m7;->d:I

    .line 32
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    .line 33
    invoke-virtual {v9, v7, v14, v11, v12}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v7

    .line 34
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/o7;->f:Lcom/google/android/gms/internal/ads/j5;

    goto :goto_2

    :cond_7
    move-object v7, v8

    :goto_2
    if-eqz v7, :cond_8

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/j5;->f:Lcom/google/android/gms/internal/ads/n5;

    goto :goto_3

    .line 35
    :cond_8
    sget-object v9, Lcom/google/android/gms/internal/ads/n5;->a:Lcom/google/android/gms/internal/ads/n5;

    :goto_3
    move-object/from16 v39, v9

    move-object v9, v7

    move-object/from16 v7, v39

    goto :goto_4

    :cond_9
    move-object v9, v8

    .line 36
    :goto_4
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    new-instance v10, Lcom/google/android/gms/internal/ads/l5;

    .line 37
    invoke-direct {v10, v7, v8}, Lcom/google/android/gms/internal/ads/l5;-><init>(Lcom/google/android/gms/internal/ads/n5;Lcom/google/android/gms/internal/ads/m5;)V

    .line 38
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    const/4 v14, 0x0

    .line 39
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v14, v13, :cond_b

    .line 40
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzaiv;

    const/4 v11, 0x0

    .line 41
    :goto_6
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaiv;->a()I

    move-result v12

    if-ge v11, v12, :cond_a

    .line 42
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzaiv;->b(I)Lcom/google/android/gms/internal/ads/zzaiu;

    move-result-object v12

    .line 43
    invoke-interface {v12, v10}, Lcom/google/android/gms/internal/ads/zzaiu;->I(Lcom/google/android/gms/internal/ads/l5;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_b
    new-instance v7, Lcom/google/android/gms/internal/ads/n5;

    .line 44
    invoke-direct {v7, v10, v8}, Lcom/google/android/gms/internal/ads/n5;-><init>(Lcom/google/android/gms/internal/ads/l5;Lcom/google/android/gms/internal/ads/m5;)V

    :cond_c
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/e4;->y:Lcom/google/android/gms/internal/ads/n5;

    .line 45
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/n5;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v5

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/e4;->y:Lcom/google/android/gms/internal/ads/n5;

    .line 46
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/p7;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v11, Lcom/google/android/gms/internal/ads/b4;

    move/from16 v12, p2

    .line 47
    invoke-direct {v11, v1, v12}, Lcom/google/android/gms/internal/ads/b4;-><init>(Lcom/google/android/gms/internal/ads/b6;I)V

    invoke-virtual {v7, v15, v11}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    :cond_d
    const/16 v7, 0xb

    if-eqz p5, :cond_15

    new-instance v11, Lcom/google/android/gms/internal/ads/m7;

    .line 48
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/m7;-><init>()V

    .line 49
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v12

    if-nez v12, :cond_e

    .line 50
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 51
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v13, v12, v11}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    iget v13, v11, Lcom/google/android/gms/internal/ads/m7;->d:I

    .line 52
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v14

    .line 53
    iget-object v15, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    move/from16 v16, v6

    const-wide/16 v5, 0x0

    .line 54
    invoke-virtual {v15, v13, v8, v5, v6}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v8

    .line 55
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/o7;->e:Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/o7;->f:Lcom/google/android/gms/internal/ads/j5;

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v12

    move/from16 v19, v13

    move/from16 v22, v14

    goto :goto_7

    :cond_e
    move/from16 v16, v6

    move/from16 v19, p9

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    :goto_7
    if-nez v2, :cond_10

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/m7;->e:J

    .line 56
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 57
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget v6, v5, Lcom/google/android/gms/internal/ads/ar3;->b:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/ar3;->c:I

    .line 58
    invoke-virtual {v11, v6, v5}, Lcom/google/android/gms/internal/ads/m7;->h(II)J

    move-result-wide v5

    .line 59
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/e4;->o(Lcom/google/android/gms/internal/ads/b6;)J

    move-result-wide v11

    goto :goto_9

    .line 60
    :cond_f
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget v8, v8, Lcom/google/android/gms/internal/ads/ar3;->e:I

    const/4 v11, -0x1

    if-eq v8, v11, :cond_12

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    .line 61
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 62
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e4;->o(Lcom/google/android/gms/internal/ads/b6;)J

    move-result-wide v5

    goto :goto_8

    .line 63
    :cond_10
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 64
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/b6;->t:J

    .line 65
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/e4;->o(Lcom/google/android/gms/internal/ads/b6;)J

    move-result-wide v11

    goto :goto_9

    .line 66
    :cond_11
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/b6;->t:J

    :cond_12
    :goto_8
    move-wide v11, v5

    .line 67
    :goto_9
    new-instance v8, Lcom/google/android/gms/internal/ads/m6;

    .line 68
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v23

    .line 69
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v25

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget v6, v5, Lcom/google/android/gms/internal/ads/ar3;->b:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/ar3;->c:I

    move-object/from16 v17, v8

    move/from16 v27, v6

    move/from16 v28, v5

    invoke-direct/range {v17 .. v28}, Lcom/google/android/gms/internal/ads/m6;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/j5;Ljava/lang/Object;IJJII)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/e4;->w()I

    move-result v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 71
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 72
    iget-object v11, v6, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 73
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 74
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v6

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 75
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    const-wide/16 v14, 0x0

    .line 76
    invoke-virtual {v12, v5, v13, v14, v15}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v12

    .line 77
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/o7;->e:Ljava/lang/Object;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/o7;->f:Lcom/google/android/gms/internal/ads/j5;

    move/from16 v32, v6

    move-object/from16 v31, v11

    move-object/from16 v28, v12

    move-object/from16 v30, v13

    goto :goto_a

    :cond_13
    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, -0x1

    .line 78
    :goto_a
    invoke-static/range {p7 .. p8}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v33

    new-instance v6, Lcom/google/android/gms/internal/ads/m6;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 79
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 80
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/e4;->o(Lcom/google/android/gms/internal/ads/b6;)J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v11

    move-wide/from16 v35, v11

    goto :goto_b

    :cond_14
    move-wide/from16 v35, v33

    :goto_b
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 81
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget v12, v11, Lcom/google/android/gms/internal/ads/ar3;->b:I

    iget v11, v11, Lcom/google/android/gms/internal/ads/ar3;->c:I

    move-object/from16 v27, v6

    move/from16 v29, v5

    move/from16 v37, v12

    move/from16 v38, v11

    invoke-direct/range {v27 .. v38}, Lcom/google/android/gms/internal/ads/m6;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/j5;Ljava/lang/Object;IJJII)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v11, Lcom/google/android/gms/internal/ads/c4;

    .line 82
    invoke-direct {v11, v2, v8, v6}, Lcom/google/android/gms/internal/ads/c4;-><init>(ILcom/google/android/gms/internal/ads/m6;Lcom/google/android/gms/internal/ads/m6;)V

    invoke-virtual {v5, v7, v11}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    goto :goto_c

    :cond_15
    move/from16 v16, v6

    :goto_c
    if-eqz v16, :cond_16

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v5, Lcom/google/android/gms/internal/ads/j3;

    .line 83
    invoke-direct {v5, v9, v4}, Lcom/google/android/gms/internal/ads/j3;-><init>(Lcom/google/android/gms/internal/ads/j5;I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    .line 84
    :cond_16
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    const/16 v5, 0xa

    if-eq v2, v4, :cond_17

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v4, Lcom/google/android/gms/internal/ads/k3;

    .line 85
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/k3;-><init>(Lcom/google/android/gms/internal/ads/b6;)V

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    .line 86
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v4, Lcom/google/android/gms/internal/ads/l3;

    .line 87
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/l3;-><init>(Lcom/google/android/gms/internal/ads/b6;)V

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    .line 88
    :cond_17
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    if-eq v2, v4, :cond_18

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->e:Lcom/google/android/gms/internal/ads/fn3;

    .line 89
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/hn3;->c:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/fn3;->a(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/ew3;

    .line 90
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/hn3;->d:[Lcom/google/android/gms/internal/ads/mm3;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6}, Lcom/google/android/gms/internal/ads/ew3;-><init>([Lcom/google/android/gms/internal/ads/mm3;[B)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v6, Lcom/google/android/gms/internal/ads/m3;

    .line 91
    invoke-direct {v6, v1, v2}, Lcom/google/android/gms/internal/ads/m3;-><init>(Lcom/google/android/gms/internal/ads/b6;Lcom/google/android/gms/internal/ads/ew3;)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    :cond_18
    if-eqz v10, :cond_19

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->y:Lcom/google/android/gms/internal/ads/n5;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v6, Lcom/google/android/gms/internal/ads/n3;

    .line 92
    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/n3;-><init>(Lcom/google/android/gms/internal/ads/n5;)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    .line 93
    :cond_19
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/b6;->h:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/b6;->h:Z

    if-eq v2, v4, :cond_1a

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v4, Lcom/google/android/gms/internal/ads/o3;

    .line 94
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/o3;-><init>(Lcom/google/android/gms/internal/ads/b6;)V

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    .line 95
    :cond_1a
    iget v2, v3, Lcom/google/android/gms/internal/ads/b6;->f:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/b6;->f:I

    if-ne v2, v4, :cond_1b

    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/b6;->m:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/b6;->m:Z

    if-eq v2, v4, :cond_1c

    :cond_1b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v4, Lcom/google/android/gms/internal/ads/p3;

    .line 96
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/p3;-><init>(Lcom/google/android/gms/internal/ads/b6;)V

    const/4 v6, -0x1

    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    .line 97
    :cond_1c
    iget v2, v3, Lcom/google/android/gms/internal/ads/b6;->f:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v6, 0x4

    if-eq v2, v4, :cond_1d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v4, Lcom/google/android/gms/internal/ads/q3;

    .line 98
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/q3;-><init>(Lcom/google/android/gms/internal/ads/b6;)V

    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    .line 99
    :cond_1d
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/b6;->m:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/b6;->m:Z

    const/4 v8, 0x5

    if-eq v2, v4, :cond_1e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v4, Lcom/google/android/gms/internal/ads/r3;

    move/from16 v9, p3

    .line 100
    invoke-direct {v4, v1, v9}, Lcom/google/android/gms/internal/ads/r3;-><init>(Lcom/google/android/gms/internal/ads/b6;I)V

    invoke-virtual {v2, v8, v4}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    .line 101
    :cond_1e
    iget v2, v3, Lcom/google/android/gms/internal/ads/b6;->n:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/b6;->n:I

    const/4 v9, 0x6

    if-eq v2, v4, :cond_1f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v4, Lcom/google/android/gms/internal/ads/s3;

    .line 102
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/s3;-><init>(Lcom/google/android/gms/internal/ads/b6;)V

    invoke-virtual {v2, v9, v4}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    .line 103
    :cond_1f
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/e4;->v(Lcom/google/android/gms/internal/ads/b6;)Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/e4;->v(Lcom/google/android/gms/internal/ads/b6;)Z

    move-result v4

    const/4 v10, 0x7

    if-eq v2, v4, :cond_20

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v4, Lcom/google/android/gms/internal/ads/u3;

    .line 104
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/u3;-><init>(Lcom/google/android/gms/internal/ads/b6;)V

    invoke-virtual {v2, v10, v4}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    .line 105
    :cond_20
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/d6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v4, Lcom/google/android/gms/internal/ads/v3;

    .line 106
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/v3;-><init>(Lcom/google/android/gms/internal/ads/b6;)V

    const/16 v11, 0xc

    invoke-virtual {v2, v11, v4}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    :cond_21
    if-eqz p4, :cond_22

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    sget-object v4, Lcom/google/android/gms/internal/ads/w3;->a:Lcom/google/android/gms/internal/ads/o9;

    const/4 v11, -0x1

    .line 107
    invoke-virtual {v2, v11, v4}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    :cond_22
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->x:Lcom/google/android/gms/internal/ads/g6;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/e4;->c:Lcom/google/android/gms/internal/ads/g6;

    new-instance v11, Lcom/google/android/gms/internal/ads/f6;

    .line 108
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/f6;-><init>()V

    .line 109
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/f6;->d(Lcom/google/android/gms/internal/ads/g6;)Lcom/google/android/gms/internal/ads/f6;

    .line 110
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/n6;->u()Z

    move-result v4

    const/4 v12, 0x1

    xor-int/2addr v4, v12

    const/4 v12, 0x3

    invoke-virtual {v11, v12, v4}, Lcom/google/android/gms/internal/ads/f6;->b(IZ)Lcom/google/android/gms/internal/ads/f6;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/u2;->d()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/n6;->u()Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x1

    goto :goto_d

    :cond_23
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v11, v6, v4}, Lcom/google/android/gms/internal/ads/f6;->b(IZ)Lcom/google/android/gms/internal/ads/f6;

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/u2;->a()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/n6;->u()Z

    move-result v4

    if-nez v4, :cond_24

    const/4 v4, 0x1

    goto :goto_e

    :cond_24
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v11, v8, v4}, Lcom/google/android/gms/internal/ads/f6;->b(IZ)Lcom/google/android/gms/internal/ads/f6;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 113
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 114
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v4

    if-nez v4, :cond_26

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/u2;->a()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/u2;->c()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/u2;->d()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 116
    :cond_25
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/n6;->u()Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_f

    :cond_26
    const/4 v4, 0x0

    .line 117
    :goto_f
    invoke-virtual {v11, v9, v4}, Lcom/google/android/gms/internal/ads/f6;->b(IZ)Lcom/google/android/gms/internal/ads/f6;

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/u2;->b()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/n6;->u()Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x1

    goto :goto_10

    :cond_27
    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v11, v10, v4}, Lcom/google/android/gms/internal/ads/f6;->b(IZ)Lcom/google/android/gms/internal/ads/f6;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 119
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 120
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v4

    if-nez v4, :cond_29

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/u2;->b()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/u2;->c()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 122
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 123
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v6

    if-nez v6, :cond_29

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/n6;->w()I

    move-result v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    const-wide/16 v9, 0x0

    .line 124
    invoke-virtual {v4, v6, v8, v9, v10}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v4

    .line 125
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/o7;->k:Z

    if-eqz v4, :cond_29

    .line 126
    :cond_28
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/n6;->u()Z

    move-result v4

    if-nez v4, :cond_29

    const/4 v4, 0x1

    goto :goto_11

    :cond_29
    const/4 v4, 0x0

    :goto_11
    const/16 v6, 0x8

    .line 127
    invoke-virtual {v11, v6, v4}, Lcom/google/android/gms/internal/ads/f6;->b(IZ)Lcom/google/android/gms/internal/ads/f6;

    const/16 v4, 0x9

    .line 128
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/n6;->u()Z

    move-result v6

    const/4 v8, 0x1

    xor-int/2addr v6, v8

    invoke-virtual {v11, v4, v6}, Lcom/google/android/gms/internal/ads/f6;->b(IZ)Lcom/google/android/gms/internal/ads/f6;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/u2;->d()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/n6;->u()Z

    move-result v4

    if-nez v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_12

    :cond_2a
    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v11, v5, v4}, Lcom/google/android/gms/internal/ads/f6;->b(IZ)Lcom/google/android/gms/internal/ads/f6;

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/u2;->d()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/n6;->u()Z

    move-result v4

    if-nez v4, :cond_2b

    const/4 v5, 0x1

    goto :goto_13

    :cond_2b
    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/f6;->b(IZ)Lcom/google/android/gms/internal/ads/f6;

    .line 131
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/f6;->e()Lcom/google/android/gms/internal/ads/g6;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/e4;->x:Lcom/google/android/gms/internal/ads/g6;

    .line 132
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/g6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    new-instance v4, Lcom/google/android/gms/internal/ads/x3;

    .line 133
    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/x3;-><init>(Lcom/google/android/gms/internal/ads/e4;)V

    const/16 v5, 0xd

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    :cond_2c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    .line 134
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r9;->e()V

    .line 135
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/b6;->p:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/b6;->p:Z

    if-eq v2, v4, :cond_2d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 136
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/g3;

    .line 137
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/b6;->p:Z

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/g3;->b(Z)V

    goto :goto_14

    .line 138
    :cond_2d
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/b6;->q:Z

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/b6;->q:Z

    if-eq v2, v3, :cond_2e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 139
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/g3;

    .line 140
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/b6;->q:Z

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/g3;->r0(Z)V

    goto :goto_15

    :cond_2e
    return-void
.end method

.method private static o(Lcom/google/android/gms/internal/ads/b6;)J
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/o7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/o7;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/m7;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/m7;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    .line 4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/b6;->d:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget v1, v1, Lcom/google/android/gms/internal/ads/m7;->d:I

    const-wide/16 v2, 0x0

    .line 6
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object p0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/o7;->o:J

    :cond_0
    return-wide v2
.end method

.method private final p(Lcom/google/android/gms/internal/ads/b6;Lcom/google/android/gms/internal/ads/p7;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/b6;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/b6;",
            "Lcom/google/android/gms/internal/ads/p7;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/b6;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/y8;->a(Z)V

    move-object/from16 v3, p1

    .line 2
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 3
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/b6;->d(Lcom/google/android/gms/internal/ads/p7;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v7

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/b6;->b()Lcom/google/android/gms/internal/ads/mk3;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/e4;->C:J

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/x2;->b(J)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    .line 6
    sget-object v17, Lcom/google/android/gms/internal/ads/dv3;->a:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->b:Lcom/google/android/gms/internal/ads/hn3;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v19

    move-object v8, v1

    move-wide v9, v13

    move-wide v11, v13

    move-object/from16 v18, v2

    .line 8
    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/b6;->c(Lcom/google/android/gms/internal/ads/mk3;JJJJLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/b6;->g(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/b6;->t:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/b6;->r:J

    return-object v1

    :cond_2
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    .line 10
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 11
    sget v8, Lcom/google/android/gms/internal/ads/wa;->a:I

    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_3

    new-instance v9, Lcom/google/android/gms/internal/ads/mk3;

    .line 12
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/ads/mk3;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    :goto_2
    move-object v15, v9

    .line 14
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/e4;->H()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/x2;->b(J)J

    move-result-wide v9

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    .line 17
    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    :cond_4
    if-nez v8, :cond_a

    cmp-long v2, v13, v9

    if-gez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    if-nez v2, :cond_8

    .line 18
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    .line 19
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    .line 21
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/p7;->h(ILcom/google/android/gms/internal/ads/m7;Z)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v2

    .line 22
    iget v2, v2, Lcom/google/android/gms/internal/ads/m7;->d:I

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    .line 23
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/m7;->d:I

    if-eq v2, v3, :cond_e

    .line 24
    :cond_6
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    .line 25
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    .line 26
    iget v2, v15, Lcom/google/android/gms/internal/ads/ar3;->b:I

    iget v3, v15, Lcom/google/android/gms/internal/ads/ar3;->c:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/m7;->h(II)J

    move-result-wide v1

    goto :goto_3

    .line 27
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    .line 28
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/m7;->e:J

    .line 29
    :goto_3
    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/b6;->t:J

    iget-wide v11, v7, Lcom/google/android/gms/internal/ads/b6;->t:J

    iget-wide v13, v7, Lcom/google/android/gms/internal/ads/b6;->e:J

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/b6;->t:J

    sub-long v3, v1, v3

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    move-object/from16 v19, v8

    move-object v8, v15

    move-object v0, v15

    move-wide v15, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 30
    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/b6;->c(Lcom/google/android/gms/internal/ads/mk3;JJJJLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v3

    .line 31
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/b6;->g(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v7

    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/b6;->r:J

    goto :goto_4

    :cond_8
    move-object v0, v15

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    const-wide/16 v1, 0x0

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/b6;->s:J

    sub-long v5, v13, v9

    sub-long/2addr v3, v5

    .line 33
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/b6;->r:J

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    .line 34
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-long v1, v13, v15

    :cond_9
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    move-object v8, v0

    move-wide v9, v13

    move-wide v11, v13

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 35
    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/b6;->c(Lcom/google/android/gms/internal/ads/mk3;JJJJLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v7

    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/b6;->r:J

    :goto_4
    move-object/from16 v0, p0

    goto :goto_9

    :cond_a
    :goto_5
    move-object v0, v15

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    if-eqz v8, :cond_b

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/ads/dv3;->a:Lcom/google/android/gms/internal/ads/dv3;

    goto :goto_6

    .line 38
    :cond_b
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    :goto_6
    move-object/from16 v17, v1

    if-eqz v8, :cond_c

    move-object v1, v0

    move-object/from16 v0, p0

    .line 39
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e4;->b:Lcom/google/android/gms/internal/ads/hn3;

    goto :goto_7

    :cond_c
    move-object v1, v0

    move-object/from16 v0, p0

    .line 40
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    :goto_7
    move-object/from16 v18, v2

    if-eqz v8, :cond_d

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    goto :goto_8

    .line 42
    :cond_d
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    :goto_8
    move-object/from16 v19, v2

    const-wide/16 v15, 0x0

    move-object v8, v1

    move-wide v9, v13

    move-wide v11, v13

    move-wide v2, v13

    .line 43
    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/b6;->c(Lcom/google/android/gms/internal/ads/mk3;JJJJLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v4

    .line 44
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/b6;->g(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v7

    iput-wide v2, v7, Lcom/google/android/gms/internal/ads/b6;->r:J

    :cond_e
    :goto_9
    return-object v7
.end method

.method private final r(Lcom/google/android/gms/internal/ads/p7;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/p7;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/google/android/gms/internal/ads/e4;->B:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/e4;->C:J

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p7;->a()I

    move-result v0

    if-lt p2, v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/p7;->e(Z)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    .line 4
    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object p3

    iget-wide p3, p3, Lcom/google/android/gms/internal/ads/o7;->o:J

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide p3

    :cond_3
    move v3, p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    .line 6
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/x2;->b(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/p7;->m(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final s(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;J)J
    .locals 1

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    return-wide p3
.end method

.method private static v(Lcom/google/android/gms/internal/ads/b6;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/gms/internal/ads/b6;->n:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/internal/ads/h6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/r9;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Lcom/google/android/gms/internal/ads/g3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final C()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget v0, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    return v0
.end method

.method public final D()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget v1, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/b6;->f(Lcom/google/android/gms/internal/ads/zzaeg;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v1

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/b6;->e(I)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v4

    iget v0, p0, Lcom/google/android/gms/internal/ads/e4;->s:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/e4;->s:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->h:Lcom/google/android/gms/internal/ads/p4;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p4;->R()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    .line 6
    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/e4;->l(Lcom/google/android/gms/internal/ads/b6;IIZZIJI)V

    return-void
.end method

.method public final E(Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/ok3;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e4;->j()I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->J()J

    iget v0, p0, Lcom/google/android/gms/internal/ads/e4;->s:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/e4;->s:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->l:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->l:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/e4;->l:Ljava/util/List;

    .line 5
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/e4;->D:Lcom/google/android/gms/internal/ads/em3;

    .line 6
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/em3;->g(II)Lcom/google/android/gms/internal/ads/em3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->D:Lcom/google/android/gms/internal/ads/em3;

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 8
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/ads/w5;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/ok3;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/e4;->m:Z

    invoke-direct {v3, v6, v7}, Lcom/google/android/gms/internal/ads/w5;-><init>(Lcom/google/android/gms/internal/ads/ok3;Z)V

    .line 10
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/e4;->l:Ljava/util/List;

    new-instance v7, Lcom/google/android/gms/internal/ads/d4;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/w5;->b:Ljava/lang/Object;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/w5;->a:Lcom/google/android/gms/internal/ads/ik3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ik3;->D()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v3

    .line 11
    invoke-direct {v7, v8, v3}, Lcom/google/android/gms/internal/ads/d4;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/p7;)V

    .line 12
    invoke-interface {v6, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->D:Lcom/google/android/gms/internal/ads/em3;

    .line 13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 14
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/em3;->f(II)Lcom/google/android/gms/internal/ads/em3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->D:Lcom/google/android/gms/internal/ads/em3;

    new-instance v0, Lcom/google/android/gms/internal/ads/r6;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/e4;->l:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/e4;->D:Lcom/google/android/gms/internal/ads/em3;

    const/4 v6, 0x0

    .line 15
    invoke-direct {v0, v3, v5, v6}, Lcom/google/android/gms/internal/ads/r6;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/em3;[B)V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, -0x1

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->a()I

    move-result v3

    if-ltz v3, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzafx;

    .line 18
    invoke-direct {v1, v0, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(Lcom/google/android/gms/internal/ads/p7;IJ)V

    throw v1

    .line 19
    :cond_4
    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/p7;->e(Z)I

    move-result v8

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 20
    invoke-direct {p0, v0, v8, v5, v6}, Lcom/google/android/gms/internal/ads/e4;->r(Lcom/google/android/gms/internal/ads/p7;IJ)Landroid/util/Pair;

    move-result-object v9

    .line 21
    invoke-direct {p0, v3, v0, v9}, Lcom/google/android/gms/internal/ads/e4;->p(Lcom/google/android/gms/internal/ads/b6;Lcom/google/android/gms/internal/ads/p7;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v3

    iget v9, v3, Lcom/google/android/gms/internal/ads/b6;->f:I

    const/4 v10, 0x4

    if-eq v8, v7, :cond_7

    if-eq v9, v1, :cond_7

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->a()I

    move-result v0

    if-lt v8, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x2

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, 0x4

    .line 23
    :cond_7
    :goto_4
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/b6;->e(I)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v9

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/e4;->h:Lcom/google/android/gms/internal/ads/p4;

    .line 24
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/x2;->b(J)J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->D:Lcom/google/android/gms/internal/ads/em3;

    move v5, v8

    move-object v8, v0

    .line 25
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/p4;->Z(Ljava/util/List;IJLcom/google/android/gms/internal/ads/em3;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 26
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 29
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/e4;->k(Lcom/google/android/gms/internal/ads/b6;)J

    move-result-wide v7

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, v9

    move v9, v10

    .line 30
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/e4;->l(Lcom/google/android/gms/internal/ads/b6;IIZZIJI)V

    return-void
.end method

.method public final F(ZII)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    if-ne v1, p1, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/ads/b6;->n:I

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/e4;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/e4;->s:I

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/b6;->h(ZI)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->h:Lcom/google/android/gms/internal/ads/p4;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/p4;->S(ZI)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, -0x1

    move-object v2, p0

    move v5, p3

    .line 4
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/e4;->l(Lcom/google/android/gms/internal/ads/b6;IIZZIJI)V

    return-void
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    return v0
.end method

.method public final H()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 3
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->w()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    .line 5
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/o7;->o:J

    .line 6
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 8
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/b6;->d:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->J()J

    move-result-wide v0

    return-wide v0
.end method

.method public final I(ZLcom/google/android/gms/internal/ads/zzaeg;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/b6;->g(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/b6;->t:J

    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/b6;->r:J

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/b6;->s:J

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/b6;->e(I)Lcom/google/android/gms/internal/ads/b6;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/b6;->f(Lcom/google/android/gms/internal/ads/zzaeg;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object p1

    :cond_0
    move-object v2, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/e4;->s:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/e4;->s:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/e4;->h:Lcom/google/android/gms/internal/ads/p4;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p4;->U()V

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x4

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/e4;->k(Lcom/google/android/gms/internal/ads/b6;)J

    move-result-wide v8

    const/4 v10, -0x1

    move-object v1, p0

    .line 7
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/e4;->l(Lcom/google/android/gms/internal/ads/b6;IIZZIJI)V

    return-void
.end method

.method public final J()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/e4;->k(Lcom/google/android/gms/internal/ads/b6;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final K()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ar3;->b:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final L(IJ)V
    .locals 13

    move-object v10, p0

    move v0, p1

    move-wide v1, p2

    .line 1
    iget-object v3, v10, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    if-ltz v0, :cond_3

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/p7;->a()I

    move-result v4

    if-ge v0, v4, :cond_3

    :cond_0
    iget v4, v10, Lcom/google/android/gms/internal/ads/e4;->s:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v10, Lcom/google/android/gms/internal/ads/e4;->s:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->u()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 4
    iget v4, v4, Lcom/google/android/gms/internal/ads/b6;->f:I

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->w()I

    move-result v9

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/b6;->e(I)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v4

    .line 7
    invoke-direct {p0, v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/e4;->r(Lcom/google/android/gms/internal/ads/p7;IJ)Landroid/util/Pair;

    move-result-object v5

    .line 8
    invoke-direct {p0, v4, v3, v5}, Lcom/google/android/gms/internal/ads/e4;->p(Lcom/google/android/gms/internal/ads/b6;Lcom/google/android/gms/internal/ads/p7;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v4

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/e4;->h:Lcom/google/android/gms/internal/ads/p4;

    .line 9
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/x2;->b(J)J

    move-result-wide v1

    invoke-virtual {v5, v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/p4;->T(Lcom/google/android/gms/internal/ads/p7;IJ)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 10
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/e4;->k(Lcom/google/android/gms/internal/ads/b6;)J

    move-result-wide v11

    move-object v0, p0

    move-object v1, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v11

    .line 11
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/e4;->l(Lcom/google/android/gms/internal/ads/b6;IIZZIJI)V

    return-void

    :cond_2
    const-string v0, "ExoPlayerImpl"

    const-string v1, "seekTo ignored because an ad is playing"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/ads/m4;

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 13
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/m4;-><init>(Lcom/google/android/gms/internal/ads/b6;)V

    .line 14
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/m4;->b(I)V

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/e4;->g:Lcom/google/android/gms/internal/ads/n4;

    .line 15
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/n4;->a(Lcom/google/android/gms/internal/ads/m4;)V

    return-void

    .line 16
    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzafx;

    .line 17
    invoke-direct {v4, v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(Lcom/google/android/gms/internal/ads/p7;IJ)V

    throw v4
.end method

.method public final M(Z)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final N()V
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/wa;->e:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/q4;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x24

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [ExoPlayerLib/2.15.0] ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->h:Lcom/google/android/gms/internal/ads/p4;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p4;->V()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/internal/ads/a4;->a:Lcom/google/android/gms/internal/ads/o9;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/r9;->d(ILcom/google/android/gms/internal/ads/o9;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r9;->e()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->i:Lcom/google/android/gms/internal/ads/r9;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r9;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->f:Lcom/google/android/gms/internal/ads/l9;

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/l9;->e0(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->o:Lcom/google/android/gms/internal/ads/rz0;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e4;->q:Lcom/google/android/gms/internal/ads/on3;

    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/on3;->a(Lcom/google/android/gms/internal/ads/nn3;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/b6;->e(I)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 10
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/b6;->g(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/b6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 11
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->r:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->s:J

    return-void
.end method

.method public final O(Lcom/google/android/gms/internal/ads/p6;)Lcom/google/android/gms/internal/ads/q6;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/q6;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e4;->h:Lcom/google/android/gms/internal/ads/p4;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->w()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/e4;->r:Lcom/google/android/gms/internal/ads/z8;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->h:Lcom/google/android/gms/internal/ads/p4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p4;->W()Landroid/os/Looper;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/q6;-><init>(Lcom/google/android/gms/internal/ads/o6;Lcom/google/android/gms/internal/ads/p6;Lcom/google/android/gms/internal/ads/p7;ILcom/google/android/gms/internal/ads/z8;Landroid/os/Looper;)V

    return-object v7
.end method

.method public final P()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->u()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->w()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    const-wide/16 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/o7;->p:J

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    .line 9
    iget v2, v1, Lcom/google/android/gms/internal/ads/ar3;->b:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/ar3;->c:I

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/m7;->h(II)J

    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Q()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/b6;->r:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->P()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/e4;->C:J

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/ar3;->d:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/ar3;->d:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_3

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->w()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    .line 8
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/o7;->p:J

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v0

    goto :goto_2

    .line 10
    :cond_3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/b6;->r:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 11
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e4;->k:Lcom/google/android/gms/internal/ads/m7;

    .line 13
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    iget v1, v1, Lcom/google/android/gms/internal/ads/ar3;->b:I

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/m7;->b(I)J

    goto :goto_1

    :cond_4
    move-wide v5, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 16
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    .line 17
    invoke-direct {p0, v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/e4;->s(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;J)J

    .line 18
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v0

    :goto_2
    return-wide v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->d:[Lcom/google/android/gms/internal/ads/t6;

    array-length v0, v0

    const/4 v0, 0x2

    return v0
.end method

.method final synthetic f(Lcom/google/android/gms/internal/ads/h6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->x:Lcom/google/android/gms/internal/ads/g6;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/h6;->B0(Lcom/google/android/gms/internal/ads/g6;)V

    return-void
.end method

.method final synthetic h(Lcom/google/android/gms/internal/ads/m4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->f:Lcom/google/android/gms/internal/ads/l9;

    new-instance v1, Lcom/google/android/gms/internal/ads/y3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/y3;-><init>(Lcom/google/android/gms/internal/ads/e4;Lcom/google/android/gms/internal/ads/m4;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/l9;->j0(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic i(Lcom/google/android/gms/internal/ads/m4;)V
    .locals 12

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/e4;->s:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/m4;->c:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/e4;->s:I

    .line 2
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/m4;->d:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget v2, p1, Lcom/google/android/gms/internal/ads/m4;->e:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/e4;->t:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/e4;->u:Z

    .line 4
    :cond_0
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/m4;->f:Z

    if-eqz v2, :cond_1

    .line 5
    iget v2, p1, Lcom/google/android/gms/internal/ads/m4;->g:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/e4;->v:I

    :cond_1
    if-nez v1, :cond_b

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/m4;->b:Lcom/google/android/gms/internal/ads/b6;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 7
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/e4;->B:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/e4;->C:J

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 9
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/r6;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r6;->y()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/e4;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    const/4 v5, 0x0

    .line 11
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/e4;->l:Ljava/util/List;

    .line 12
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/d4;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/p7;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/d4;->a(Lcom/google/android/gms/internal/ads/d4;Lcom/google/android/gms/internal/ads/p7;)Lcom/google/android/gms/internal/ads/p7;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/e4;->u:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_a

    .line 13
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/m4;->b:Lcom/google/android/gms/internal/ads/b6;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    .line 14
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/m4;->b:Lcom/google/android/gms/internal/ads/b6;

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/b6;->e:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-wide v10, v2, Lcom/google/android/gms/internal/ads/b6;->t:J

    cmp-long v2, v7, v10

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-eqz v3, :cond_9

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/m4;->b:Lcom/google/android/gms/internal/ads/b6;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 16
    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/m4;->b:Lcom/google/android/gms/internal/ads/b6;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/b6;->e:J

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/gms/internal/ads/e4;->s(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;J)J

    goto :goto_4

    .line 17
    :cond_8
    :goto_3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/m4;->b:Lcom/google/android/gms/internal/ads/b6;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/b6;->e:J

    :goto_4
    move v5, v3

    move-wide v7, v6

    goto :goto_5

    :cond_9
    move-wide v7, v5

    move v5, v3

    goto :goto_5

    :cond_a
    move-wide v7, v5

    const/4 v5, 0x0

    :goto_5
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/e4;->u:Z

    .line 18
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/m4;->b:Lcom/google/android/gms/internal/ads/b6;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/e4;->v:I

    const/4 v4, 0x0

    iget v6, p0, Lcom/google/android/gms/internal/ads/e4;->t:I

    const/4 v9, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/e4;->l(Lcom/google/android/gms/internal/ads/b6;IIZZIJI)V

    :cond_b
    return-void
.end method

.method public final m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/b6;->s:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e4;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ar3;->c:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v0

    return v0
.end method

.method public final w()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e4;->j()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/b6;->q:Z

    return v0
.end method

.method public final y()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->p:Landroid/os/Looper;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/internal/ads/p7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    return-object v0
.end method

.method public final zzu()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e4;->A:Lcom/google/android/gms/internal/ads/b6;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
