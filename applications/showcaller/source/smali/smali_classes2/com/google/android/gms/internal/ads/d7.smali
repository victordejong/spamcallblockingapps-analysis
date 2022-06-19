.class public final Lcom/google/android/gms/internal/ads/d7;
.super Lcom/google/android/gms/internal/ads/u2;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n6;


# instance fields
.field private A:F

.field private B:Z

.field private C:Ljava/util/List;

.field private D:Z

.field private E:Z

.field private F:Lcom/google/android/gms/internal/ads/e3;

.field private G:Lcom/google/android/gms/internal/ads/z04;

.field protected final b:[Lcom/google/android/gms/internal/ads/t6;

.field private final c:Lcom/google/android/gms/internal/ads/b9;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/e4;

.field private final f:Lcom/google/android/gms/internal/ads/a7;

.field private final g:Lcom/google/android/gms/internal/ads/b7;

.field private final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/j6;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/internal/ads/rz0;

.field private final j:Lcom/google/android/gms/internal/ads/p2;

.field private final k:Lcom/google/android/gms/internal/ads/t2;

.field private final l:Lcom/google/android/gms/internal/ads/i7;

.field private final m:Lcom/google/android/gms/internal/ads/q7;

.field private final n:Lcom/google/android/gms/internal/ads/r7;

.field private o:Lcom/google/android/gms/internal/ads/u4;

.field private p:Lcom/google/android/gms/internal/ads/u4;

.field private q:Landroid/media/AudioTrack;

.field private r:Ljava/lang/Object;

.field private s:Landroid/view/Surface;

.field private t:I

.field private u:I

.field private v:I

.field private w:Lcom/google/android/gms/internal/ads/nm;

.field private x:Lcom/google/android/gms/internal/ads/nm;

.field private y:I

.field private z:Lcom/google/android/gms/internal/ads/h83;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/z6;)V
    .locals 40

    move-object/from16 v15, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/u2;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/b9;

    sget-object v1, Lcom/google/android/gms/internal/ads/z8;->a:Lcom/google/android/gms/internal/ads/z8;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/b9;-><init>(Lcom/google/android/gms/internal/ads/z8;)V

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/d7;->c:Lcom/google/android/gms/internal/ads/b9;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->a(Lcom/google/android/gms/internal/ads/z6;)Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/d7;->d:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->h(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/rz0;

    move-result-object v7

    iput-object v7, v15, Lcom/google/android/gms/internal/ads/d7;->i:Lcom/google/android/gms/internal/ads/rz0;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->j(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/h83;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/ads/d7;->z:Lcom/google/android/gms/internal/ads/h83;

    const/4 v14, 0x1

    iput v14, v15, Lcom/google/android/gms/internal/ads/d7;->t:I

    const/4 v12, 0x0

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/d7;->B:Z

    .line 4
    new-instance v13, Lcom/google/android/gms/internal/ads/a7;

    const/4 v10, 0x0

    invoke-direct {v13, v15, v10}, Lcom/google/android/gms/internal/ads/a7;-><init>(Lcom/google/android/gms/internal/ads/d7;Lcom/google/android/gms/internal/ads/c7;)V

    iput-object v13, v15, Lcom/google/android/gms/internal/ads/d7;->f:Lcom/google/android/gms/internal/ads/a7;

    new-instance v11, Lcom/google/android/gms/internal/ads/b7;

    invoke-direct {v11, v10}, Lcom/google/android/gms/internal/ads/b7;-><init>(Lcom/google/android/gms/internal/ads/c7;)V

    iput-object v11, v15, Lcom/google/android/gms/internal/ads/d7;->g:Lcom/google/android/gms/internal/ads/b7;

    .line 5
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/google/android/gms/internal/ads/d7;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v9, Landroid/os/Handler;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->i(Lcom/google/android/gms/internal/ads/z6;)Landroid/os/Looper;

    move-result-object v2

    .line 6
    invoke-direct {v9, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->b(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/w6;

    move-result-object v16

    move-object/from16 v17, v9

    move-object/from16 v18, v13

    move-object/from16 v19, v13

    move-object/from16 v20, v13

    move-object/from16 v21, v13

    .line 7
    invoke-interface/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/w6;->a(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/up3;Lcom/google/android/gms/internal/ads/ii1;Lcom/google/android/gms/internal/ads/w8;Lcom/google/android/gms/internal/ads/t7;)[Lcom/google/android/gms/internal/ads/t6;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/ads/d7;->b:[Lcom/google/android/gms/internal/ads/t6;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v15, Lcom/google/android/gms/internal/ads/d7;->A:F

    .line 8
    sget v3, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/d7;->q:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/d7;->q:Landroid/media/AudioTrack;

    .line 10
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    iput-object v10, v15, Lcom/google/android/gms/internal/ads/d7;->q:Landroid/media/AudioTrack;

    :cond_0
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/d7;->q:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/AudioTrack;

    const/16 v17, 0x3

    const/16 v18, 0xfa0

    const/16 v19, 0x4

    const/16 v20, 0x2

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v1

    .line 11
    invoke-direct/range {v16 .. v23}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/d7;->q:Landroid/media/AudioTrack;

    :cond_1
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/d7;->q:Landroid/media/AudioTrack;

    .line 12
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    iput v1, v15, Lcom/google/android/gms/internal/ads/d7;->y:I

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/x2;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, v15, Lcom/google/android/gms/internal/ads/d7;->y:I

    .line 14
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/d7;->C:Ljava/util/List;

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/d7;->D:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/f6;

    .line 15
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/f6;-><init>()V

    const/16 v8, 0x8

    new-array v3, v8, [I

    const/16 v5, 0x14

    aput v5, v3, v12

    aput v4, v3, v14

    const/16 v4, 0x16

    const/4 v6, 0x2

    aput v4, v3, v6

    const/16 v4, 0x17

    const/4 v5, 0x3

    aput v4, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v4, 0x18

    const/4 v15, 0x4

    :try_start_1
    aput v4, v3, v15

    const/16 v4, 0x19

    const/4 v15, 0x5

    aput v4, v3, v15

    const/16 v4, 0x1a

    const/4 v15, 0x6

    aput v4, v3, v15

    const/16 v4, 0x1b

    const/4 v15, 0x7

    aput v4, v3, v15

    .line 16
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/f6;->c([I)Lcom/google/android/gms/internal/ads/f6;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f6;->e()Lcom/google/android/gms/internal/ads/g6;

    move-result-object v21

    new-instance v4, Lcom/google/android/gms/internal/ads/e4;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->d(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/fn3;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->e(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/xk3;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->f(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/w4;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->g(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/on3;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->k(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/x6;

    move-result-object v24

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->o(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/z2;

    move-result-object v25

    const/16 v26, 0x1

    const-wide/16 v27, 0x1388

    const-wide/16 v29, 0x3a98

    const-wide/16 v31, 0x1f4

    const/16 v33, 0x0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->c(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/z8;

    move-result-object v34

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->i(Lcom/google/android/gms/internal/ads/z6;)Landroid/os/Looper;

    move-result-object v35

    const/16 v22, 0x0

    move-object v1, v4

    move-object/from16 v36, v4

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v23

    move/from16 v8, v26

    move-object/from16 v37, v9

    move-object/from16 v9, v24

    move-object/from16 v38, v11

    move-wide/from16 v10, v27

    move-object/from16 v39, v13

    const/16 v23, 0x0

    move-wide/from16 v12, v29

    move-object/from16 v14, v25

    move-wide/from16 v15, v31

    move/from16 v17, v33

    move-object/from16 v18, v34

    move-object/from16 v19, v35

    move-object/from16 v20, p0

    .line 18
    invoke-direct/range {v1 .. v22}, Lcom/google/android/gms/internal/ads/e4;-><init>([Lcom/google/android/gms/internal/ads/t6;Lcom/google/android/gms/internal/ads/fn3;Lcom/google/android/gms/internal/ads/xk3;Lcom/google/android/gms/internal/ads/w4;Lcom/google/android/gms/internal/ads/on3;Lcom/google/android/gms/internal/ads/rz0;ZLcom/google/android/gms/internal/ads/x6;JJLcom/google/android/gms/internal/ads/z2;JZLcom/google/android/gms/internal/ads/z8;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/n6;Lcom/google/android/gms/internal/ads/g6;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    :try_start_2
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    move-object/from16 v3, v39

    .line 19
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/e4;->A(Lcom/google/android/gms/internal/ads/h6;)V

    .line 20
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/e4;->B(Lcom/google/android/gms/internal/ads/g3;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/p2;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->a(Lcom/google/android/gms/internal/ads/z6;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v5, v37

    .line 21
    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/p2;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/o2;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/d7;->j:Lcom/google/android/gms/internal/ads/p2;

    new-instance v2, Lcom/google/android/gms/internal/ads/t2;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->a(Lcom/google/android/gms/internal/ads/z6;)Landroid/content/Context;

    move-result-object v4

    .line 22
    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/t2;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/s2;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/d7;->k:Lcom/google/android/gms/internal/ads/t2;

    const/4 v2, 0x0

    .line 23
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/gms/internal/ads/i7;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->a(Lcom/google/android/gms/internal/ads/z6;)Landroid/content/Context;

    move-result-object v4

    .line 24
    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/i7;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/e7;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/d7;->l:Lcom/google/android/gms/internal/ads/i7;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/d7;->z:Lcom/google/android/gms/internal/ads/h83;

    .line 25
    iget v3, v3, Lcom/google/android/gms/internal/ads/h83;->c:I

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/i7;->b(I)V

    new-instance v4, Lcom/google/android/gms/internal/ads/q7;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->a(Lcom/google/android/gms/internal/ads/z6;)Landroid/content/Context;

    move-result-object v5

    .line 26
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/q7;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/d7;->m:Lcom/google/android/gms/internal/ads/q7;

    new-instance v4, Lcom/google/android/gms/internal/ads/r7;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z6;->a(Lcom/google/android/gms/internal/ads/z6;)Landroid/content/Context;

    move-result-object v5

    .line 27
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/r7;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/d7;->n:Lcom/google/android/gms/internal/ads/r7;

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/d7;->S(Lcom/google/android/gms/internal/ads/i7;)Lcom/google/android/gms/internal/ads/e3;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/d7;->F:Lcom/google/android/gms/internal/ads/e3;

    sget-object v2, Lcom/google/android/gms/internal/ads/z04;->a:Lcom/google/android/gms/internal/ads/z04;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/d7;->G:Lcom/google/android/gms/internal/ads/z04;

    iget v2, v1, Lcom/google/android/gms/internal/ads/d7;->y:I

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xa

    const/4 v5, 0x1

    invoke-direct {v1, v5, v4, v2}, Lcom/google/android/gms/internal/ads/d7;->R(IILjava/lang/Object;)V

    iget v2, v1, Lcom/google/android/gms/internal/ads/d7;->y:I

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    invoke-direct {v1, v6, v4, v2}, Lcom/google/android/gms/internal/ads/d7;->R(IILjava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/d7;->z:Lcom/google/android/gms/internal/ads/h83;

    .line 31
    invoke-direct {v1, v5, v3, v2}, Lcom/google/android/gms/internal/ads/d7;->R(IILjava/lang/Object;)V

    iget v2, v1, Lcom/google/android/gms/internal/ads/d7;->t:I

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v6, v3, v2}, Lcom/google/android/gms/internal/ads/d7;->R(IILjava/lang/Object;)V

    .line 33
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    .line 34
    invoke-direct {v1, v6, v3, v2}, Lcom/google/android/gms/internal/ads/d7;->R(IILjava/lang/Object;)V

    const/16 v2, 0x9

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/d7;->B:Z

    .line 35
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/d7;->R(IILjava/lang/Object;)V

    move-object/from16 v2, v38

    const/4 v3, 0x7

    .line 36
    invoke-direct {v1, v6, v3, v2}, Lcom/google/android/gms/internal/ads/d7;->R(IILjava/lang/Object;)V

    const/4 v3, 0x6

    const/16 v4, 0x8

    .line 37
    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/d7;->R(IILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/b9;->a()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/d7;->c:Lcom/google/android/gms/internal/ads/b9;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/b9;->a()Z

    .line 39
    throw v0
.end method

.method static synthetic A(Lcom/google/android/gms/internal/ads/d7;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/d7;->N(II)V

    return-void
.end method

.method static synthetic B(Lcom/google/android/gms/internal/ads/d7;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->O()V

    return-void
.end method

.method static synthetic C(Lcom/google/android/gms/internal/ads/d7;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->i:Lcom/google/android/gms/internal/ads/rz0;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/d7;->B:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rz0;->m(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/j6;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/d7;->B:Z

    .line 3
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/j6;->m(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic D(Lcom/google/android/gms/internal/ads/d7;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/d7;->P(ZII)V

    return-void
.end method

.method static synthetic E(Lcom/google/android/gms/internal/ads/d7;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/d7;->h()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->x()Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/d7;->l()Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/d7;->l()Z

    return-void
.end method

.method static synthetic F(Lcom/google/android/gms/internal/ads/i7;)Lcom/google/android/gms/internal/ads/e3;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/d7;->S(Lcom/google/android/gms/internal/ads/i7;)Lcom/google/android/gms/internal/ads/e3;

    move-result-object p0

    return-object p0
.end method

.method static synthetic G(ZI)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/d7;->T(ZI)I

    move-result p0

    return p0
.end method

.method private final I(Ljava/lang/Object;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d7;->b:[Lcom/google/android/gms/internal/ads/t6;

    .line 2
    array-length v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 3
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/t6;->O()I

    move-result v7

    if-ne v7, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 4
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/e4;->O(Lcom/google/android/gms/internal/ads/p6;)Lcom/google/android/gms/internal/ads/q6;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/q6;->b(I)Lcom/google/android/gms/internal/ads/q6;

    .line 6
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/q6;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/q6;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/q6;->g()Lcom/google/android/gms/internal/ads/q6;

    .line 8
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d7;->r:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 9
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/q6;

    const-wide/16 v3, 0x7d0

    .line 10
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/q6;->j(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    .line 11
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const/4 v5, 0x0

    .line 12
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->r:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d7;->s:Landroid/view/Surface;

    if-ne v0, v1, :cond_4

    .line 13
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->s:Landroid/view/Surface;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d7;->r:Ljava/lang/Object;

    if-eqz v5, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafr;

    const/4 v1, 0x3

    .line 14
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzafr;-><init>(I)V

    const/16 v1, 0x3eb

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v0

    .line 16
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/e4;->I(ZLcom/google/android/gms/internal/ads/zzaeg;)V

    :cond_5
    return-void
.end method

.method private final N(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/d7;->u:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/d7;->v:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/d7;->u:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/d7;->v:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->i:Lcom/google/android/gms/internal/ads/rz0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/rz0;->o(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/j6;

    .line 3
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/j6;->o(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final O()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/d7;->A:F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d7;->k:Lcom/google/android/gms/internal/ads/t2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/t2;->a()F

    move-result v1

    mul-float v0, v0, v1

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/d7;->R(IILjava/lang/Object;)V

    return-void
.end method

.method private final P(ZII)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/e4;->F(ZII)V

    return-void
.end method

.method private final Q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->c:Lcom/google/android/gms/internal/ads/b9;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/b9;->d()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/e4;->y()Landroid/os/Looper;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/e4;->y()Landroid/os/Looper;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/wa;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/d7;->D:Z

    if-nez v1, :cond_1

    .line 9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/d7;->E:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "SimpleExoPlayer"

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/s9;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/d7;->E:Z

    return-void

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 12
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private final R(IILjava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->b:[Lcom/google/android/gms/internal/ads/t6;

    array-length v1, v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/t6;->O()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 3
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/e4;->O(Lcom/google/android/gms/internal/ads/p6;)Lcom/google/android/gms/internal/ads/q6;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/q6;->b(I)Lcom/google/android/gms/internal/ads/q6;

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/q6;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/q6;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/q6;->g()Lcom/google/android/gms/internal/ads/q6;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static S(Lcom/google/android/gms/internal/ads/i7;)Lcom/google/android/gms/internal/ads/e3;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/e3;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/i7;->c()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/i7;->d()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/internal/ads/e3;-><init>(III)V

    return-object v0
.end method

.method private static T(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method static synthetic U(Lcom/google/android/gms/internal/ads/d7;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d7;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic V(Lcom/google/android/gms/internal/ads/d7;)Lcom/google/android/gms/internal/ads/rz0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d7;->i:Lcom/google/android/gms/internal/ads/rz0;

    return-object p0
.end method

.method static synthetic W(Lcom/google/android/gms/internal/ads/d7;)Lcom/google/android/gms/internal/ads/i7;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d7;->l:Lcom/google/android/gms/internal/ads/i7;

    return-object p0
.end method

.method static synthetic X(Lcom/google/android/gms/internal/ads/d7;Lcom/google/android/gms/internal/ads/u4;)Lcom/google/android/gms/internal/ads/u4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d7;->o:Lcom/google/android/gms/internal/ads/u4;

    return-object p1
.end method

.method static synthetic Y(Lcom/google/android/gms/internal/ads/d7;Lcom/google/android/gms/internal/ads/u4;)Lcom/google/android/gms/internal/ads/u4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d7;->p:Lcom/google/android/gms/internal/ads/u4;

    return-object p1
.end method

.method static synthetic Z(Lcom/google/android/gms/internal/ads/d7;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d7;->r:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a0(Lcom/google/android/gms/internal/ads/d7;Lcom/google/android/gms/internal/ads/nm;)Lcom/google/android/gms/internal/ads/nm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d7;->w:Lcom/google/android/gms/internal/ads/nm;

    return-object p1
.end method

.method static synthetic b0(Lcom/google/android/gms/internal/ads/d7;Lcom/google/android/gms/internal/ads/nm;)Lcom/google/android/gms/internal/ads/nm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d7;->x:Lcom/google/android/gms/internal/ads/nm;

    return-object p1
.end method

.method static synthetic c0(Lcom/google/android/gms/internal/ads/d7;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/d7;->B:Z

    return p0
.end method

.method static synthetic d0(Lcom/google/android/gms/internal/ads/d7;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/d7;->B:Z

    return p1
.end method

.method static synthetic e0(Lcom/google/android/gms/internal/ads/d7;)Lcom/google/android/gms/internal/ads/e3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d7;->F:Lcom/google/android/gms/internal/ads/e3;

    return-object p0
.end method

.method static synthetic f0(Lcom/google/android/gms/internal/ads/d7;Lcom/google/android/gms/internal/ads/e3;)Lcom/google/android/gms/internal/ads/e3;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d7;->F:Lcom/google/android/gms/internal/ads/e3;

    return-object p1
.end method

.method static synthetic g0(Lcom/google/android/gms/internal/ads/d7;Lcom/google/android/gms/internal/ads/z04;)Lcom/google/android/gms/internal/ads/z04;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d7;->G:Lcom/google/android/gms/internal/ads/z04;

    return-object p1
.end method

.method static synthetic x(Lcom/google/android/gms/internal/ads/d7;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/d7;->I(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->s:Landroid/view/Surface;

    return-void
.end method

.method static synthetic y(Lcom/google/android/gms/internal/ads/d7;Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/d7;->I(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final H()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->H()J

    move-result-wide v0

    return-wide v0
.end method

.method public final J()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->J()J

    move-result-wide v0

    return-wide v0
.end method

.method public final K()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->K()I

    move-result v0

    return v0
.end method

.method public final L(IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->i:Lcom/google/android/gms/internal/ads/rz0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rz0;->S()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/e4;->L(IJ)V

    return-void
.end method

.method public final M(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d7;->k:Lcom/google/android/gms/internal/ads/t2;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/d7;->l()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/t2;->b(ZI)I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/e4;->I(ZLcom/google/android/gms/internal/ads/zzaeg;)V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d7;->C:Ljava/util/List;

    return-void
.end method

.method public final e(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/wa;->e0(FFF)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/d7;->A:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/d7;->A:F

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->O()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->i:Lcom/google/android/gms/internal/ads/rz0;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rz0;->t(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/j6;

    .line 6
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/j6;->t(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/u11;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->i:Lcom/google/android/gms/internal/ads/rz0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rz0;->H(Lcom/google/android/gms/internal/ads/u11;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/u11;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->i:Lcom/google/android/gms/internal/ads/rz0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rz0;->O(Lcom/google/android/gms/internal/ads/u11;)V

    return-void
.end method

.method public final h()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->C()I

    move-result v0

    return v0
.end method

.method public final h0(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/d7;->I(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3
    :goto_0
    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/ads/d7;->N(II)V

    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/d7;->l()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d7;->k:Lcom/google/android/gms/internal/ads/t2;

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/t2;->b(ZI)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/d7;->T(ZI)I

    move-result v2

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/d7;->P(ZII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->D()V

    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/ok3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/e4;->E(Ljava/util/List;Z)V

    return-void
.end method

.method public final k(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->k:Lcom/google/android/gms/internal/ads/t2;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/d7;->h()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/t2;->b(ZI)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/d7;->T(ZI)I

    move-result v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/d7;->P(ZII)V

    return-void
.end method

.method public final l()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->G()Z

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    const/4 v0, 0x0

    return v0
.end method

.method public final o()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->q:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/d7;->q:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->l:Lcom/google/android/gms/internal/ads/i7;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/i7;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->k:Lcom/google/android/gms/internal/ads/t2;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t2;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->N()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->i:Lcom/google/android/gms/internal/ads/rz0;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rz0;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->s:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/d7;->s:Landroid/view/Surface;

    .line 9
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->C:Ljava/util/List;

    return-void
.end method

.method public final p()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->e()I

    const/4 v0, 0x2

    return v0
.end method

.method public final q()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final r()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->P()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->Q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->t()I

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->u()Z

    move-result v0

    return v0
.end method

.method public final v(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/d7;->D:Z

    return-void
.end method

.method public final w()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->w()I

    move-result v0

    return v0
.end method

.method public final z()Lcom/google/android/gms/internal/ads/p7;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->z()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v0

    return-object v0
.end method

.method public final zzu()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d7;->Q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d7;->e:Lcom/google/android/gms/internal/ads/e4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e4;->zzu()I

    move-result v0

    return v0
.end method
