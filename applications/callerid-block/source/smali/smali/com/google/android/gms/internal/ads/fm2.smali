.class public final Lcom/google/android/gms/internal/ads/fm2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private A:Ljava/lang/reflect/Method;

.field private B:I

.field private C:J

.field private D:J

.field private E:I

.field private F:J

.field private G:J

.field private H:I

.field private I:I

.field private J:J

.field private K:J

.field private L:J

.field private M:F

.field private N:[Lcom/google/android/gms/internal/ads/rl2;

.field private O:[Ljava/nio/ByteBuffer;

.field private P:Ljava/nio/ByteBuffer;

.field private Q:Ljava/nio/ByteBuffer;

.field private R:[B

.field private S:I

.field private T:I

.field private U:Z

.field private V:Z

.field private W:I

.field private X:Z

.field private Y:J

.field private final a:Lcom/google/android/gms/internal/ads/gm2;

.field private final b:Lcom/google/android/gms/internal/ads/mm2;

.field private final c:[Lcom/google/android/gms/internal/ads/rl2;

.field private final d:Lcom/google/android/gms/internal/ads/dm2;

.field private final e:Landroid/os/ConditionVariable;

.field private final f:[J

.field private final g:Lcom/google/android/gms/internal/ads/bm2;

.field private final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/em2;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/media/AudioTrack;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:J

.field private q:Lcom/google/android/gms/internal/ads/gl2;

.field private r:Lcom/google/android/gms/internal/ads/gl2;

.field private s:J

.field private t:J

.field private u:I

.field private v:I

.field private w:J

.field private x:J

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ql2;[Lcom/google/android/gms/internal/ads/rl2;Lcom/google/android/gms/internal/ads/dm2;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fm2;->d:Lcom/google/android/gms/internal/ads/dm2;

    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->e:Landroid/os/ConditionVariable;

    sget p1, Lcom/google/android/gms/internal/ads/zr2;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x12

    if-lt p1, v1, :cond_0

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->A:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    sget p1, Lcom/google/android/gms/internal/ads/zr2;->a:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/cm2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/cm2;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/bm2;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/bm2;-><init>(Lcom/google/android/gms/internal/ads/am2;)V

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    new-instance p1, Lcom/google/android/gms/internal/ads/gm2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/gm2;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->a:Lcom/google/android/gms/internal/ads/gm2;

    new-instance v0, Lcom/google/android/gms/internal/ads/mm2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/mm2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->b:Lcom/google/android/gms/internal/ads/mm2;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/rl2;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/fm2;->c:[Lcom/google/android/gms/internal/ads/rl2;

    new-instance v2, Lcom/google/android/gms/internal/ads/km2;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/km2;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput-object p1, v1, p3

    const/4 p1, 0x2

    invoke-static {p2, v3, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v1, p1

    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->f:[J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/fm2;->M:F

    iput v3, p0, Lcom/google/android/gms/internal/ads/fm2;->I:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/fm2;->W:I

    sget-object p1, Lcom/google/android/gms/internal/ads/gl2;->d:Lcom/google/android/gms/internal/ads/gl2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->r:Lcom/google/android/gms/internal/ads/gl2;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/fm2;->T:I

    new-array p1, v3, [Lcom/google/android/gms/internal/ads/rl2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->N:[Lcom/google/android/gms/internal/ads/rl2;

    new-array p1, v3, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->O:[Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->h:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic o(Lcom/google/android/gms/internal/ads/fm2;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/fm2;->e:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private final p()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fm2;->c:[Lcom/google/android/gms/internal/ads/rl2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/rl2;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/rl2;->i()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Lcom/google/android/gms/internal/ads/rl2;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/rl2;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->N:[Lcom/google/android/gms/internal/ads/rl2;

    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->O:[Ljava/nio/ByteBuffer;

    :goto_2
    if-ge v2, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->N:[Lcom/google/android/gms/internal/ads/rl2;

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rl2;->i()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fm2;->O:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rl2;->g()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private final q(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->N:[Lcom/google/android/gms/internal/ads/rl2;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fm2;->O:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fm2;->P:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/rl2;->a:Ljava/nio/ByteBuffer;

    :cond_1
    :goto_1
    if-ne v1, v0, :cond_2

    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/fm2;->r(Ljava/nio/ByteBuffer;J)Z

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fm2;->N:[Lcom/google/android/gms/internal/ads/rl2;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/rl2;->j(Ljava/nio/ByteBuffer;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/rl2;->g()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/fm2;->O:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final r(Ljava/nio/ByteBuffer;J)Z
    .locals 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    return p3

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/fm2;->Q:Ljava/nio/ByteBuffer;

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-ne p2, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jr2;->a(Z)V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->Q:Ljava/nio/ByteBuffer;

    sget p2, Lcom/google/android/gms/internal/ads/zr2;->a:I

    if-ge p2, v0, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fm2;->R:[B

    if-eqz v2, :cond_3

    array-length v2, v2

    if-ge v2, p2, :cond_4

    :cond_3
    new-array v2, p2, [B

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/fm2;->R:[B

    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fm2;->R:[B

    invoke-virtual {p1, v3, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v1, p0, Lcom/google/android/gms/internal/ads/fm2;->S:I

    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    sget v2, Lcom/google/android/gms/internal/ads/zr2;->a:I

    if-ge v2, v0, :cond_7

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/fm2;->F:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bm2;->d()J

    move-result-wide v4

    iget v0, p0, Lcom/google/android/gms/internal/ads/fm2;->E:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/fm2;->o:I

    int-to-long v7, v0

    mul-long v4, v4, v7

    sub-long/2addr v2, v4

    long-to-int v0, v2

    sub-int/2addr v6, v0

    if-lez v6, :cond_6

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fm2;->R:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/fm2;->S:I

    invoke-virtual {v2, v3, v4, v0}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    if-lez v0, :cond_8

    iget v2, p0, Lcom/google/android/gms/internal/ads/fm2;->S:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/fm2;->S:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fm2;->Y:J

    if-ltz v0, :cond_c

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/fm2;->n:Z

    if-nez p1, :cond_9

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/fm2;->F:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fm2;->F:J

    :cond_9
    if-ne v0, p2, :cond_b

    if-eqz p1, :cond_a

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/fm2;->G:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/fm2;->H:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/fm2;->G:J

    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->Q:Ljava/nio/ByteBuffer;

    return p3

    :cond_b
    return v1

    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzjy;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzjy;-><init>(I)V

    throw p1
.end method

.method private final s()Z
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/ads/fm2;->T:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fm2;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->N:[Lcom/google/android/gms/internal/ads/rl2;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/fm2;->T:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/fm2;->T:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fm2;->N:[Lcom/google/android/gms/internal/ads/rl2;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/rl2;->d()V

    :cond_2
    invoke-direct {p0, v7, v8}, Lcom/google/android/gms/internal/ads/fm2;->q(J)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/rl2;->e()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/fm2;->T:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->Q:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/gms/internal/ads/fm2;->r(Ljava/nio/ByteBuffer;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->Q:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    :cond_5
    iput v1, p0, Lcom/google/android/gms/internal/ads/fm2;->T:I

    return v2
.end method

.method private final t()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->u()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zr2;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/fm2;->M:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/fm2;->M:F

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private final u()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final v(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/fm2;->j:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final w(J)J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/fm2;->j:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final x()J
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fm2;->n:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->G:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->F:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/fm2;->E:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private final y()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->w:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/fm2;->v:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/fm2;->u:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->x:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fm2;->y:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->z:J

    return-void
.end method

.method private final z()Z
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zr2;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-ge v0, v3, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/fm2;->m:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method


# virtual methods
.method public final a(Z)J
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm2;->u()Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, v0, Lcom/google/android/gms/internal/ads/fm2;->I:I

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bm2;->e()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    div-long/2addr v7, v3

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/fm2;->x:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0x7530

    const/4 v13, 0x0

    cmp-long v14, v9, v11

    if-ltz v14, :cond_2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/fm2;->f:[J

    iget v10, v0, Lcom/google/android/gms/internal/ads/fm2;->u:I

    sub-long v11, v1, v7

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    const/16 v9, 0xa

    rem-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/gms/internal/ads/fm2;->u:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/fm2;->v:I

    if-ge v10, v9, :cond_1

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/google/android/gms/internal/ads/fm2;->v:I

    :cond_1
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/fm2;->x:J

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/fm2;->w:J

    const/4 v9, 0x0

    :goto_0
    iget v10, v0, Lcom/google/android/gms/internal/ads/fm2;->v:I

    if-ge v9, v10, :cond_2

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/fm2;->w:J

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/fm2;->f:[J

    aget-wide v15, v14, v9

    int-to-long v5, v10

    div-long/2addr v15, v5

    add-long/2addr v11, v15

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/fm2;->w:J

    add-int/lit8 v9, v9, 0x1

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm2;->z()Z

    move-result v5

    if-nez v5, :cond_7

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/fm2;->z:J

    sub-long v5, v7, v5

    const-wide/32 v9, 0x7a120

    cmp-long v11, v5, v9

    if-ltz v11, :cond_7

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/bm2;->f()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/fm2;->y:Z

    const-string v6, "AudioTrack"

    const-wide/32 v9, 0x4c4b40

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/bm2;->g()J

    move-result-wide v11

    div-long/2addr v11, v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/bm2;->h()J

    move-result-wide v14

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/fm2;->K:J

    cmp-long v5, v11, v3

    if-gez v5, :cond_3

    :goto_1
    iput-boolean v13, v0, Lcom/google/android/gms/internal/ads/fm2;->y:Z

    goto :goto_3

    :cond_3
    sub-long v3, v11, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-string v5, ", "

    cmp-long v16, v3, v9

    if-lez v16, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x88

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Spurious audio timestamp (system clock mismatch): "

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-direct {v0, v14, v15}, Lcom/google/android/gms/internal/ads/fm2;->v(J)J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v16, v3, v9

    if-lez v16, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x8a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Spurious audio timestamp (frame position mismatch): "

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fm2;->A:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_6

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/fm2;->n:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    const-wide/16 v11, 0x3e8

    mul-long v3, v3, v11

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/fm2;->p:J

    sub-long/2addr v3, v11

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/fm2;->L:J

    const-wide/16 v11, 0x0

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/fm2;->L:J

    cmp-long v1, v3, v9

    if-lez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Ignoring impossibly large audio latency: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/fm2;->L:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/fm2;->A:Ljava/lang/reflect/Method;

    :cond_6
    :goto_4
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/fm2;->z:J

    :cond_7
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/fm2;->y:Z

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/bm2;->g()J

    move-result-wide v5

    div-long/2addr v5, v3

    sub-long/2addr v1, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/fm2;->w(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bm2;->h()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/fm2;->v(J)J

    move-result-wide v1

    goto :goto_7

    :cond_8
    iget v3, v0, Lcom/google/android/gms/internal/ads/fm2;->v:I

    if-nez v3, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bm2;->e()J

    move-result-wide v1

    goto :goto_6

    :cond_9
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/fm2;->w:J

    add-long/2addr v1, v3

    :goto_6
    if-nez p1, :cond_a

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/fm2;->L:J

    sub-long/2addr v1, v3

    :cond_a
    :goto_7
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/fm2;->J:J

    :goto_8
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fm2;->h:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fm2;->h:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/em2;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/em2;->b(Lcom/google/android/gms/internal/ads/em2;)J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-ltz v7, :cond_b

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fm2;->h:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/em2;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/em2;->a(Lcom/google/android/gms/internal/ads/em2;)Lcom/google/android/gms/internal/ads/gl2;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/fm2;->r:Lcom/google/android/gms/internal/ads/gl2;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/em2;->b(Lcom/google/android/gms/internal/ads/em2;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/fm2;->t:J

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/em2;->c(Lcom/google/android/gms/internal/ads/em2;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/fm2;->J:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/fm2;->s:J

    goto :goto_8

    :cond_b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fm2;->r:Lcom/google/android/gms/internal/ads/gl2;

    iget v5, v5, Lcom/google/android/gms/internal/ads/gl2;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_c

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/fm2;->s:J

    add-long/2addr v1, v5

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/fm2;->t:J

    sub-long/2addr v1, v5

    goto :goto_a

    :cond_c
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fm2;->h:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fm2;->b:Lcom/google/android/gms/internal/ads/mm2;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/mm2;->n()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    cmp-long v9, v5, v7

    if-ltz v9, :cond_d

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/fm2;->s:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/fm2;->t:J

    sub-long v9, v1, v7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fm2;->b:Lcom/google/android/gms/internal/ads/mm2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mm2;->m()J

    move-result-wide v11

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fm2;->b:Lcom/google/android/gms/internal/ads/mm2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mm2;->n()J

    move-result-wide v13

    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zr2;->j(JJJ)J

    move-result-wide v1

    goto :goto_9

    :cond_d
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/fm2;->s:J

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/fm2;->r:Lcom/google/android/gms/internal/ads/gl2;

    iget v7, v7, Lcom/google/android/gms/internal/ads/gl2;->a:F

    float-to-double v7, v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/fm2;->t:J

    sub-long/2addr v1, v9

    long-to-double v1, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v1

    double-to-long v1, v7

    :goto_9
    add-long/2addr v1, v5

    :goto_a
    add-long/2addr v3, v1

    return-wide v3

    :cond_e
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method public final b(Ljava/lang/String;IIII[I)V
    .locals 6

    invoke-static {p4, p2}, Lcom/google/android/gms/internal/ads/zr2;->p(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/fm2;->B:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->a:Lcom/google/android/gms/internal/ads/gm2;

    invoke-virtual {p1, p6}, Lcom/google/android/gms/internal/ads/gm2;->k([I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->c:[Lcom/google/android/gms/internal/ads/rl2;

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ge p6, v1, :cond_1

    aget-object v1, p1, p6

    :try_start_0
    invoke-interface {v1, p3, p2, p4}, Lcom/google/android/gms/internal/ads/rl2;->a(III)Z

    move-result v3
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzjh; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, v3

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/rl2;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/rl2;->c()I

    move-result p2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/rl2;->f()I

    const/4 p4, 0x2

    :cond_0
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzju;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->p()V

    :cond_2
    const/16 p1, 0xfc

    packed-switch p2, :pswitch_data_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzju;

    new-instance p3, Ljava/lang/StringBuilder;

    const/16 p4, 0x26

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Unsupported channel count: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget p6, Lcom/google/android/gms/internal/ads/rk2;->a:I

    goto :goto_1

    :pswitch_1
    const/16 p6, 0x4fc

    goto :goto_1

    :pswitch_2
    const/16 p6, 0xfc

    goto :goto_1

    :pswitch_3
    const/16 p6, 0xdc

    goto :goto_1

    :pswitch_4
    const/16 p6, 0xcc

    goto :goto_1

    :pswitch_5
    const/16 p6, 0x1c

    goto :goto_1

    :pswitch_6
    const/16 p6, 0xc

    goto :goto_1

    :pswitch_7
    const/4 p6, 0x4

    :goto_1
    sget v3, Lcom/google/android/gms/internal/ads/zr2;->a:I

    const/16 v4, 0x17

    if-gt v3, v4, :cond_4

    sget-object v4, Lcom/google/android/gms/internal/ads/zr2;->b:Ljava/lang/String;

    const-string v5, "foster"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/google/android/gms/internal/ads/zr2;->c:Ljava/lang/String;

    const-string v5, "NVIDIA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eq p2, v1, :cond_5

    const/4 v1, 0x5

    if-eq p2, v1, :cond_5

    const/4 p1, 0x7

    if-eq p2, p1, :cond_3

    goto :goto_2

    :cond_3
    sget p1, Lcom/google/android/gms/internal/ads/rk2;->a:I

    goto :goto_3

    :cond_4
    :goto_2
    move p1, p6

    :cond_5
    :goto_3
    const/16 p6, 0x19

    if-gt v3, p6, :cond_6

    sget-object p6, Lcom/google/android/gms/internal/ads/zr2;->b:Ljava/lang/String;

    const-string v1, "fugu"

    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    :cond_6
    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->u()Z

    move-result p6

    if-eqz p6, :cond_8

    iget p6, p0, Lcom/google/android/gms/internal/ads/fm2;->l:I

    if-ne p6, p4, :cond_8

    iget p6, p0, Lcom/google/android/gms/internal/ads/fm2;->j:I

    if-ne p6, p3, :cond_8

    iget p6, p0, Lcom/google/android/gms/internal/ads/fm2;->k:I

    if-eq p6, p1, :cond_7

    goto :goto_4

    :cond_7
    return-void

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fm2;->m()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/fm2;->l:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/fm2;->n:Z

    iput p3, p0, Lcom/google/android/gms/internal/ads/fm2;->j:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/fm2;->k:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/fm2;->m:I

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/zr2;->p(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/fm2;->E:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/fm2;->m:I

    invoke-static {p3, p1, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_9

    const/4 p5, 0x1

    :cond_9
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    mul-int/lit8 p2, p1, 0x4

    const-wide/32 p3, 0x3d090

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/ads/fm2;->w(J)J

    move-result-wide p3

    long-to-int p4, p3

    iget p3, p0, Lcom/google/android/gms/internal/ads/fm2;->E:I

    mul-int p4, p4, p3

    int-to-long p5, p1

    const-wide/32 v0, 0xb71b0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/fm2;->w(J)J

    move-result-wide v0

    iget p1, p0, Lcom/google/android/gms/internal/ads/fm2;->E:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-static {p5, p6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p5

    long-to-int p1, p5

    if-ge p2, p4, :cond_a

    move p2, p4

    goto :goto_5

    :cond_a
    if-le p2, p1, :cond_b

    move p2, p1

    :cond_b
    :goto_5
    iput p2, p0, Lcom/google/android/gms/internal/ads/fm2;->o:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/fm2;->E:I

    div-int/2addr p2, p1

    int-to-long p1, p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/fm2;->v(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/fm2;->p:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->r:Lcom/google/android/gms/internal/ads/gl2;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fm2;->i(Lcom/google/android/gms/internal/ads/gl2;)Lcom/google/android/gms/internal/ads/gl2;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final c()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fm2;->V:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->K:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/fm2;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/fm2;->I:I

    :cond_0
    return-void
.end method

.method public final e(Ljava/nio/ByteBuffer;J)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->P:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jr2;->a(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm2;->u()Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_5

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    iget v15, v1, Lcom/google/android/gms/internal/ads/fm2;->W:I

    new-instance v4, Landroid/media/AudioTrack;

    const/4 v9, 0x3

    iget v10, v1, Lcom/google/android/gms/internal/ads/fm2;->j:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/fm2;->k:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/fm2;->m:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/fm2;->o:I

    const/4 v14, 0x1

    move-object v8, v4

    if-nez v15, :cond_2

    invoke-direct/range {v8 .. v14}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_2

    :cond_2
    invoke-direct/range {v8 .. v15}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    :goto_2
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v6, :cond_4

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    iget v8, v1, Lcom/google/android/gms/internal/ads/fm2;->W:I

    if-eq v8, v4, :cond_3

    iput v4, v1, Lcom/google/android/gms/internal/ads/fm2;->W:I

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/fm2;->d:Lcom/google/android/gms/internal/ads/dm2;

    check-cast v8, Lcom/google/android/gms/internal/ads/im2;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/im2;->a:Lcom/google/android/gms/internal/ads/jm2;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/jm2;->a0(Lcom/google/android/gms/internal/ads/jm2;)Lcom/google/android/gms/internal/ads/yl2;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/yl2;->f(I)V

    :cond_3
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm2;->z()Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/ads/bm2;->a(Landroid/media/AudioTrack;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm2;->t()V

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/fm2;->X:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/fm2;->V:Z

    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm2;->c()V

    goto :goto_4

    :cond_4
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    throw v0

    :catch_0
    :goto_3
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjv;

    iget v2, v1, Lcom/google/android/gms/internal/ads/fm2;->j:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/fm2;->k:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/fm2;->o:I

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzjv;-><init>(IIII)V

    throw v0

    :cond_5
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm2;->z()Z

    move-result v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v10, :cond_6

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/fm2;->X:Z

    return v5

    :cond_6
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v6, :cond_8

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/bm2;->d()J

    move-result-wide v11

    cmp-long v4, v11, v8

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    return v5

    :cond_8
    :goto_5
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/fm2;->X:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm2;->h()Z

    move-result v11

    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/fm2;->X:Z

    if-eqz v4, :cond_9

    if-nez v11, :cond_9

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v6, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/fm2;->Y:J

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->d:Lcom/google/android/gms/internal/ads/dm2;

    iget v15, v1, Lcom/google/android/gms/internal/ads/fm2;->o:I

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/fm2;->p:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/rk2;->a(J)J

    move-result-wide v17

    check-cast v4, Lcom/google/android/gms/internal/ads/im2;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/im2;->a:Lcom/google/android/gms/internal/ads/jm2;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jm2;->a0(Lcom/google/android/gms/internal/ads/jm2;)Lcom/google/android/gms/internal/ads/yl2;

    move-result-object v4

    sub-long v19, v11, v13

    move v7, v15

    move-object v15, v4

    move/from16 v16, v7

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/yl2;->d(IJJ)V

    :cond_9
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->P:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_a

    return v6

    :cond_a
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/fm2;->n:Z

    if-eqz v4, :cond_f

    iget v4, v1, Lcom/google/android/gms/internal/ads/fm2;->H:I

    if-nez v4, :cond_f

    iget v4, v1, Lcom/google/android/gms/internal/ads/fm2;->m:I

    const/4 v7, 0x7

    const/4 v8, 0x5

    const/4 v9, 0x6

    if-eq v4, v7, :cond_e

    const/16 v7, 0x8

    if-ne v4, v7, :cond_b

    goto :goto_6

    :cond_b
    if-ne v4, v8, :cond_c

    sget v4, Lcom/google/android/gms/internal/ads/pl2;->d:I

    const/16 v4, 0x600

    goto :goto_7

    :cond_c
    if-ne v4, v9, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/pl2;->c(Ljava/nio/ByteBuffer;)I

    move-result v4

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected audio encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v7, v4, 0x4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v6

    shl-int/2addr v7, v9

    add-int/2addr v4, v8

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xfc

    shr-int/2addr v4, v10

    or-int/2addr v4, v7

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x20

    :goto_7
    iput v4, v1, Lcom/google/android/gms/internal/ads/fm2;->H:I

    :cond_f
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->q:Lcom/google/android/gms/internal/ads/gl2;

    if-eqz v4, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm2;->s()Z

    move-result v4

    if-nez v4, :cond_10

    return v5

    :cond_10
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->h:Ljava/util/LinkedList;

    new-instance v7, Lcom/google/android/gms/internal/ads/em2;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/fm2;->q:Lcom/google/android/gms/internal/ads/gl2;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm2;->x()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Lcom/google/android/gms/internal/ads/fm2;->v(J)J

    move-result-wide v15

    const/16 v17, 0x0

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/em2;-><init>(Lcom/google/android/gms/internal/ads/gl2;JJLcom/google/android/gms/internal/ads/am2;)V

    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->q:Lcom/google/android/gms/internal/ads/gl2;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm2;->p()V

    :cond_11
    iget v4, v1, Lcom/google/android/gms/internal/ads/fm2;->I:I

    if-nez v4, :cond_12

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/fm2;->J:J

    iput v6, v1, Lcom/google/android/gms/internal/ads/fm2;->I:I

    goto :goto_9

    :cond_12
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/fm2;->J:J

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/fm2;->n:Z

    if-eqz v4, :cond_13

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/fm2;->D:J

    goto :goto_8

    :cond_13
    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/fm2;->C:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/fm2;->B:I

    int-to-long v13, v4

    div-long/2addr v11, v13

    :goto_8
    invoke-direct {v1, v11, v12}, Lcom/google/android/gms/internal/ads/fm2;->v(J)J

    move-result-wide v11

    add-long/2addr v7, v11

    iget v4, v1, Lcom/google/android/gms/internal/ads/fm2;->I:I

    if-ne v4, v6, :cond_14

    sub-long v11, v7, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v13, 0x30d40

    cmp-long v4, v11, v13

    if-lez v4, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v9, 0x50

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Discontinuity detected [expected "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", got "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "AudioTrack"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, v1, Lcom/google/android/gms/internal/ads/fm2;->I:I

    :cond_14
    iget v4, v1, Lcom/google/android/gms/internal/ads/fm2;->I:I

    if-ne v4, v10, :cond_15

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/fm2;->J:J

    sub-long v7, v2, v7

    add-long/2addr v9, v7

    iput-wide v9, v1, Lcom/google/android/gms/internal/ads/fm2;->J:J

    iput v6, v1, Lcom/google/android/gms/internal/ads/fm2;->I:I

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fm2;->d:Lcom/google/android/gms/internal/ads/dm2;

    check-cast v4, Lcom/google/android/gms/internal/ads/im2;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/im2;->a:Lcom/google/android/gms/internal/ads/jm2;

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/jm2;->b0(Lcom/google/android/gms/internal/ads/jm2;Z)Z

    :cond_15
    :goto_9
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/fm2;->n:Z

    if-eqz v4, :cond_16

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/fm2;->D:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/fm2;->H:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/fm2;->D:J

    goto :goto_a

    :cond_16
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/fm2;->C:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/fm2;->C:J

    :goto_a
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/fm2;->P:Ljava/nio/ByteBuffer;

    :cond_17
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/fm2;->n:Z

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/fm2;->P:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/fm2;->r(Ljava/nio/ByteBuffer;J)Z

    goto :goto_b

    :cond_18
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/fm2;->q(J)V

    :goto_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/fm2;->P:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/fm2;->P:Ljava/nio/ByteBuffer;

    return v6

    :cond_19
    return v5
.end method

.method public final f()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fm2;->U:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->u()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bm2;->b(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fm2;->U:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->u()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fm2;->U:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fm2;->h()Z

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
    .locals 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->u()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->x()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bm2;->d()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final i(Lcom/google/android/gms/internal/ads/gl2;)Lcom/google/android/gms/internal/ads/gl2;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fm2;->n:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/gl2;->d:Lcom/google/android/gms/internal/ads/gl2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->r:Lcom/google/android/gms/internal/ads/gl2;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/gl2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fm2;->b:Lcom/google/android/gms/internal/ads/mm2;

    iget v2, p1, Lcom/google/android/gms/internal/ads/gl2;->a:F

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/mm2;->k(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fm2;->b:Lcom/google/android/gms/internal/ads/mm2;

    iget p1, p1, Lcom/google/android/gms/internal/ads/gl2;->b:F

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/mm2;->l(F)F

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gl2;-><init>(FF)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->q:Lcom/google/android/gms/internal/ads/gl2;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->h:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->h:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/em2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/em2;->a(Lcom/google/android/gms/internal/ads/em2;)Lcom/google/android/gms/internal/ads/gl2;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->r:Lcom/google/android/gms/internal/ads/gl2;

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gl2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->u()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->q:Lcom/google/android/gms/internal/ads/gl2;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->r:Lcom/google/android/gms/internal/ads/gl2;

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fm2;->r:Lcom/google/android/gms/internal/ads/gl2;

    return-object p1
.end method

.method public final j()Lcom/google/android/gms/internal/ads/gl2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->r:Lcom/google/android/gms/internal/ads/gl2;

    return-object v0
.end method

.method public final k(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/fm2;->M:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/fm2;->M:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->t()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fm2;->V:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bm2;->c()V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->C:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->D:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->F:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->G:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/fm2;->H:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fm2;->q:Lcom/google/android/gms/internal/ads/gl2;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/fm2;->r:Lcom/google/android/gms/internal/ads/gl2;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/fm2;->q:Lcom/google/android/gms/internal/ads/gl2;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fm2;->h:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fm2;->h:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/em2;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/em2;->a(Lcom/google/android/gms/internal/ads/em2;)Lcom/google/android/gms/internal/ads/gl2;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/fm2;->r:Lcom/google/android/gms/internal/ads/gl2;

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fm2;->h:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->s:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->t:J

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/fm2;->P:Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/fm2;->Q:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fm2;->N:[Lcom/google/android/gms/internal/ads/rl2;

    array-length v6, v5

    if-ge v3, v6, :cond_2

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/rl2;->i()V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/fm2;->O:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/rl2;->g()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fm2;->U:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/fm2;->T:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/fm2;->I:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fm2;->L:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fm2;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/fm2;->i:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fm2;->g:Lcom/google/android/gms/internal/ads/bm2;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/bm2;->a(Landroid/media/AudioTrack;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fm2;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lcom/google/android/gms/internal/ads/am2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/am2;-><init>(Lcom/google/android/gms/internal/ads/fm2;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method

.method public final n()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fm2;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm2;->c:[Lcom/google/android/gms/internal/ads/rl2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/rl2;->h()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/fm2;->W:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/fm2;->V:Z

    return-void
.end method
