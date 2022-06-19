.class public final Lcom/google/android/exoplayer2/aj;
.super Lcom/google/android/exoplayer2/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/ac$c;
.implements Lcom/google/android/exoplayer2/ac$d;
.implements Lcom/google/android/exoplayer2/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/aj$b;,
        Lcom/google/android/exoplayer2/aj$a;
    }
.end annotation


# instance fields
.field private final A:Lcom/google/android/exoplayer2/b;

.field private final B:Lcom/google/android/exoplayer2/am;

.field private final C:Lcom/google/android/exoplayer2/an;

.field private final D:J

.field private E:Landroid/media/AudioTrack;

.field private F:Z

.field private G:I

.field private H:Landroid/view/SurfaceHolder;

.field private I:Landroid/view/TextureView;

.field private J:I

.field private K:I

.field private L:I

.field private M:Lcom/google/android/exoplayer2/video/i;

.field private N:Lcom/google/android/exoplayer2/video/a/a;

.field private O:Z

.field private P:Z

.field protected final b:[Lcom/google/android/exoplayer2/af;

.field final c:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/video/k;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/text/j;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/metadata/d;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/google/android/exoplayer2/a/a;

.field public final i:Lcom/google/android/exoplayer2/c;

.field public final j:Lcom/google/android/exoplayer2/ak;

.field k:Lcom/google/android/exoplayer2/Format;

.field l:Lcom/google/android/exoplayer2/Format;

.field m:Landroid/view/Surface;

.field n:Lcom/google/android/exoplayer2/decoder/d;

.field o:Lcom/google/android/exoplayer2/decoder/d;

.field public p:Lcom/google/android/exoplayer2/audio/d;

.field public q:F

.field r:Z

.field s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field

.field t:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field u:Z

.field public v:Z

.field w:Lcom/google/android/exoplayer2/b/a;

.field private final x:Landroid/content/Context;

.field private final y:Lcom/google/android/exoplayer2/n;

.field private final z:Lcom/google/android/exoplayer2/aj$b;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ah;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/source/t;Lcom/google/android/exoplayer2/s;Lcom/google/android/exoplayer2/upstream/c;Lcom/google/android/exoplayer2/a/a;ZLcom/google/android/exoplayer2/util/c;Landroid/os/Looper;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    new-instance v0, Lcom/google/android/exoplayer2/aj$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/aj$a;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ah;)V

    .line 2263
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/aj$a;->w:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 2264
    iput-object p3, v0, Lcom/google/android/exoplayer2/aj$a;->d:Lcom/google/android/exoplayer2/trackselection/h;

    .line 2276
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/aj$a;->w:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 2277
    iput-object p4, v0, Lcom/google/android/exoplayer2/aj$a;->e:Lcom/google/android/exoplayer2/source/t;

    .line 2289
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/aj$a;->w:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 2290
    iput-object p5, v0, Lcom/google/android/exoplayer2/aj$a;->f:Lcom/google/android/exoplayer2/s;

    .line 2302
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/aj$a;->w:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 2303
    iput-object p6, v0, Lcom/google/android/exoplayer2/aj$a;->g:Lcom/google/android/exoplayer2/upstream/c;

    .line 2329
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/aj$a;->w:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 2330
    iput-object p7, v0, Lcom/google/android/exoplayer2/aj$a;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2451
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/aj$a;->w:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 2452
    iput-boolean p8, v0, Lcom/google/android/exoplayer2/aj$a;->q:Z

    .line 2545
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/aj$a;->w:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 2546
    iput-object p9, v0, Lcom/google/android/exoplayer2/aj$a;->c:Lcom/google/android/exoplayer2/util/c;

    .line 3316
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/aj$a;->w:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 3317
    iput-object p10, v0, Lcom/google/android/exoplayer2/aj$a;->i:Landroid/os/Looper;

    .line 624
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/aj;-><init>(Lcom/google/android/exoplayer2/aj$a;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/aj$a;)V
    .locals 27

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 637
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/d;-><init>()V

    .line 4095
    iget-object v0, v14, Lcom/google/android/exoplayer2/aj$a;->a:Landroid/content/Context;

    .line 638
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/aj;->x:Landroid/content/Context;

    .line 5095
    iget-object v6, v14, Lcom/google/android/exoplayer2/aj$a;->h:Lcom/google/android/exoplayer2/a/a;

    .line 639
    iput-object v6, v15, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 6095
    iget-object v1, v14, Lcom/google/android/exoplayer2/aj$a;->j:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 640
    iput-object v1, v15, Lcom/google/android/exoplayer2/aj;->t:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 7095
    iget-object v1, v14, Lcom/google/android/exoplayer2/aj$a;->k:Lcom/google/android/exoplayer2/audio/d;

    .line 641
    iput-object v1, v15, Lcom/google/android/exoplayer2/aj;->p:Lcom/google/android/exoplayer2/audio/d;

    .line 8095
    iget v1, v14, Lcom/google/android/exoplayer2/aj$a;->p:I

    .line 642
    iput v1, v15, Lcom/google/android/exoplayer2/aj;->G:I

    .line 9095
    iget-boolean v1, v14, Lcom/google/android/exoplayer2/aj$a;->o:Z

    .line 643
    iput-boolean v1, v15, Lcom/google/android/exoplayer2/aj;->r:Z

    .line 10095
    iget-wide v1, v14, Lcom/google/android/exoplayer2/aj$a;->u:J

    .line 644
    iput-wide v1, v15, Lcom/google/android/exoplayer2/aj;->D:J

    .line 645
    new-instance v13, Lcom/google/android/exoplayer2/aj$b;

    const/4 v5, 0x0

    invoke-direct {v13, v15, v5}, Lcom/google/android/exoplayer2/aj$b;-><init>(Lcom/google/android/exoplayer2/aj;Lcom/google/android/exoplayer2/aj$1;)V

    iput-object v13, v15, Lcom/google/android/exoplayer2/aj;->z:Lcom/google/android/exoplayer2/aj$b;

    .line 646
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v15, Lcom/google/android/exoplayer2/aj;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 647
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v15, Lcom/google/android/exoplayer2/aj;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 648
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v15, Lcom/google/android/exoplayer2/aj;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 649
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v15, Lcom/google/android/exoplayer2/aj;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 650
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v15, Lcom/google/android/exoplayer2/aj;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 651
    new-instance v4, Landroid/os/Handler;

    .line 11095
    iget-object v1, v14, Lcom/google/android/exoplayer2/aj$a;->i:Landroid/os/Looper;

    .line 651
    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12095
    iget-object v7, v14, Lcom/google/android/exoplayer2/aj$a;->b:Lcom/google/android/exoplayer2/ah;

    move-object v8, v4

    move-object v9, v13

    move-object v10, v13

    move-object v11, v13

    move-object v12, v13

    .line 653
    invoke-interface/range {v7 .. v12}, Lcom/google/android/exoplayer2/ah;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/l;Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/text/j;Lcom/google/android/exoplayer2/metadata/d;)[Lcom/google/android/exoplayer2/af;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/exoplayer2/aj;->b:[Lcom/google/android/exoplayer2/af;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 661
    iput v2, v15, Lcom/google/android/exoplayer2/aj;->q:F

    .line 662
    sget v2, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    .line 12982
    iget-object v0, v15, Lcom/google/android/exoplayer2/aj;->E:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 12983
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 12984
    iget-object v0, v15, Lcom/google/android/exoplayer2/aj;->E:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 12985
    iput-object v5, v15, Lcom/google/android/exoplayer2/aj;->E:Landroid/media/AudioTrack;

    .line 12987
    :cond_0
    iget-object v0, v15, Lcom/google/android/exoplayer2/aj;->E:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 12992
    new-instance v0, Landroid/media/AudioTrack;

    const/16 v17, 0x3

    const/16 v18, 0xfa0

    const/16 v19, 0x4

    const/16 v20, 0x2

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v23}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, v15, Lcom/google/android/exoplayer2/aj;->E:Landroid/media/AudioTrack;

    .line 13002
    :cond_1
    iget-object v0, v15, Lcom/google/android/exoplayer2/aj;->E:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    .line 663
    iput v0, v15, Lcom/google/android/exoplayer2/aj;->L:I

    goto :goto_0

    .line 665
    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/f;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, v15, Lcom/google/android/exoplayer2/aj;->L:I

    .line 667
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/aj;->s:Ljava/util/List;

    const/4 v12, 0x1

    .line 668
    iput-boolean v12, v15, Lcom/google/android/exoplayer2/aj;->O:Z

    .line 671
    new-instance v10, Lcom/google/android/exoplayer2/n;

    .line 13095
    iget-object v2, v14, Lcom/google/android/exoplayer2/aj$a;->d:Lcom/google/android/exoplayer2/trackselection/h;

    .line 14095
    iget-object v3, v14, Lcom/google/android/exoplayer2/aj$a;->e:Lcom/google/android/exoplayer2/source/t;

    .line 15095
    iget-object v7, v14, Lcom/google/android/exoplayer2/aj$a;->f:Lcom/google/android/exoplayer2/s;

    .line 16095
    iget-object v8, v14, Lcom/google/android/exoplayer2/aj$a;->g:Lcom/google/android/exoplayer2/upstream/c;

    .line 17095
    iget-boolean v9, v14, Lcom/google/android/exoplayer2/aj$a;->q:Z

    .line 18095
    iget-object v11, v14, Lcom/google/android/exoplayer2/aj$a;->r:Lcom/google/android/exoplayer2/ai;

    .line 19095
    iget-object v0, v14, Lcom/google/android/exoplayer2/aj$a;->s:Lcom/google/android/exoplayer2/r;

    move-object/from16 v16, v13

    .line 20095
    iget-wide v12, v14, Lcom/google/android/exoplayer2/aj$a;->t:J

    .line 21095
    iget-boolean v15, v14, Lcom/google/android/exoplayer2/aj$a;->v:Z

    move/from16 v18, v15

    .line 22095
    iget-object v15, v14, Lcom/google/android/exoplayer2/aj$a;->c:Lcom/google/android/exoplayer2/util/c;

    move-object/from16 v19, v15

    .line 23095
    iget-object v15, v14, Lcom/google/android/exoplayer2/aj$a;->i:Landroid/os/Looper;

    move-object/from16 v20, v0

    move-object v0, v10

    move-object/from16 v24, v4

    move-object v4, v7

    move-object/from16 v21, v5

    move-object v5, v8

    move v7, v9

    move-object v8, v11

    move-object/from16 v9, v20

    move-object/from16 v25, v10

    move-wide v10, v12

    const/4 v13, 0x1

    move/from16 v12, v18

    move-object/from16 v26, v16

    move-object/from16 v13, v19

    move-object v14, v15

    move-object/from16 v15, p0

    .line 685
    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/n;-><init>([Lcom/google/android/exoplayer2/af;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/source/t;Lcom/google/android/exoplayer2/s;Lcom/google/android/exoplayer2/upstream/c;Lcom/google/android/exoplayer2/a/a;ZLcom/google/android/exoplayer2/ai;Lcom/google/android/exoplayer2/r;JZLcom/google/android/exoplayer2/util/c;Landroid/os/Looper;Lcom/google/android/exoplayer2/ac;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    iput-object v1, v0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    move-object/from16 v2, v26

    .line 687
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/ac$a;)V

    .line 689
    new-instance v1, Lcom/google/android/exoplayer2/b;

    move-object/from16 v3, p1

    .line 24095
    iget-object v4, v3, Lcom/google/android/exoplayer2/aj$a;->a:Landroid/content/Context;

    move-object/from16 v5, v24

    .line 690
    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/b;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/b$b;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/aj;->A:Lcom/google/android/exoplayer2/b;

    .line 25095
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/aj$a;->n:Z

    .line 691
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/b;->a(Z)V

    .line 692
    new-instance v1, Lcom/google/android/exoplayer2/c;

    .line 26095
    iget-object v4, v3, Lcom/google/android/exoplayer2/aj$a;->a:Landroid/content/Context;

    .line 692
    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/c;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/c$b;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/aj;->i:Lcom/google/android/exoplayer2/c;

    .line 27095
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/aj$a;->l:Z

    if-eqz v4, :cond_3

    .line 693
    iget-object v4, v0, Lcom/google/android/exoplayer2/aj;->p:Lcom/google/android/exoplayer2/audio/d;

    goto :goto_1

    :cond_3
    move-object/from16 v4, v21

    :goto_1
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/audio/d;)V

    .line 694
    new-instance v1, Lcom/google/android/exoplayer2/ak;

    .line 28095
    iget-object v4, v3, Lcom/google/android/exoplayer2/aj$a;->a:Landroid/content/Context;

    .line 694
    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/ak;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/ak$a;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/aj;->j:Lcom/google/android/exoplayer2/ak;

    .line 695
    iget-object v2, v0, Lcom/google/android/exoplayer2/aj;->p:Lcom/google/android/exoplayer2/audio/d;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/d;->d:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->f(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ak;->a(I)V

    .line 696
    new-instance v2, Lcom/google/android/exoplayer2/am;

    .line 29095
    iget-object v4, v3, Lcom/google/android/exoplayer2/aj$a;->a:Landroid/content/Context;

    .line 696
    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/am;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/aj;->B:Lcom/google/android/exoplayer2/am;

    .line 30095
    iget v4, v3, Lcom/google/android/exoplayer2/aj$a;->m:I

    const/4 v12, 0x0

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_6

    .line 31058
    iget-object v5, v2, Lcom/google/android/exoplayer2/am;->b:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_6

    .line 31059
    iget-object v5, v2, Lcom/google/android/exoplayer2/am;->a:Landroid/os/PowerManager;

    if-nez v5, :cond_5

    const-string v2, "WakeLockManager"

    const-string v4, "PowerManager is null, therefore not creating the WakeLock."

    .line 31060
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_4

    .line 31063
    :cond_5
    iget-object v5, v2, Lcom/google/android/exoplayer2/am;->a:Landroid/os/PowerManager;

    const-string v6, "ExoPlayer:WakeLockManager"

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/exoplayer2/am;->b:Landroid/os/PowerManager$WakeLock;

    .line 31064
    iget-object v5, v2, Lcom/google/android/exoplayer2/am;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v12}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    goto :goto_3

    :cond_6
    const/4 v7, 0x1

    .line 31068
    :goto_3
    iput-boolean v4, v2, Lcom/google/android/exoplayer2/am;->c:Z

    .line 31069
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/am;->a()V

    .line 698
    :goto_4
    new-instance v2, Lcom/google/android/exoplayer2/an;

    .line 31095
    iget-object v4, v3, Lcom/google/android/exoplayer2/aj$a;->a:Landroid/content/Context;

    .line 698
    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/an;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/aj;->C:Lcom/google/android/exoplayer2/an;

    .line 32095
    iget v3, v3, Lcom/google/android/exoplayer2/aj$a;->m:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    const/4 v5, 0x3

    if-eqz v3, :cond_9

    .line 33056
    iget-object v6, v2, Lcom/google/android/exoplayer2/an;->b:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v6, :cond_9

    .line 33057
    iget-object v6, v2, Lcom/google/android/exoplayer2/an;->a:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_8

    const-string v2, "WifiLockManager"

    const-string v3, "WifiManager is null, therefore not creating the WifiLock."

    .line 33058
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 33061
    :cond_8
    iget-object v6, v2, Lcom/google/android/exoplayer2/an;->a:Landroid/net/wifi/WifiManager;

    const-string v8, "ExoPlayer:WifiLockManager"

    invoke-virtual {v6, v5, v8}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v6

    iput-object v6, v2, Lcom/google/android/exoplayer2/an;->b:Landroid/net/wifi/WifiManager$WifiLock;

    .line 33062
    iget-object v6, v2, Lcom/google/android/exoplayer2/an;->b:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v6, v12}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 33065
    :cond_9
    iput-boolean v3, v2, Lcom/google/android/exoplayer2/an;->c:Z

    .line 33066
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/an;->a()V

    .line 700
    :goto_6
    invoke-static {v1}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/ak;)Lcom/google/android/exoplayer2/b/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/aj;->w:Lcom/google/android/exoplayer2/b/a;

    .line 702
    iget v1, v0, Lcom/google/android/exoplayer2/aj;->L:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/exoplayer2/aj;->a(IILjava/lang/Object;)V

    .line 703
    iget v1, v0, Lcom/google/android/exoplayer2/aj;->L:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v2, v1}, Lcom/google/android/exoplayer2/aj;->a(IILjava/lang/Object;)V

    .line 704
    iget-object v1, v0, Lcom/google/android/exoplayer2/aj;->p:Lcom/google/android/exoplayer2/audio/d;

    invoke-virtual {v0, v7, v5, v1}, Lcom/google/android/exoplayer2/aj;->a(IILjava/lang/Object;)V

    const/4 v1, 0x4

    .line 705
    iget v2, v0, Lcom/google/android/exoplayer2/aj;->G:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/exoplayer2/aj;->a(IILjava/lang/Object;)V

    const/16 v1, 0x65

    .line 706
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/aj;->r:Z

    .line 707
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 706
    invoke-virtual {v0, v7, v1, v2}, Lcom/google/android/exoplayer2/aj;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private N()V
    .locals 2

    .line 775
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 776
    invoke-direct {p0}, Lcom/google/android/exoplayer2/aj;->O()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 777
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/aj;->a(Landroid/view/Surface;Z)V

    .line 778
    invoke-virtual {p0, v1, v1}, Lcom/google/android/exoplayer2/aj;->a(II)V

    return-void
.end method

.method private O()V
    .locals 3

    .line 1833
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->I:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1834
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/aj;->z:Lcom/google/android/exoplayer2/aj$b;

    if-eq v0, v2, :cond_0

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 1835
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->I:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1839
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/aj;->I:Landroid/view/TextureView;

    .line 1841
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->H:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 1842
    iget-object v2, p0, Lcom/google/android/exoplayer2/aj;->z:Lcom/google/android/exoplayer2/aj$b;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1843
    iput-object v1, p0, Lcom/google/android/exoplayer2/aj;->H:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method

.method public static a(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method static a(Lcom/google/android/exoplayer2/ak;)Lcom/google/android/exoplayer2/b/a;
    .locals 3

    .line 2006
    new-instance v0, Lcom/google/android/exoplayer2/b/a;

    .line 2008
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ak;->a()I

    move-result v1

    .line 2009
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ak;->b()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/exoplayer2/b/a;-><init>(III)V

    return-object v0
.end method

.method private a(Landroid/view/Surface;Z)V
    .locals 8

    .line 1850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1851
    iget-object v1, p0, Lcom/google/android/exoplayer2/aj;->b:[Lcom/google/android/exoplayer2/af;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 1852
    invoke-interface {v5}, Lcom/google/android/exoplayer2/af;->a()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1853
    iget-object v6, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 1855
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/ad$b;)Lcom/google/android/exoplayer2/ad;

    move-result-object v5

    const/4 v6, 0x1

    .line 1856
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/ad;->a(I)Lcom/google/android/exoplayer2/ad;

    move-result-object v5

    .line 1857
    invoke-virtual {v5, p1}, Lcom/google/android/exoplayer2/ad;->a(Ljava/lang/Object;)Lcom/google/android/exoplayer2/ad;

    move-result-object v5

    .line 1858
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/ad;->a()Lcom/google/android/exoplayer2/ad;

    move-result-object v5

    .line 1853
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1861
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/aj;->m:Landroid/view/Surface;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 1864
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ad;

    .line 1865
    iget-wide v4, p0, Lcom/google/android/exoplayer2/aj;->D:J

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/ad;->a(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1871
    :catch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    new-instance v1, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    .line 1873
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    .line 1871
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/n;->a(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    goto :goto_2

    .line 1868
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1877
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/aj;->F:Z

    if-eqz v0, :cond_3

    .line 1878
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->m:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1881
    :cond_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/aj;->m:Landroid/view/Surface;

    .line 1882
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/aj;->F:Z

    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 803
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 804
    invoke-direct {p0}, Lcom/google/android/exoplayer2/aj;->O()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 806
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/video/h;)V

    .line 808
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/aj;->H:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 813
    iget-object v2, p0, Lcom/google/android/exoplayer2/aj;->z:Lcom/google/android/exoplayer2/aj$b;

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 814
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 815
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 816
    invoke-direct {p0, v2, v1}, Lcom/google/android/exoplayer2/aj;->a(Landroid/view/Surface;Z)V

    .line 817
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 818
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/aj;->a(II)V

    return-void

    .line 820
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/aj;->a(Landroid/view/Surface;Z)V

    .line 821
    invoke-virtual {p0, v1, v1}, Lcom/google/android/exoplayer2/aj;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/aj;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->L()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/aj;II)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/aj;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/aj;Landroid/view/Surface;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/aj;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/video/h;)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x8

    .line 1887
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/aj;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/aj;)V
    .locals 5

    .line 39931
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->n()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 39946
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 40718
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 40719
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 41228
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/z;->o:Z

    .line 39936
    iget-object v3, p0, Lcom/google/android/exoplayer2/aj;->B:Lcom/google/android/exoplayer2/am;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->r()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/am;->a(Z)V

    .line 39938
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->C:Lcom/google/android/exoplayer2/an;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->r()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/an;->a(Z)V

    return-void

    .line 39942
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->B:Lcom/google/android/exoplayer2/am;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/am;->a(Z)V

    .line 39943
    iget-object p0, p0, Lcom/google/android/exoplayer2/aj;->C:Lcom/google/android/exoplayer2/an;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/an;->a(Z)V

    return-void
.end method


# virtual methods
.method public final A()J
    .locals 2

    .line 1664
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1665
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public final B()J
    .locals 2

    .line 1676
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1677
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final C()Z
    .locals 1

    .line 1682
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1683
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->C()Z

    move-result v0

    return v0
.end method

.method public final D()I
    .locals 1

    .line 1688
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1689
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->D()I

    move-result v0

    return v0
.end method

.method public final E()I
    .locals 1

    .line 1694
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1695
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->E()I

    move-result v0

    return v0
.end method

.method public final F()J
    .locals 2

    .line 1700
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1701
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->F()J

    move-result-wide v0

    return-wide v0
.end method

.method public final G()J
    .locals 2

    .line 1706
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1707
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->G()J

    move-result-wide v0

    return-wide v0
.end method

.method public final H()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1622
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1623
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 38903
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public final I()Lcom/google/android/exoplayer2/trackselection/g;
    .locals 1

    .line 1628
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1629
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->I()Lcom/google/android/exoplayer2/trackselection/g;

    move-result-object v0

    return-object v0
.end method

.method public final J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 1634
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1635
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 38913
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    return-object v0
.end method

.method public final K()Lcom/google/android/exoplayer2/al;
    .locals 1

    .line 1640
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1641
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 38918
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    return-object v0
.end method

.method public final L()V
    .locals 3

    .line 1905
    iget v0, p0, Lcom/google/android/exoplayer2/aj;->q:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/aj;->i:Lcom/google/android/exoplayer2/c;

    .line 39130
    iget v1, v1, Lcom/google/android/exoplayer2/c;->b:F

    mul-float v0, v0, v1

    .line 1906
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/aj;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final M()V
    .locals 3

    .line 1951
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 39200
    iget-object v1, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 39268
    iget-object v1, v1, Lcom/google/android/exoplayer2/n;->d:Landroid/os/Looper;

    if-eq v0, v1, :cond_2

    .line 1952
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/aj;->O:Z

    const-string v1, "Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    if-nez v0, :cond_1

    .line 1958
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/aj;->P:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v2, "SimpleExoPlayer"

    .line 1955
    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 1959
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/aj;->P:Z

    goto :goto_1

    .line 1953
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation

    .line 1174
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1175
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->s:Ljava/util/List;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 1499
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1500
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/n;->a(I)V

    return-void
.end method

.method final a(II)V
    .locals 1

    .line 1894
    iget v0, p0, Lcom/google/android/exoplayer2/aj;->J:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/aj;->K:I

    if-eq p2, v0, :cond_1

    .line 1895
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/aj;->J:I

    .line 1896
    iput p2, p0, Lcom/google/android/exoplayer2/aj;->K:I

    .line 1897
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(II)V

    .line 1898
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(IILjava/lang/Object;)V
    .locals 5

    .line 1964
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->b:[Lcom/google/android/exoplayer2/af;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1965
    invoke-interface {v3}, Lcom/google/android/exoplayer2/af;->a()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1966
    iget-object v4, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/ad$b;)Lcom/google/android/exoplayer2/ad;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/ad;->a(I)Lcom/google/android/exoplayer2/ad;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/ad;->a(Ljava/lang/Object;)Lcom/google/android/exoplayer2/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ad;->a()Lcom/google/android/exoplayer2/ad;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(IJ)V
    .locals 1

    .line 1523
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1524
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/a;->b()V

    .line 1525
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/n;->a(IJ)V

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    .line 783
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    if-eqz p1, :cond_0

    .line 784
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->m:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    .line 785
    invoke-direct {p0}, Lcom/google/android/exoplayer2/aj;->N()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/SurfaceView;)V
    .locals 1

    .line 836
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 837
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;

    if-eqz v0, :cond_0

    .line 838
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;

    .line 34060
    iget-object v0, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->a:Lcom/google/android/exoplayer2/video/f;

    .line 840
    invoke-direct {p0}, Lcom/google/android/exoplayer2/aj;->N()V

    .line 841
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/aj;->H:Landroid/view/SurfaceHolder;

    .line 842
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/video/h;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 844
    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/aj;->a(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final a(Landroid/view/TextureView;)V
    .locals 5

    .line 863
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 864
    invoke-direct {p0}, Lcom/google/android/exoplayer2/aj;->O()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 866
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/video/h;)V

    .line 868
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/aj;->I:Landroid/view/TextureView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 870
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/aj;->a(Landroid/view/Surface;Z)V

    .line 871
    invoke-virtual {p0, v2, v2}, Lcom/google/android/exoplayer2/aj;->a(II)V

    return-void

    .line 873
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "SimpleExoPlayer"

    const-string v4, "Replacing existing SurfaceTextureListener."

    .line 874
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/aj;->z:Lcom/google/android/exoplayer2/aj$b;

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 878
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-nez v3, :cond_4

    .line 880
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/aj;->a(Landroid/view/Surface;Z)V

    .line 881
    invoke-virtual {p0, v2, v2}, Lcom/google/android/exoplayer2/aj;->a(II)V

    return-void

    .line 883
    :cond_4
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/aj;->a(Landroid/view/Surface;Z)V

    .line 884
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/aj;->a(II)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/aa;)V
    .locals 1

    .line 1530
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1531
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/aa;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/ac$a;)V
    .locals 1

    .line 1211
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/r;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36286
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 36288
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 36354
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 36356
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    .line 36407
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/n;->a(Ljava/util/List;IJZ)V

    .line 36291
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->q()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/text/j;)V
    .locals 1

    .line 1162
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/video/a/a;)V
    .locals 2

    .line 1143
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1144
    iput-object p1, p0, Lcom/google/android/exoplayer2/aj;->N:Lcom/google/android/exoplayer2/video/a/a;

    const/4 v0, 0x6

    const/4 v1, 0x7

    .line 1145
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/aj;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/video/i;)V
    .locals 2

    .line 1125
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1126
    iput-object p1, p0, Lcom/google/android/exoplayer2/aj;->M:Lcom/google/android/exoplayer2/video/i;

    const/4 v0, 0x2

    const/4 v1, 0x6

    .line 1127
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/aj;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/video/k;)V
    .locals 1

    .line 1113
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 1466
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1468
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->i:Lcom/google/android/exoplayer2/c;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->n()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/c;->a(ZI)I

    move-result v0

    .line 1470
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/aj;->a(ZI)I

    move-result v1

    .line 1469
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/aj;->a(ZII)V

    return-void
.end method

.method public final a(ZII)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v0, 0x1

    .line 1927
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/exoplayer2/n;->a(ZII)V

    return-void
.end method

.method public final b(I)I
    .locals 1

    .line 1609
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1610
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/n;->b(I)I

    move-result p1

    return p1
.end method

.method public final b(Landroid/view/Surface;)V
    .locals 1

    .line 791
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 792
    invoke-direct {p0}, Lcom/google/android/exoplayer2/aj;->O()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 794
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/video/h;)V

    :cond_0
    const/4 v0, 0x0

    .line 796
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/aj;->a(Landroid/view/Surface;Z)V

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 798
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/google/android/exoplayer2/aj;->a(II)V

    return-void
.end method

.method public final b(Landroid/view/SurfaceView;)V
    .locals 2

    .line 850
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 851
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->H:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_2

    .line 853
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/video/h;)V

    .line 854
    iput-object v1, p0, Lcom/google/android/exoplayer2/aj;->H:Landroid/view/SurfaceHolder;

    return-void

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v1

    goto :goto_0

    .line 857
    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 34828
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    if-eqz p1, :cond_2

    .line 34829
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->H:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_2

    .line 34830
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/aj;->a(Landroid/view/SurfaceHolder;)V

    :cond_2
    return-void
.end method

.method public final b(Landroid/view/TextureView;)V
    .locals 1

    .line 891
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    if-eqz p1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->I:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 893
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/aj;->a(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/ac$a;)V
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/n;->b(Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/source/r;)V
    .locals 1

    .line 1361
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1363
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/n;->b(Lcom/google/android/exoplayer2/source/r;)V

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/text/j;)V
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/video/a/a;)V
    .locals 2

    .line 1151
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1152
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->N:Lcom/google/android/exoplayer2/video/a/a;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x6

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 1155
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/aj;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/video/i;)V
    .locals 2

    .line 1133
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1134
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->M:Lcom/google/android/exoplayer2/video/i;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1137
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/aj;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/video/k;)V
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 1505
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1506
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/n;->b(Z)V

    return-void
.end method

.method public final c(Z)V
    .locals 3

    .line 1560
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1561
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->i:Lcom/google/android/exoplayer2/c;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->r()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/c;->a(ZI)I

    .line 1562
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/n;->c(Z)V

    .line 1563
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/aj;->s:Ljava/util/List;

    return-void
.end method

.method public final j()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1254
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1255
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->q()V

    return-void
.end method

.method public final k()Lcom/google/android/exoplayer2/ac$d;
    .locals 0

    return-object p0
.end method

.method public final l()Lcom/google/android/exoplayer2/ac$c;
    .locals 0

    return-object p0
.end method

.method public final m()Landroid/os/Looper;
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 35268
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->d:Landroid/os/Looper;

    return-object v0
.end method

.method public final n()I
    .locals 1

    .line 1224
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1225
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 35289
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget v0, v0, Lcom/google/android/exoplayer2/z;->d:I

    return v0
.end method

.method public final o()I
    .locals 1

    .line 1231
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1232
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 35295
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget v0, v0, Lcom/google/android/exoplayer2/z;->l:I

    return v0
.end method

.method public final p()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 1246
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1247
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 35308
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-object v0
.end method

.method public final q()V
    .locals 3

    .line 1260
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1261
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->r()Z

    move-result v0

    .line 1263
    iget-object v1, p0, Lcom/google/android/exoplayer2/aj;->i:Lcom/google/android/exoplayer2/c;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/c;->a(ZI)I

    move-result v1

    .line 1265
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/aj;->a(ZI)I

    move-result v2

    .line 1264
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/aj;->a(ZII)V

    .line 1266
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->q()V

    return-void
.end method

.method public final r()Z
    .locals 1

    .line 1475
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1476
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 36568
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/z;->k:Z

    return v0
.end method

.method public final s()I
    .locals 1

    .line 1493
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1494
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 36583
    iget v0, v0, Lcom/google/android/exoplayer2/n;->e:I

    return v0
.end method

.method public final t()Z
    .locals 1

    .line 1511
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1512
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 36599
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/n;->f:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1517
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1518
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 36604
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/z;->f:Z

    return v0
.end method

.method public final v()Lcom/google/android/exoplayer2/aa;
    .locals 1

    .line 1536
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1537
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 36666
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    return-object v0
.end method

.method public final w()V
    .locals 6

    .line 1568
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1569
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->E:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 1570
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 1571
    iput-object v1, p0, Lcom/google/android/exoplayer2/aj;->E:Landroid/media/AudioTrack;

    .line 1573
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->A:Lcom/google/android/exoplayer2/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/b;->a(Z)V

    .line 1574
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->j:Lcom/google/android/exoplayer2/ak;

    .line 37170
    iget-object v3, v0, Lcom/google/android/exoplayer2/ak;->c:Lcom/google/android/exoplayer2/ak$b;

    if-eqz v3, :cond_1

    .line 37172
    :try_start_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/ak;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ak;->c:Lcom/google/android/exoplayer2/ak$b;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "StreamVolumeManager"

    const-string v5, "Error unregistering stream volume receiver"

    .line 37174
    invoke-static {v4, v5, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37176
    :goto_0
    iput-object v1, v0, Lcom/google/android/exoplayer2/ak;->c:Lcom/google/android/exoplayer2/ak$b;

    .line 1575
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->B:Lcom/google/android/exoplayer2/am;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/am;->a(Z)V

    .line 1576
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->C:Lcom/google/android/exoplayer2/an;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/an;->a(Z)V

    .line 1577
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->i:Lcom/google/android/exoplayer2/c;

    .line 38173
    iput-object v1, v0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/c$b;

    .line 38174
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c;->a()V

    .line 1578
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->w()V

    .line 1579
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/a;->a()V

    .line 1580
    invoke-direct {p0}, Lcom/google/android/exoplayer2/aj;->O()V

    .line 1581
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->m:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 1582
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/aj;->F:Z

    if-eqz v3, :cond_2

    .line 1583
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1585
    :cond_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/aj;->m:Landroid/view/Surface;

    .line 1587
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/aj;->u:Z

    if-eqz v0, :cond_4

    .line 1588
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->t:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->a()V

    .line 1589
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/aj;->u:Z

    .line 1591
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/aj;->s:Ljava/util/List;

    const/4 v0, 0x1

    .line 1592
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/aj;->v:Z

    return-void
.end method

.method public final x()I
    .locals 1

    .line 1646
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1647
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->x()I

    move-result v0

    return v0
.end method

.method public final y()I
    .locals 1

    .line 1652
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1653
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->y()I

    move-result v0

    return v0
.end method

.method public final z()J
    .locals 2

    .line 1658
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1659
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->z()J

    move-result-wide v0

    return-wide v0
.end method

.method public final z_()Lcom/google/android/exoplayer2/trackselection/h;
    .locals 1

    .line 1616
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/aj;->M()V

    .line 1617
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj;->y:Lcom/google/android/exoplayer2/n;

    .line 38898
    iget-object v0, v0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/trackselection/h;

    return-object v0
.end method
