.class public final Lcom/google/android/gms/internal/ads/t52;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jo1;


# instance fields
.field private A:[Ljava/nio/ByteBuffer;

.field private B:Ljava/nio/ByteBuffer;

.field private C:Ljava/nio/ByteBuffer;

.field private D:[B

.field private E:I

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:I

.field private L:Lcom/google/android/gms/internal/ads/gk3;

.field private M:J

.field private N:Z

.field private O:Z

.field private final P:Lcom/google/android/gms/internal/ads/nx1;

.field private final a:Lcom/google/android/gms/internal/ads/lu1;

.field private final b:Lcom/google/android/gms/internal/ads/cf2;

.field private final c:[Lcom/google/android/gms/internal/ads/x51;

.field private final d:[Lcom/google/android/gms/internal/ads/x51;

.field private final e:Landroid/os/ConditionVariable;

.field private final f:Lcom/google/android/gms/internal/ads/ks1;

.field private final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/oy1;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/gms/internal/ads/s42;

.field private final i:Lcom/google/android/gms/internal/ads/o02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/o02<",
            "Lcom/google/android/gms/internal/ads/zzds;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/gms/internal/ads/o02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/o02<",
            "Lcom/google/android/gms/internal/ads/zzdv;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/android/gms/internal/ads/il1;

.field private l:Lcom/google/android/gms/internal/ads/nw1;

.field private m:Lcom/google/android/gms/internal/ads/nw1;

.field private n:Landroid/media/AudioTrack;

.field private o:Lcom/google/android/gms/internal/ads/h83;

.field private p:Lcom/google/android/gms/internal/ads/oy1;

.field private q:Lcom/google/android/gms/internal/ads/oy1;

.field private final r:Lcom/google/android/gms/internal/ads/d6;

.field private s:J

.field private t:J

.field private u:J

.field private v:Z

.field private w:Z

.field private x:J

.field private y:F

.field private z:[Lcom/google/android/gms/internal/ads/x51;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/v21;[Lcom/google/android/gms/internal/ads/x51;Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/nx1;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/nx1;-><init>([Lcom/google/android/gms/internal/ads/x51;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/t52;->P:Lcom/google/android/gms/internal/ads/nx1;

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/wa;->a:I

    .line 3
    new-instance v2, Landroid/os/ConditionVariable;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/t52;->e:Landroid/os/ConditionVariable;

    new-instance v2, Lcom/google/android/gms/internal/ads/ks1;

    new-instance v4, Lcom/google/android/gms/internal/ads/p12;

    const/4 v5, 0x0

    .line 4
    invoke-direct {v4, v0, v5}, Lcom/google/android/gms/internal/ads/p12;-><init>(Lcom/google/android/gms/internal/ads/t52;Lcom/google/android/gms/internal/ads/pz1;)V

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/ks1;-><init>(Lcom/google/android/gms/internal/ads/ir1;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/lu1;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/lu1;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/t52;->a:Lcom/google/android/gms/internal/ads/lu1;

    new-instance v4, Lcom/google/android/gms/internal/ads/cf2;

    .line 6
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/cf2;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/t52;->b:Lcom/google/android/gms/internal/ads/cf2;

    new-instance v5, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/google/android/gms/internal/ads/kt1;

    new-instance v7, Lcom/google/android/gms/internal/ads/ya2;

    .line 8
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/ya2;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    aput-object v2, v6, v3

    const/4 v2, 0x2

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nx1;->a()[Lcom/google/android/gms/internal/ads/x51;

    move-result-object v1

    .line 9
    invoke-static {v5, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array v1, v8, [Lcom/google/android/gms/internal/ads/x51;

    .line 10
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/x51;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/t52;->c:[Lcom/google/android/gms/internal/ads/x51;

    new-array v1, v3, [Lcom/google/android/gms/internal/ads/x51;

    .line 11
    new-instance v2, Lcom/google/android/gms/internal/ads/u62;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/u62;-><init>()V

    aput-object v2, v1, v8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/t52;->d:[Lcom/google/android/gms/internal/ads/x51;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/google/android/gms/internal/ads/t52;->y:F

    sget-object v1, Lcom/google/android/gms/internal/ads/h83;->a:Lcom/google/android/gms/internal/ads/h83;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/t52;->o:Lcom/google/android/gms/internal/ads/h83;

    iput v8, v0, Lcom/google/android/gms/internal/ads/t52;->K:I

    new-instance v1, Lcom/google/android/gms/internal/ads/gk3;

    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v8, v2}, Lcom/google/android/gms/internal/ads/gk3;-><init>(IF)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/t52;->L:Lcom/google/android/gms/internal/ads/gk3;

    new-instance v1, Lcom/google/android/gms/internal/ads/oy1;

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/d6;->a:Lcom/google/android/gms/internal/ads/d6;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object v9, v1

    move-object v10, v2

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/oy1;-><init>(Lcom/google/android/gms/internal/ads/d6;ZJJLcom/google/android/gms/internal/ads/pz1;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/t52;->q:Lcom/google/android/gms/internal/ads/oy1;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/t52;->r:Lcom/google/android/gms/internal/ads/d6;

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/t52;->F:I

    new-array v1, v8, [Lcom/google/android/gms/internal/ads/x51;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/t52;->z:[Lcom/google/android/gms/internal/ads/x51;

    new-array v1, v8, [Ljava/nio/ByteBuffer;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/t52;->A:[Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/util/ArrayDeque;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/t52;->g:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/google/android/gms/internal/ads/o02;

    const-wide/16 v2, 0x64

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/o02;-><init>(J)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/t52;->i:Lcom/google/android/gms/internal/ads/o02;

    new-instance v1, Lcom/google/android/gms/internal/ads/o02;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/o02;-><init>(J)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/t52;->j:Lcom/google/android/gms/internal/ads/o02;

    return-void
.end method

.method private final A()Lcom/google/android/gms/internal/ads/oy1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->p:Lcom/google/android/gms/internal/ads/oy1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->g:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/oy1;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->q:Lcom/google/android/gms/internal/ads/oy1;

    :goto_0
    return-object v0
.end method

.method private final B(J)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->P:Lcom/google/android/gms/internal/ads/nx1;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->A()Lcom/google/android/gms/internal/ads/oy1;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/oy1;->a:Lcom/google/android/gms/internal/ads/d6;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nx1;->b(Lcom/google/android/gms/internal/ads/d6;)Lcom/google/android/gms/internal/ads/d6;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/d6;->a:Lcom/google/android/gms/internal/ads/d6;

    :goto_0
    move-object v3, v1

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->P:Lcom/google/android/gms/internal/ads/nx1;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->A()Lcom/google/android/gms/internal/ads/oy1;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/oy1;->b:Z

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/nx1;->c(Z)Z

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/t52;->g:Ljava/util/ArrayDeque;

    new-instance v11, Lcom/google/android/gms/internal/ads/oy1;

    const-wide/16 v4, 0x0

    .line 8
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->F()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/google/android/gms/internal/ads/nw1;->a(J)J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v2, v11

    move v4, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/oy1;-><init>(Lcom/google/android/gms/internal/ads/d6;ZJJLcom/google/android/gms/internal/ads/pz1;)V

    .line 10
    invoke-virtual {v10, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/nw1;->i:[Lcom/google/android/gms/internal/ads/x51;

    new-instance p2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, p1, v1

    .line 14
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/x51;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 16
    :cond_2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/x51;->zzg()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 18
    new-array v1, p1, [Lcom/google/android/gms/internal/ads/x51;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/internal/ads/x51;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/t52;->z:[Lcom/google/android/gms/internal/ads/x51;

    .line 19
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->A:[Ljava/nio/ByteBuffer;

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->u()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->k:Lcom/google/android/gms/internal/ads/il1;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/v72;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/v72;->a:Lcom/google/android/gms/internal/ads/x92;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/x92;->H0(Lcom/google/android/gms/internal/ads/x92;)Lcom/google/android/gms/internal/ads/hh1;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/hh1;->h(Z)V

    :cond_4
    return-void
.end method

.method private final C()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/nw1;->a:Lcom/google/android/gms/internal/ads/u4;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    const-string v1, "audio/raw"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/nw1;->a:Lcom/google/android/gms/internal/ads/u4;

    iget v0, v0, Lcom/google/android/gms/internal/ads/u4;->C:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final D()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final E()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    iget v1, v0, Lcom/google/android/gms/internal/ads/nw1;->c:I

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/t52;->s:J

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/nw1;->b:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method private final F()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    iget v1, v0, Lcom/google/android/gms/internal/ads/nw1;->c:I

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/t52;->t:J

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/nw1;->d:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method private static G(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final H()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/t52;->H:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t52;->H:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->F()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ks1;->i(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    return-void
.end method

.method static synthetic I(Lcom/google/android/gms/internal/ads/t52;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t52;->e:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic J(Lcom/google/android/gms/internal/ads/t52;)Lcom/google/android/gms/internal/ads/il1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t52;->k:Lcom/google/android/gms/internal/ads/il1;

    return-object p0
.end method

.method static synthetic K(Lcom/google/android/gms/internal/ads/t52;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/t52;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/t52;->I:Z

    return p0
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/t52;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/t52;->M:J

    return-wide v0
.end method

.method static synthetic r(Lcom/google/android/gms/internal/ads/t52;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->E()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic s(Lcom/google/android/gms/internal/ads/t52;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->F()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic t(III)Landroid/media/AudioFormat;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method private final u()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t52;->z:[Lcom/google/android/gms/internal/ads/x51;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/x51;->zzg()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t52;->A:[Ljava/nio/ByteBuffer;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/x51;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final v(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->z:[Lcom/google/android/gms/internal/ads/x51;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_6

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t52;->A:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    .line 2
    aget-object v2, v2, v3

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t52;->B:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/x51;->a:Ljava/nio/ByteBuffer;

    :cond_1
    :goto_1
    if-ne v1, v0, :cond_2

    .line 5
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/t52;->w(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t52;->z:[Lcom/google/android/gms/internal/ads/x51;

    .line 7
    aget-object v3, v3, v1

    iget v4, p0, Lcom/google/android/gms/internal/ads/t52;->F:I

    if-le v1, v4, :cond_3

    .line 8
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/x51;->g(Ljava/nio/ByteBuffer;)V

    .line 9
    :cond_3
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/x51;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/t52;->A:[Ljava/nio/ByteBuffer;

    .line 10
    aput-object v3, v4, v1

    .line 11
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private final w(Ljava/nio/ByteBuffer;J)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/t52;->C:Ljava/nio/ByteBuffer;

    const/16 p3, 0x15

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-ne p2, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/y8;->a(Z)V

    goto :goto_1

    .line 3
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->C:Ljava/nio/ByteBuffer;

    .line 4
    sget p2, Lcom/google/android/gms/internal/ads/wa;->a:I

    if-ge p2, p3, :cond_5

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t52;->D:[B

    if-eqz v2, :cond_3

    array-length v2, v2

    if-ge v2, p2, :cond_4

    .line 6
    :cond_3
    new-array v2, p2, [B

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/t52;->D:[B

    .line 7
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t52;->D:[B

    .line 8
    invoke-virtual {p1, v3, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v1, p0, Lcom/google/android/gms/internal/ads/t52;->E:I

    .line 10
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    .line 11
    sget v2, Lcom/google/android/gms/internal/ads/wa;->a:I

    if-ge v2, p3, :cond_7

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/t52;->t:J

    .line 12
    invoke-virtual {p3, v3, v4}, Lcom/google/android/gms/internal/ads/ks1;->f(J)I

    move-result p3

    if-lez p3, :cond_6

    .line 13
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/t52;->D:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/t52;->E:I

    .line 14
    invoke-virtual {v3, v4, v5, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p3

    if-lez p3, :cond_8

    iget v3, p0, Lcom/google/android/gms/internal/ads/t52;->E:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/google/android/gms/internal/ads/t52;->E:I

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    goto :goto_2

    .line 16
    :cond_7
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 17
    invoke-virtual {p3, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    .line 18
    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/t52;->M:J

    if-gez p3, :cond_e

    const/16 p1, 0x18

    if-lt v2, p1, :cond_9

    const/4 p1, -0x6

    if-eq p3, p1, :cond_b

    :cond_9
    const/16 p1, -0x20

    if-ne p3, p1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdv;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    .line 19
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/nw1;->a:Lcom/google/android/gms/internal/ads/u4;

    invoke-direct {p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzdv;-><init>(ILcom/google/android/gms/internal/ads/u4;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/t52;->k:Lcom/google/android/gms/internal/ads/il1;

    if-eqz p2, :cond_c

    .line 20
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/il1;->a(Ljava/lang/Exception;)V

    :cond_c
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzdv;->zza:Z

    if-nez p2, :cond_d

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/t52;->j:Lcom/google/android/gms/internal/ads/o02;

    .line 22
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/o02;->a(Ljava/lang/Exception;)V

    return-void

    .line 23
    :cond_d
    throw p1

    .line 24
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->j:Lcom/google/android/gms/internal/ads/o02;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o02;->b()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t52;->G(Landroid/media/AudioTrack;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/t52;->I:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->k:Lcom/google/android/gms/internal/ads/il1;

    if-eqz p1, :cond_f

    if-ge p3, p2, :cond_f

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/t52;->O:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    const-wide/16 v0, 0x0

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/ks1;->g(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->k:Lcom/google/android/gms/internal/ads/il1;

    check-cast p1, Lcom/google/android/gms/internal/ads/v72;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/v72;->a:Lcom/google/android/gms/internal/ads/x92;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/x92;->K0(Lcom/google/android/gms/internal/ads/x92;)Lcom/google/android/gms/internal/ads/s6;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/v72;->a:Lcom/google/android/gms/internal/ads/x92;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/x92;->K0(Lcom/google/android/gms/internal/ads/x92;)Lcom/google/android/gms/internal/ads/s6;

    move-result-object p1

    .line 28
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/s6;->a(J)V

    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    .line 29
    iget p1, p1, Lcom/google/android/gms/internal/ads/nw1;->c:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/t52;->t:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/t52;->t:J

    if-ne p3, p2, :cond_10

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->C:Ljava/nio/ByteBuffer;

    :cond_10
    return-void
.end method

.method private final x()Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/t52;->F:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput v3, p0, Lcom/google/android/gms/internal/ads/t52;->F:I

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/t52;->F:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/t52;->z:[Lcom/google/android/gms/internal/ads/x51;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_3

    .line 2
    aget-object v4, v5, v4

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/x51;->e()V

    .line 4
    :cond_1
    invoke-direct {p0, v7, v8}, Lcom/google/android/gms/internal/ads/t52;->v(J)V

    .line 5
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/x51;->d()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/t52;->F:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/t52;->F:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->C:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/gms/internal/ads/t52;->w(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->C:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    return v3

    :cond_4
    iput v1, p0, Lcom/google/android/gms/internal/ads/t52;->F:I

    return v2
.end method

.method private final y()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->D()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/t52;->y:F

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/t52;->y:F

    .line 3
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private final z(Lcom/google/android/gms/internal/ads/d6;Z)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->A()Lcom/google/android/gms/internal/ads/oy1;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/oy1;->a:Lcom/google/android/gms/internal/ads/d6;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/d6;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/oy1;->b:Z

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/oy1;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    .line 3
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/oy1;-><init>(Lcom/google/android/gms/internal/ads/d6;ZJJLcom/google/android/gms/internal/ads/pz1;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->D()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->p:Lcom/google/android/gms/internal/ads/oy1;

    return-void

    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->q:Lcom/google/android/gms/internal/ads/oy1;

    return-void
.end method


# virtual methods
.method public final a(Z)J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/t52;->w:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ks1;->b(Z)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->F()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/nw1;->a(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->g:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->g:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/oy1;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/oy1;->d:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->g:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/oy1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->q:Lcom/google/android/gms/internal/ads/oy1;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->q:Lcom/google/android/gms/internal/ads/oy1;

    .line 6
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/oy1;->d:J

    sub-long v2, v0, v2

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/oy1;->a:Lcom/google/android/gms/internal/ads/d6;

    sget-object v4, Lcom/google/android/gms/internal/ads/d6;->a:Lcom/google/android/gms/internal/ads/d6;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/d6;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->q:Lcom/google/android/gms/internal/ads/oy1;

    .line 8
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/oy1;->c:J

    add-long/2addr v0, v2

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->g:Ljava/util/ArrayDeque;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->P:Lcom/google/android/gms/internal/ads/nx1;

    .line 11
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/nx1;->d(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->q:Lcom/google/android/gms/internal/ads/oy1;

    .line 12
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/oy1;->c:J

    add-long/2addr v0, v2

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->g:Ljava/util/ArrayDeque;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/oy1;

    .line 14
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/oy1;->d:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/t52;->q:Lcom/google/android/gms/internal/ads/oy1;

    .line 15
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/oy1;->a:Lcom/google/android/gms/internal/ads/d6;

    iget v4, v4, Lcom/google/android/gms/internal/ads/d6;->c:F

    sub-long/2addr v2, v0

    .line 16
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/wa;->j(JF)J

    move-result-wide v0

    .line 17
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/oy1;->c:J

    sub-long v0, v2, v0

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t52;->P:Lcom/google/android/gms/internal/ads/nx1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/nx1;->e()J

    move-result-wide v2

    .line 19
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/nw1;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_4
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/d6;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/d6;

    iget v1, p1, Lcom/google/android/gms/internal/ads/d6;->c:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/wa;->e0(FFF)F

    move-result v1

    iget p1, p1, Lcom/google/android/gms/internal/ads/d6;->d:F

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/wa;->e0(FFF)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/d6;-><init>(FF)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->A()Lcom/google/android/gms/internal/ads/oy1;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/oy1;->b:Z

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/t52;->z(Lcom/google/android/gms/internal/ads/d6;Z)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/h83;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->o:Lcom/google/android/gms/internal/ads/h83;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/h83;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->o:Lcom/google/android/gms/internal/ads/h83;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t52;->zzt()V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t52;->I:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ks1;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/u4;)I
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/ads/u4;->C:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wa;->p(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/ads/u4;->C:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid PCM encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_0
    iget p1, p1, Lcom/google/android/gms/internal/ads/u4;->C:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    .line 6
    :cond_2
    sget p1, Lcom/google/android/gms/internal/ads/wa;->a:I

    return v1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/u4;I[I)V
    .locals 12

    .line 1
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    const-string v0, "audio/raw"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2
    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->C:I

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/wa;->p(I)Z

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/y8;->a(Z)V

    .line 3
    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->C:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/u4;->A:I

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/wa;->s(II)I

    move-result v3

    .line 4
    iget-object v11, p0, Lcom/google/android/gms/internal/ads/t52;->c:[Lcom/google/android/gms/internal/ads/x51;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/t52;->b:Lcom/google/android/gms/internal/ads/cf2;

    .line 5
    iget v0, p1, Lcom/google/android/gms/internal/ads/u4;->D:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/u4;->E:I

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/cf2;->n(II)V

    sget p2, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 6
    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->A:I

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    const/4 p2, 0x6

    new-array p3, p2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 7
    aput v0, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/t52;->a:Lcom/google/android/gms/internal/ads/lu1;

    .line 8
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/lu1;->n([I)V

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/w31;

    iget p3, p1, Lcom/google/android/gms/internal/ads/u4;->B:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/u4;->A:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/u4;->C:I

    invoke-direct {p2, p3, v0, v2}, Lcom/google/android/gms/internal/ads/w31;-><init>(III)V

    .line 10
    array-length p3, v11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    aget-object v2, v11, v0

    .line 11
    :try_start_0
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/x51;->c(Lcom/google/android/gms/internal/ads/w31;)Lcom/google/android/gms/internal/ads/w31;

    move-result-object v4

    .line 12
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/x51;->b()Z

    move-result v2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdd; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-ne v5, v2, :cond_1

    move-object p2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 13
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdr;

    .line 14
    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/u4;)V

    throw p3

    .line 15
    :cond_2
    iget v8, p2, Lcom/google/android/gms/internal/ads/w31;->d:I

    .line 16
    iget v6, p2, Lcom/google/android/gms/internal/ads/w31;->b:I

    .line 17
    iget p3, p2, Lcom/google/android/gms/internal/ads/w31;->c:I

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/wa;->r(I)I

    move-result v7

    .line 18
    iget p2, p2, Lcom/google/android/gms/internal/ads/w31;->c:I

    invoke-static {v8, p2}, Lcom/google/android/gms/internal/ads/wa;->s(II)I

    move-result v5

    if-eqz v8, :cond_5

    if-eqz v7, :cond_4

    .line 19
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/t52;->N:Z

    new-instance p2, Lcom/google/android/gms/internal/ads/nw1;

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p2

    move-object v2, p1

    .line 20
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/nw1;-><init>(Lcom/google/android/gms/internal/ads/u4;IIIIIIIZ[Lcom/google/android/gms/internal/ads/x51;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->D()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/t52;->l:Lcom/google/android/gms/internal/ads/nw1;

    return-void

    :cond_3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    return-void

    .line 21
    :cond_4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdr;

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x36

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid output channel config (mode=0) for: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/u4;)V

    throw p2

    .line 23
    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdr;

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x30

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid output encoding (mode=0) for: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/u4;)V

    throw p2

    .line 25
    :cond_6
    sget p2, Lcom/google/android/gms/internal/ads/wa;->a:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdr;

    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    const-string v0, "Unable to configure passthrough for: "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/u4;)V

    throw p2
.end method

.method public final g()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->D()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/t52;->G:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t52;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final h()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->F()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ks1;->j(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/t52;->y:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/t52;->y:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->y()V

    :cond_0
    return-void
.end method

.method public final j()Lcom/google/android/gms/internal/ads/d6;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->A()Lcom/google/android/gms/internal/ads/oy1;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oy1;->a:Lcom/google/android/gms/internal/ads/d6;

    return-object v0
.end method

.method public final k(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/t52;->K:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/ads/t52;->K:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/t52;->J:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t52;->zzt()V

    :cond_1
    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/ads/u4;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/t52;->e(Lcom/google/android/gms/internal/ads/u4;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final m(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->A()Lcom/google/android/gms/internal/ads/oy1;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oy1;->a:Lcom/google/android/gms/internal/ads/d6;

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/t52;->z(Lcom/google/android/gms/internal/ads/d6;Z)V

    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/ads/il1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->k:Lcom/google/android/gms/internal/ads/il1;

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t52;->I:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ks1;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/gk3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->L:Lcom/google/android/gms/internal/ads/gk3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gk3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/gk3;->a:I

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->L:Lcom/google/android/gms/internal/ads/gk3;

    .line 4
    iget v0, v0, Lcom/google/android/gms/internal/ads/gk3;->a:I

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->L:Lcom/google/android/gms/internal/ads/gk3;

    return-void
.end method

.method public final q(Ljava/nio/ByteBuffer;JI)Z
    .locals 11

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->B:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/y8;->a(Z)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->l:Lcom/google/android/gms/internal/ads/nw1;

    const/4 v2, 0x0

    if-eqz p4, :cond_6

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->x()Z

    move-result p4

    if-nez p4, :cond_2

    return v1

    :cond_2
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->l:Lcom/google/android/gms/internal/ads/nw1;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    .line 3
    iget v4, v3, Lcom/google/android/gms/internal/ads/nw1;->c:I

    iget v4, p4, Lcom/google/android/gms/internal/ads/nw1;->c:I

    iget v4, v3, Lcom/google/android/gms/internal/ads/nw1;->g:I

    iget v5, p4, Lcom/google/android/gms/internal/ads/nw1;->g:I

    if-ne v4, v5, :cond_3

    iget v4, v3, Lcom/google/android/gms/internal/ads/nw1;->e:I

    iget v5, p4, Lcom/google/android/gms/internal/ads/nw1;->e:I

    if-ne v4, v5, :cond_3

    iget v4, v3, Lcom/google/android/gms/internal/ads/nw1;->f:I

    iget v5, p4, Lcom/google/android/gms/internal/ads/nw1;->f:I

    if-ne v4, v5, :cond_3

    iget v3, v3, Lcom/google/android/gms/internal/ads/nw1;->d:I

    iget v4, p4, Lcom/google/android/gms/internal/ads/nw1;->d:I

    if-ne v3, v4, :cond_3

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/t52;->l:Lcom/google/android/gms/internal/ads/nw1;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/t52;->G(Landroid/media/AudioTrack;)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {p4}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    .line 6
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/nw1;->a:Lcom/google/android/gms/internal/ads/u4;

    iget v4, v3, Lcom/google/android/gms/internal/ads/u4;->D:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/u4;->E:I

    invoke-virtual {p4, v4, v3}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t52;->O:Z

    goto :goto_2

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->H()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t52;->h()Z

    move-result p4

    if-eqz p4, :cond_4

    return v1

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t52;->zzt()V

    .line 10
    :cond_5
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/t52;->B(J)V

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->D()Z

    move-result p4

    if-nez p4, :cond_a

    :try_start_0
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->e:Landroid/os/ConditionVariable;

    .line 11
    invoke-virtual {p4}, Landroid/os/ConditionVariable;->block()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t52;->o:Lcom/google/android/gms/internal/ads/h83;

    iget v4, p0, Lcom/google/android/gms/internal/ads/t52;->K:I

    .line 14
    invoke-virtual {p4, v1, v3, v4}, Lcom/google/android/gms/internal/ads/nw1;->c(ZLcom/google/android/gms/internal/ads/h83;I)Landroid/media/AudioTrack;

    move-result-object p4
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 15
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/t52;->G(Landroid/media/AudioTrack;)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t52;->h:Lcom/google/android/gms/internal/ads/s42;

    if-nez v3, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/ads/s42;

    .line 16
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/s42;-><init>(Lcom/google/android/gms/internal/ads/t52;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/t52;->h:Lcom/google/android/gms/internal/ads/s42;

    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t52;->h:Lcom/google/android/gms/internal/ads/s42;

    .line 17
    invoke-virtual {v3, p4}, Lcom/google/android/gms/internal/ads/s42;->a(Landroid/media/AudioTrack;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    .line 18
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/nw1;->a:Lcom/google/android/gms/internal/ads/u4;

    iget v4, v3, Lcom/google/android/gms/internal/ads/u4;->D:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/u4;->E:I

    invoke-virtual {p4, v4, v3}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    :cond_8
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 19
    invoke-virtual {p4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/internal/ads/t52;->K:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    .line 20
    iget v5, p4, Lcom/google/android/gms/internal/ads/nw1;->c:I

    iget v6, p4, Lcom/google/android/gms/internal/ads/nw1;->g:I

    iget v7, p4, Lcom/google/android/gms/internal/ads/nw1;->d:I

    const/4 v5, 0x0

    iget v8, p4, Lcom/google/android/gms/internal/ads/nw1;->h:I

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/ks1;->a(Landroid/media/AudioTrack;ZIII)V

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->y()V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->L:Lcom/google/android/gms/internal/ads/gk3;

    .line 22
    iget p4, p4, Lcom/google/android/gms/internal/ads/gk3;->a:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t52;->w:Z

    goto :goto_3

    :catch_0
    move-exception p1

    .line 23
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/t52;->k:Lcom/google/android/gms/internal/ads/il1;

    if-eqz p2, :cond_9

    .line 24
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/il1;->a(Ljava/lang/Exception;)V

    .line 25
    :cond_9
    throw p1
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/t52;->i:Lcom/google/android/gms/internal/ads/o02;

    .line 27
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/o02;->a(Ljava/lang/Exception;)V

    return v1

    .line 28
    :cond_a
    :goto_3
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->i:Lcom/google/android/gms/internal/ads/o02;

    .line 29
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/o02;->b()V

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/t52;->w:Z

    const-wide/16 v3, 0x0

    if-eqz p4, :cond_b

    .line 30
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/t52;->x:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/t52;->v:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/t52;->w:Z

    .line 31
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/t52;->B(J)V

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/t52;->I:Z

    if-eqz p4, :cond_b

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t52;->d()V

    :cond_b
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->F()J

    move-result-wide v5

    invoke-virtual {p4, v5, v6}, Lcom/google/android/gms/internal/ads/ks1;->e(J)Z

    move-result p4

    if-nez p4, :cond_c

    return v1

    :cond_c
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->B:Ljava/nio/ByteBuffer;

    if-nez p4, :cond_14

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p4, v5, :cond_d

    const/4 p4, 0x1

    goto :goto_4

    :cond_d
    const/4 p4, 0x0

    :goto_4
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/y8;->a(Z)V

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p4

    if-nez p4, :cond_e

    return v0

    :cond_e
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    .line 36
    iget p4, p4, Lcom/google/android/gms/internal/ads/nw1;->c:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->p:Lcom/google/android/gms/internal/ads/oy1;

    if-eqz p4, :cond_10

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->x()Z

    move-result p4

    if-nez p4, :cond_f

    return v1

    .line 38
    :cond_f
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/t52;->B(J)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/t52;->p:Lcom/google/android/gms/internal/ads/oy1;

    :cond_10
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/t52;->x:J

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->E()J

    move-result-wide v7

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/t52;->b:Lcom/google/android/gms/internal/ads/cf2;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/cf2;->p()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xf4240

    mul-long v7, v7, v9

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/nw1;->a:Lcom/google/android/gms/internal/ads/u4;

    .line 40
    iget p4, p4, Lcom/google/android/gms/internal/ads/u4;->B:I

    int-to-long v9, p4

    div-long/2addr v7, v9

    add-long/2addr v5, v7

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/t52;->v:Z

    if-nez p4, :cond_11

    sub-long v7, v5, p2

    .line 41
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x30d40

    cmp-long p4, v7, v9

    if-lez p4, :cond_11

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->k:Lcom/google/android/gms/internal/ads/il1;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdu;

    .line 42
    invoke-direct {v7, p2, p3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdu;-><init>(JJ)V

    invoke-interface {p4, v7}, Lcom/google/android/gms/internal/ads/il1;->a(Ljava/lang/Exception;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t52;->v:Z

    :cond_11
    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/t52;->v:Z

    if-eqz p4, :cond_13

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->x()Z

    move-result p4

    if-nez p4, :cond_12

    return v1

    :cond_12
    sub-long v5, p2, v5

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/t52;->x:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/t52;->x:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/t52;->v:Z

    .line 44
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/t52;->B(J)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->k:Lcom/google/android/gms/internal/ads/il1;

    if-eqz p4, :cond_13

    cmp-long v7, v5, v3

    if-eqz v7, :cond_13

    check-cast p4, Lcom/google/android/gms/internal/ads/v72;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/v72;->a:Lcom/google/android/gms/internal/ads/x92;

    .line 45
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/x92;->L0()V

    :cond_13
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    .line 46
    iget p4, p4, Lcom/google/android/gms/internal/ads/nw1;->c:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/t52;->s:J

    .line 47
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    int-to-long v5, p4

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/t52;->s:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->B:Ljava/nio/ByteBuffer;

    .line 48
    :cond_14
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/t52;->v(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->B:Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_15

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/t52;->B:Ljava/nio/ByteBuffer;

    return v0

    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->F()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/ks1;->h(J)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "DefaultAudioSink"

    const-string p2, "Resetting stalled audio track"

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t52;->zzt()V

    return v0

    :cond_16
    return v1
.end method

.method public final zzg()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t52;->v:Z

    return-void
.end method

.method public final zzi()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/t52;->G:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->H()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t52;->G:Z

    :cond_0
    return-void
.end method

.method public final zzt()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/t52;->s:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/t52;->t:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/t52;->u:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/t52;->O:Z

    new-instance v11, Lcom/google/android/gms/internal/ads/oy1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->A()Lcom/google/android/gms/internal/ads/oy1;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/oy1;->a:Lcom/google/android/gms/internal/ads/d6;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->A()Lcom/google/android/gms/internal/ads/oy1;

    move-result-object v3

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/oy1;->b:Z

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    .line 3
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/oy1;-><init>(Lcom/google/android/gms/internal/ads/d6;ZJJLcom/google/android/gms/internal/ads/pz1;)V

    iput-object v11, p0, Lcom/google/android/gms/internal/ads/t52;->q:Lcom/google/android/gms/internal/ads/oy1;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/t52;->x:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->p:Lcom/google/android/gms/internal/ads/oy1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t52;->g:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->B:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->C:Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/t52;->H:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/t52;->G:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/t52;->F:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t52;->b:Lcom/google/android/gms/internal/ads/cf2;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cf2;->o()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/t52;->u()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ks1;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 8
    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/t52;->G(Landroid/media/AudioTrack;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t52;->h:Lcom/google/android/gms/internal/ads/s42;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 12
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/s42;->b(Landroid/media/AudioTrack;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->n:Landroid/media/AudioTrack;

    .line 13
    sget v3, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/t52;->J:Z

    if-nez v3, :cond_2

    iput v2, p0, Lcom/google/android/gms/internal/ads/t52;->K:I

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t52;->l:Lcom/google/android/gms/internal/ads/nw1;

    if-eqz v2, :cond_3

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/t52;->m:Lcom/google/android/gms/internal/ads/nw1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->l:Lcom/google/android/gms/internal/ads/nw1;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->f:Lcom/google/android/gms/internal/ads/ks1;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ks1;->l()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->e:Landroid/os/ConditionVariable;

    .line 15
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    new-instance v0, Lcom/google/android/gms/internal/ads/mv1;

    const-string v2, "ExoPlayer:AudioTrackReleaseThread"

    .line 16
    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/internal/ads/mv1;-><init>(Lcom/google/android/gms/internal/ads/t52;Ljava/lang/String;Landroid/media/AudioTrack;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->j:Lcom/google/android/gms/internal/ads/o02;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o02;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->i:Lcom/google/android/gms/internal/ads/o02;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o02;->b()V

    return-void
.end method

.method public final zzu()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t52;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->c:[Lcom/google/android/gms/internal/ads/x51;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/x51;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t52;->d:[Lcom/google/android/gms/internal/ads/x51;

    .line 4
    array-length v1, v0

    const/4 v1, 0x0

    :goto_1
    if-gtz v1, :cond_1

    aget-object v3, v0, v1

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/x51;->f()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/t52;->I:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/t52;->N:Z

    return-void
.end method
