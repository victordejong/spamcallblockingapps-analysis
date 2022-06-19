.class public final Lcom/google/android/gms/internal/ads/bw3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gw3;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Z

.field private final c:Lcom/google/android/gms/internal/ads/ka;

.field private final d:Lcom/google/android/gms/internal/ads/la;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/android/gms/internal/ads/yr3;

.field private h:Lcom/google/android/gms/internal/ads/yr3;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:J

.field private s:I

.field private t:J

.field private u:Lcom/google/android/gms/internal/ads/yr3;

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/bw3;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/ka;

    const/4 v1, 0x7

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/ka;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    new-instance v0, Lcom/google/android/gms/internal/ads/la;

    sget-object v1, Lcom/google/android/gms/internal/ads/bw3;->a:[B

    const/16 v2, 0xa

    .line 2
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/la;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bw3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bw3;->h()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/bw3;->n:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/bw3;->o:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bw3;->r:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bw3;->t:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/bw3;->b:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bw3;->e:Ljava/lang/String;

    return-void
.end method

.method public static e(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bw3;->m:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bw3;->h()V

    return-void
.end method

.method private final g(Lcom/google/android/gms/internal/ads/la;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/bw3;->j:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/bw3;->j:I

    .line 2
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/bw3;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/bw3;->j:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final h()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/bw3;->i:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/bw3;->j:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/bw3;->k:I

    return-void
.end method

.method private final i(Lcom/google/android/gms/internal/ads/yr3;JII)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/bw3;->i:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/bw3;->j:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bw3;->u:Lcom/google/android/gms/internal/ads/yr3;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/bw3;->v:J

    iput p5, p0, Lcom/google/android/gms/internal/ads/bw3;->s:I

    return-void
.end method

.method private final j()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/bw3;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/bw3;->j:I

    return-void
.end method

.method private static final k(BB)Z
    .locals 0

    and-int/lit16 p0, p1, 0xff

    const p1, 0xff00

    or-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/bw3;->e(I)Z

    move-result p0

    return p0
.end method

.method private static final l(Lcom/google/android/gms/internal/ads/la;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/tx3;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bw3;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bw3;->g:Lcom/google/android/gms/internal/ads/yr3;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bw3;->u:Lcom/google/android/gms/internal/ads/yr3;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bw3;->b:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->a()V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->b()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bw3;->h:Lcom/google/android/gms/internal/ads/yr3;

    new-instance v0, Lcom/google/android/gms/internal/ads/s4;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/s4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    const-string p2, "application/id3"

    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object p2

    .line 10
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/tq3;

    .line 11
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/tq3;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bw3;->h:Lcom/google/android/gms/internal/ads/yr3;

    return-void
.end method

.method public final c(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/bw3;->t:J

    :cond_0
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/la;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->g:Lcom/google/android/gms/internal/ads/yr3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v0

    if-lez v0, :cond_1b

    iget v0, v6, Lcom/google/android/gms/internal/ads/bw3;->i:I

    const/16 v1, 0xd

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v10, :cond_8

    const/16 v5, 0xa

    if-eq v0, v9, :cond_7

    if-eq v0, v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/bw3;->s:I

    iget v2, v6, Lcom/google/android/gms/internal/ads/bw3;->j:I

    sub-int/2addr v1, v2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/bw3;->u:Lcom/google/android/gms/internal/ads/yr3;

    .line 5
    invoke-interface {v1, v7, v0}, Lcom/google/android/gms/internal/ads/yr3;->b(Lcom/google/android/gms/internal/ads/la;I)V

    iget v1, v6, Lcom/google/android/gms/internal/ads/bw3;->j:I

    add-int/2addr v1, v0

    iput v1, v6, Lcom/google/android/gms/internal/ads/bw3;->j:I

    iget v12, v6, Lcom/google/android/gms/internal/ads/bw3;->s:I

    if-ne v1, v12, :cond_0

    iget-wide v9, v6, Lcom/google/android/gms/internal/ads/bw3;->t:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v9, v0

    if-eqz v2, :cond_1

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/bw3;->u:Lcom/google/android/gms/internal/ads/yr3;

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 6
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/bw3;->t:J

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/bw3;->v:J

    add-long/2addr v0, v2

    iput-wide v0, v6, Lcom/google/android/gms/internal/ads/bw3;->t:J

    .line 7
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/bw3;->h()V

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/bw3;->l:Z

    const/4 v11, 0x5

    if-eq v10, v0, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    const/4 v0, 0x7

    :goto_1
    iget-object v12, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/ka;->a:[B

    .line 9
    invoke-direct {v6, v7, v12, v0}, Lcom/google/android/gms/internal/ads/bw3;->g(Lcom/google/android/gms/internal/ads/la;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 10
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/ka;->d(I)V

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/bw3;->q:Z

    if-nez v0, :cond_5

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 11
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v0

    add-int/2addr v0, v10

    if-eq v0, v9, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v12, 0x3d

    .line 12
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Detected audio object type: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AdtsReader"

    .line 13
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 14
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/ka;->f(I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 15
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v0

    iget v5, v6, Lcom/google/android/gms/internal/ads/bw3;->o:I

    .line 16
    sget v11, Lcom/google/android/gms/internal/ads/xp3;->c:I

    new-array v9, v9, [B

    shr-int/lit8 v11, v5, 0x1

    and-int/2addr v11, v2

    or-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v9, v8

    shl-int/lit8 v2, v5, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x78

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v9, v10

    .line 17
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/xp3;->a([B)Lcom/google/android/gms/internal/ads/vp3;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/s4;

    .line 18
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/bw3;->f:Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/s4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    const-string v4, "audio/mp4a-latm"

    .line 20
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vp3;->c:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/s4;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    iget v4, v0, Lcom/google/android/gms/internal/ads/vp3;->b:I

    .line 22
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/s4;->B(I)Lcom/google/android/gms/internal/ads/s4;

    iget v0, v0, Lcom/google/android/gms/internal/ads/vp3;->a:I

    .line 23
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/s4;->C(I)Lcom/google/android/gms/internal/ads/s4;

    .line 24
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/s4;->p(Ljava/util/List;)Lcom/google/android/gms/internal/ads/s4;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->e:Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/s4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    iget v2, v0, Lcom/google/android/gms/internal/ads/u4;->B:I

    int-to-long v8, v2

    .line 27
    div-long/2addr v4, v8

    iput-wide v4, v6, Lcom/google/android/gms/internal/ads/bw3;->r:J

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/bw3;->g:Lcom/google/android/gms/internal/ads/yr3;

    .line 28
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    iput-boolean v10, v6, Lcom/google/android/gms/internal/ads/bw3;->q:Z

    goto :goto_2

    .line 29
    :cond_5
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 30
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/ka;->f(I)V

    .line 31
    :goto_2
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 32
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ka;->f(I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/bw3;->l:Z

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, -0x2

    :cond_6
    move v5, v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/bw3;->g:Lcom/google/android/gms/internal/ads/yr3;

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/bw3;->r:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bw3;->i(Lcom/google/android/gms/internal/ads/yr3;JII)V

    goto/16 :goto_0

    .line 35
    :cond_7
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->d:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v0

    .line 36
    invoke-direct {v6, v7, v0, v5}, Lcom/google/android/gms/internal/ads/bw3;->g(Lcom/google/android/gms/internal/ads/la;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->h:Lcom/google/android/gms/internal/ads/yr3;

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/bw3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 37
    invoke-interface {v0, v1, v5}, Lcom/google/android/gms/internal/ads/yr3;->b(Lcom/google/android/gms/internal/ads/la;I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->d:Lcom/google/android/gms/internal/ads/la;

    const/4 v1, 0x6

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/bw3;->h:Lcom/google/android/gms/internal/ads/yr3;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->a()I

    move-result v0

    add-int/2addr v5, v0

    move-object/from16 v0, p0

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bw3;->i(Lcom/google/android/gms/internal/ads/yr3;JII)V

    goto/16 :goto_0

    .line 41
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ka;->a:[B

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v2

    .line 42
    aget-byte v1, v1, v2

    aput-byte v1, v0, v8

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 43
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/ka;->d(I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 44
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/bw3;->o:I

    if-eq v1, v5, :cond_9

    if-eq v0, v1, :cond_9

    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/bw3;->f()V

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/bw3;->m:Z

    if-nez v1, :cond_a

    iput-boolean v10, v6, Lcom/google/android/gms/internal/ads/bw3;->m:Z

    iget v1, v6, Lcom/google/android/gms/internal/ads/bw3;->p:I

    iput v1, v6, Lcom/google/android/gms/internal/ads/bw3;->n:I

    iput v0, v6, Lcom/google/android/gms/internal/ads/bw3;->o:I

    .line 46
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/bw3;->j()V

    goto/16 :goto_0

    .line 47
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result v12

    :goto_3
    if-ge v11, v12, :cond_1a

    add-int/lit8 v13, v11, 0x1

    .line 48
    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    iget v14, v6, Lcom/google/android/gms/internal/ads/bw3;->k:I

    const/16 v15, 0x200

    if-ne v14, v15, :cond_14

    int-to-byte v14, v11

    invoke-static {v5, v14}, Lcom/google/android/gms/internal/ads/bw3;->k(BB)Z

    move-result v14

    if-eqz v14, :cond_14

    iget-boolean v14, v6, Lcom/google/android/gms/internal/ads/bw3;->m:Z

    if-nez v14, :cond_11

    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v14, 0x1

    .line 49
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v15, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/ka;->a:[B

    .line 50
    invoke-static {v7, v15, v10}, Lcom/google/android/gms/internal/ads/bw3;->l(Lcom/google/android/gms/internal/ads/la;[BI)Z

    move-result v15

    if-nez v15, :cond_c

    goto/16 :goto_7

    .line 51
    :cond_c
    iget-object v15, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 52
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/ka;->d(I)V

    iget-object v15, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 53
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v15

    iget v8, v6, Lcom/google/android/gms/internal/ads/bw3;->n:I

    if-eq v8, v5, :cond_d

    if-ne v15, v8, :cond_14

    :cond_d
    iget v8, v6, Lcom/google/android/gms/internal/ads/bw3;->o:I

    if-eq v8, v5, :cond_f

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/ka;->a:[B

    .line 54
    invoke-static {v7, v8, v10}, Lcom/google/android/gms/internal/ads/bw3;->l(Lcom/google/android/gms/internal/ads/la;[BI)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_4

    .line 55
    :cond_e
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 56
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/ka;->d(I)V

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 57
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v8

    iget v9, v6, Lcom/google/android/gms/internal/ads/bw3;->o:I

    if-ne v8, v9, :cond_14

    add-int/lit8 v8, v14, 0x2

    .line 58
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    :cond_f
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/ka;->a:[B

    .line 59
    invoke-static {v7, v8, v3}, Lcom/google/android/gms/internal/ads/bw3;->l(Lcom/google/android/gms/internal/ads/la;[BI)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    const/16 v9, 0xe

    .line 60
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/ka;->d(I)V

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/bw3;->c:Lcom/google/android/gms/internal/ads/ka;

    .line 61
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v8

    if-lt v8, v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result v1

    add-int/2addr v14, v8

    if-ge v14, v1, :cond_11

    .line 62
    aget-byte v8, v9, v14

    if-ne v8, v5, :cond_10

    add-int/lit8 v14, v14, 0x1

    if-eq v14, v1, :cond_11

    .line 63
    aget-byte v1, v9, v14

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/bw3;->k(BB)Z

    move-result v1

    if-eqz v1, :cond_14

    aget-byte v1, v9, v14

    and-int/lit8 v1, v1, 0x8

    shr-int/2addr v1, v4

    if-ne v1, v15, :cond_14

    goto :goto_4

    :cond_10
    const/16 v15, 0x49

    if-ne v8, v15, :cond_14

    add-int/lit8 v8, v14, 0x1

    if-eq v8, v1, :cond_11

    .line 64
    aget-byte v8, v9, v8

    const/16 v15, 0x44

    if-ne v8, v15, :cond_14

    add-int/lit8 v14, v14, 0x2

    if-eq v14, v1, :cond_11

    .line 65
    aget-byte v1, v9, v14

    const/16 v8, 0x33

    if-ne v1, v8, :cond_14

    :cond_11
    :goto_4
    and-int/lit8 v0, v11, 0x8

    shr-int/2addr v0, v4

    .line 66
    iput v0, v6, Lcom/google/android/gms/internal/ads/bw3;->p:I

    and-int/lit8 v0, v11, 0x1

    xor-int/2addr v0, v10

    if-eq v10, v0, :cond_12

    const/4 v0, 0x0

    goto :goto_5

    :cond_12
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v6, Lcom/google/android/gms/internal/ads/bw3;->l:Z

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/bw3;->m:Z

    if-nez v0, :cond_13

    iput v10, v6, Lcom/google/android/gms/internal/ads/bw3;->i:I

    const/4 v0, 0x0

    iput v0, v6, Lcom/google/android/gms/internal/ads/bw3;->j:I

    goto :goto_6

    .line 67
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/bw3;->j()V

    .line 68
    :goto_6
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto/16 :goto_0

    .line 69
    :cond_14
    :goto_7
    iget v1, v6, Lcom/google/android/gms/internal/ads/bw3;->k:I

    or-int v8, v1, v11

    const/16 v9, 0x149

    if-eq v8, v9, :cond_19

    const/16 v9, 0x1ff

    if-eq v8, v9, :cond_18

    const/16 v9, 0x344

    if-eq v8, v9, :cond_17

    const/16 v9, 0x433

    if-eq v8, v9, :cond_16

    const/16 v8, 0x100

    if-eq v1, v8, :cond_15

    iput v8, v6, Lcom/google/android/gms/internal/ads/bw3;->k:I

    add-int/lit8 v11, v13, -0x1

    const/16 v1, 0xd

    const/4 v8, 0x0

    goto :goto_a

    :cond_15
    const/4 v1, 0x2

    const/4 v8, 0x0

    goto :goto_9

    :cond_16
    const/4 v1, 0x2

    iput v1, v6, Lcom/google/android/gms/internal/ads/bw3;->i:I

    iput v4, v6, Lcom/google/android/gms/internal/ads/bw3;->j:I

    const/4 v8, 0x0

    iput v8, v6, Lcom/google/android/gms/internal/ads/bw3;->s:I

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/bw3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 70
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 71
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto/16 :goto_0

    :cond_17
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x400

    goto :goto_8

    :cond_18
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x200

    goto :goto_8

    :cond_19
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x300

    :goto_8
    iput v9, v6, Lcom/google/android/gms/internal/ads/bw3;->k:I

    :goto_9
    move v11, v13

    const/16 v1, 0xd

    :goto_a
    const/4 v9, 0x2

    goto/16 :goto_3

    .line 72
    :cond_1a
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto/16 :goto_0

    :cond_1b
    return-void
.end method

.method public final zza()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bw3;->t:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bw3;->f()V

    return-void
.end method
