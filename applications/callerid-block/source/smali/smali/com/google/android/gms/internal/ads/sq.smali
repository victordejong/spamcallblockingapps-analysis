.class public final Lcom/google/android/gms/internal/ads/sq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final d:Lcom/google/android/gms/internal/ads/z3;

.field private final e:Lcom/google/android/gms/internal/ads/c4;

.field private final f:Lcom/google/android/gms/ads/internal/util/v;

.field private final g:[J

.field private final h:[Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/google/android/gms/internal/ads/zzbcy;

.field private o:Z

.field private p:Z

.field private q:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/c4;Lcom/google/android/gms/internal/ads/z3;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/android/gms/ads/internal/util/u;

    invoke-direct {v6}, Lcom/google/android/gms/ads/internal/util/u;-><init>()V

    const-string v1, "min_1"

    const-wide/16 v2, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/u;->a(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/u;

    const-string v1, "1_5"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/u;->a(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/u;

    const-string v1, "5_10"

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/u;->a(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/u;

    const-string v1, "10_20"

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/u;->a(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/u;

    const-string v1, "20_30"

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/u;->a(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/u;

    const-string v1, "30_max"

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/u;->a(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/u;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/util/u;->b()Lcom/google/android/gms/ads/internal/util/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sq;->f:Lcom/google/android/gms/ads/internal/util/v;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq;->i:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq;->k:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq;->l:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/sq;->q:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sq;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sq;->c:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/sq;->e:Lcom/google/android/gms/internal/ads/c4;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/sq;->d:Lcom/google/android/gms/internal/ads/z3;

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->t:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sq;->h:[Ljava/lang/String;

    new-array p1, v0, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sq;->g:[J

    return-void

    :cond_0
    const-string p2, ","

    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    new-array p3, p2, [Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sq;->h:[Ljava/lang/String;

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sq;->g:[J

    :goto_0
    array-length p2, p1

    if-ge v0, p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/sq;->g:[J

    aget-object p3, p1, v0

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    aput-wide p3, p2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string p3, "Unable to parse frame hash target time number."

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/sq;->g:[J

    aput-wide v1, p2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbcy;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq;->e:Lcom/google/android/gms/internal/ads/c4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sq;->d:Lcom/google/android/gms/internal/ads/z3;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "vpc2"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/t3;->a(Lcom/google/android/gms/internal/ads/c4;Lcom/google/android/gms/internal/ads/z3;[Ljava/lang/String;)Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/sq;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq;->e:Lcom/google/android/gms/internal/ads/c4;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcy;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vpn"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/c4;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sq;->n:Lcom/google/android/gms/internal/ads/zzbcy;

    return-void
.end method

.method public final b()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq;->e:Lcom/google/android/gms/internal/ads/c4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sq;->d:Lcom/google/android/gms/internal/ads/z3;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "vfr2"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/t3;->a(Lcom/google/android/gms/internal/ads/c4;Lcom/google/android/gms/internal/ads/z3;[Ljava/lang/String;)Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/sq;->j:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/ads/m5;->a:Lcom/google/android/gms/internal/ads/p4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p4;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq;->o:Z

    if-nez v0, :cond_5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "native-player-metrics"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/String;

    const-string v1, "request"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq;->n:Lcom/google/android/gms/internal/ads/zzbcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcy;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "player"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq;->f:Lcom/google/android/gms/ads/internal/util/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/v;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/util/t;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/util/t;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fps_c_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iget v3, v1, Lcom/google/android/gms/ads/internal/util/t;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/util/t;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fps_p_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-wide v3, v1, Lcom/google/android/gms/ads/internal/util/t;->d:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sq;->g:[J

    array-length v2, v1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sq;->h:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    aget-wide v3, v1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "fh_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sq;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq;->c:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbbq;->b:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v4, "gmob-apps"

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/util/l1;->O(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq;->o:Z

    :cond_5
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzbcy;)V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/sq;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/sq;->l:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/y0;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/sq;->l:Z

    if-nez v1, :cond_0

    const-string v1, "VideoMetricsMixin first frame"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/sq;->e:Lcom/google/android/gms/internal/ads/c4;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/sq;->d:Lcom/google/android/gms/internal/ads/z3;

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "vff2"

    aput-object v6, v5, v2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/t3;->a(Lcom/google/android/gms/internal/ads/c4;Lcom/google/android/gms/internal/ads/z3;[Ljava/lang/String;)Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/sq;->l:Z

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->d()J

    move-result-wide v4

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/sq;->m:Z

    const-wide/16 v6, 0x1

    const-wide/16 v8, -0x1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/sq;->p:Z

    if-eqz v1, :cond_2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/sq;->q:J

    cmp-long v1, v10, v8

    if-eqz v1, :cond_2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/sq;->q:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/sq;->f:Lcom/google/android/gms/ads/internal/util/v;

    long-to-double v10, v10

    sub-long v12, v4, v12

    long-to-double v12, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/ads/internal/util/v;->a(D)V

    :cond_2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/sq;->m:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/sq;->p:Z

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/sq;->q:J

    sget-object v1, Lcom/google/android/gms/internal/ads/m3;->u:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbcy;->n()I

    move-result v1

    int-to-long v10, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/sq;->h:[Ljava/lang/String;

    array-length v13, v12

    if-ge v1, v13, :cond_8

    aget-object v12, v12, v1

    if-eqz v12, :cond_4

    :cond_3
    move-object/from16 v12, p1

    goto :goto_4

    :cond_4
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/sq;->g:[J

    aget-wide v13, v12, v1

    sub-long v13, v10, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v14, v4, v12

    if-lez v14, :cond_3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/sq;->h:[Ljava/lang/String;

    const/16 v5, 0x8

    move-object/from16 v12, p1

    invoke-virtual {v12, v5, v5}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v10

    const-wide/16 v11, 0x3f

    const-wide/16 v13, 0x0

    move-wide/from16 v16, v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v5, :cond_7

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_6

    invoke-virtual {v10, v6, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    add-int v7, v18, v7

    const/16 v5, 0x80

    if-le v7, v5, :cond_5

    const-wide/16 v19, 0x1

    goto :goto_3

    :cond_5
    move-wide/from16 v19, v13

    :goto_3
    long-to-int v5, v11

    shl-long v19, v19, v5

    or-long v16, v16, v19

    add-int/lit8 v6, v6, 0x1

    add-long/2addr v11, v8

    const/16 v5, 0x8

    goto :goto_2

    :cond_6
    add-int/lit8 v15, v15, 0x1

    const/16 v5, 0x8

    const-wide/16 v6, 0x1

    goto :goto_1

    :cond_7
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v2, "%016X"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    return-void

    :goto_4
    add-int/lit8 v1, v1, 0x1

    const-wide/16 v6, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final e()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq;->m:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/sq;->j:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/sq;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sq;->e:Lcom/google/android/gms/internal/ads/c4;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sq;->d:Lcom/google/android/gms/internal/ads/z3;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "vfp2"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/t3;->a(Lcom/google/android/gms/internal/ads/c4;Lcom/google/android/gms/internal/ads/z3;[Ljava/lang/String;)Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq;->k:Z

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq;->m:Z

    return-void
.end method
