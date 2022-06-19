.class public final Lcom/google/android/gms/internal/ads/by3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq3;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/br3;


# instance fields
.field private b:Lcom/google/android/gms/internal/ads/xq3;

.field private c:Lcom/google/android/gms/internal/ads/yr3;

.field private d:Lcom/google/android/gms/internal/ads/zx3;

.field private e:I

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/xx3;->b:Lcom/google/android/gms/internal/ads/br3;

    sput-object v0, Lcom/google/android/gms/internal/ads/by3;->a:Lcom/google/android/gms/internal/ads/br3;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/by3;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/by3;->f:J

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;)I
    .locals 13

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/by3;->c:Lcom/google/android/gms/internal/ads/yr3;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/wa;->a:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/by3;->d:Lcom/google/android/gms/internal/ads/zx3;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_8

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ey3;->a(Lcom/google/android/gms/internal/ads/vq3;)Lcom/google/android/gms/internal/ads/cy3;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 4
    iget p2, v5, Lcom/google/android/gms/internal/ads/cy3;->a:I

    const/16 v2, 0x11

    if-ne p2, v2, :cond_0

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/yx3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/by3;->b:Lcom/google/android/gms/internal/ads/xq3;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/by3;->c:Lcom/google/android/gms/internal/ads/yr3;

    invoke-direct {p2, v2, v3, v5}, Lcom/google/android/gms/internal/ads/yx3;-><init>(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/cy3;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/by3;->d:Lcom/google/android/gms/internal/ads/zx3;

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/ay3;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/by3;->b:Lcom/google/android/gms/internal/ads/xq3;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/by3;->c:Lcom/google/android/gms/internal/ads/yr3;

    const/4 v7, -0x1

    const-string v6, "audio/g711-alaw"

    move-object v2, p2

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ay3;-><init>(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/cy3;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/by3;->d:Lcom/google/android/gms/internal/ads/zx3;

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    if-ne p2, v2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/ads/ay3;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/by3;->b:Lcom/google/android/gms/internal/ads/xq3;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/by3;->c:Lcom/google/android/gms/internal/ads/yr3;

    const/4 v7, -0x1

    const-string v6, "audio/g711-mlaw"

    move-object v2, p2

    .line 8
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ay3;-><init>(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/cy3;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/by3;->d:Lcom/google/android/gms/internal/ads/zx3;

    goto :goto_1

    :cond_2
    iget v2, v5, Lcom/google/android/gms/internal/ads/cy3;->e:I

    if-eq p2, v0, :cond_5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_4

    const v3, 0xfffe

    if-eq p2, v3, :cond_5

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/16 p2, 0x20

    if-ne v2, p2, :cond_3

    const/4 p2, 0x4

    const/4 v7, 0x4

    goto :goto_0

    .line 9
    :cond_5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/wa;->o(I)I

    move-result p2

    move v7, p2

    :goto_0
    if-eqz v7, :cond_6

    .line 10
    new-instance p2, Lcom/google/android/gms/internal/ads/ay3;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/by3;->b:Lcom/google/android/gms/internal/ads/xq3;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/by3;->c:Lcom/google/android/gms/internal/ads/yr3;

    const-string v6, "audio/raw"

    move-object v2, p2

    .line 11
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ay3;-><init>(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/cy3;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/by3;->d:Lcom/google/android/gms/internal/ads/zx3;

    goto :goto_1

    .line 12
    :cond_6
    iget p1, v5, Lcom/google/android/gms/internal/ads/cy3;->a:I

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    .line 13
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported WAV format type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    :cond_7
    const/4 p1, 0x0

    const-string p2, "Unsupported or unrecognized wav header."

    .line 14
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 15
    :cond_8
    :goto_1
    iget p2, p0, Lcom/google/android/gms/internal/ads/by3;->e:I

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    if-ne p2, v4, :cond_e

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    new-instance p2, Lcom/google/android/gms/internal/ads/la;

    const/16 v5, 0x8

    .line 17
    invoke-direct {p2, v5}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    .line 18
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/dy3;->a(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/la;)Lcom/google/android/gms/internal/ads/dy3;

    move-result-object v6

    :goto_2
    iget v7, v6, Lcom/google/android/gms/internal/ads/dy3;->a:I

    const v8, 0x64617461

    const-string v9, "WavHeaderReader"

    if-eq v7, v8, :cond_c

    const v8, 0x52494646

    if-eq v7, v8, :cond_9

    const v10, 0x666d7420

    if-eq v7, v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x27

    .line 19
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Ignoring unknown WAV chunk: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-wide v9, v6, Lcom/google/android/gms/internal/ads/dy3;->b:J

    const-wide/16 v11, 0x8

    add-long/2addr v9, v11

    iget v6, v6, Lcom/google/android/gms/internal/ads/dy3;->a:I

    if-ne v6, v8, :cond_a

    const-wide/16 v9, 0xc

    :cond_a
    const-wide/32 v7, 0x7fffffff

    cmp-long v11, v9, v7

    if-gtz v11, :cond_b

    .line 21
    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/pq3;

    long-to-int v7, v9

    .line 22
    invoke-virtual {v6, v7, v1}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    .line 23
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/dy3;->a(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/la;)Lcom/google/android/gms/internal/ads/dy3;

    move-result-object v6

    goto :goto_2

    .line 24
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x33

    .line 25
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 26
    :cond_c
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/pq3;

    .line 27
    invoke-virtual {p2, v5, v1}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v7

    iget-wide v5, v6, Lcom/google/android/gms/internal/ads/dy3;->b:J

    add-long/2addr v5, v7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->n()J

    move-result-wide v10

    cmp-long p2, v10, v2

    if-eqz p2, :cond_d

    cmp-long p2, v5, v10

    if-lez p2, :cond_d

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v12, 0x45

    .line 28
    invoke-direct {p2, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Data exceeds input length: "

    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v10

    .line 30
    :cond_d
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 31
    iget-object v5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/ads/by3;->e:I

    .line 32
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/by3;->f:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/by3;->d:Lcom/google/android/gms/internal/ads/zx3;

    iget v7, p0, Lcom/google/android/gms/internal/ads/by3;->e:I

    .line 33
    invoke-interface {p2, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zx3;->b(IJ)V

    goto :goto_3

    .line 34
    :cond_e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p2, v5, v7

    if-nez p2, :cond_f

    iget p2, p0, Lcom/google/android/gms/internal/ads/by3;->e:I

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/pq3;

    .line 35
    invoke-virtual {v5, p2, v1}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    .line 36
    :cond_f
    :goto_3
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/by3;->f:J

    cmp-long p2, v5, v2

    if-eqz p2, :cond_10

    goto :goto_4

    :cond_10
    const/4 v0, 0x0

    .line 37
    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/by3;->f:J

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/by3;->d:Lcom/google/android/gms/internal/ads/zx3;

    sub-long/2addr v2, v5

    .line 38
    invoke-interface {p2, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zx3;->c(Lcom/google/android/gms/internal/ads/vq3;J)Z

    move-result p1

    if-eqz p1, :cond_11

    return v4

    :cond_11
    return v1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/vq3;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ey3;->a(Lcom/google/android/gms/internal/ads/vq3;)Lcom/google/android/gms/internal/ads/cy3;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/xq3;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/by3;->b:Lcom/google/android/gms/internal/ads/xq3;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/by3;->c:Lcom/google/android/gms/internal/ads/yr3;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/xq3;->t()V

    return-void
.end method

.method public final h(JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/by3;->d:Lcom/google/android/gms/internal/ads/zx3;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zx3;->a(J)V

    :cond_0
    return-void
.end method
