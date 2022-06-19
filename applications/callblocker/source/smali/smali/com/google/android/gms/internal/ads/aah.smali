.class public final Lcom/google/android/gms/internal/ads/aah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/yd;

.field private final d:Lcom/google/android/gms/internal/ads/m;

.field private final e:Lcom/google/android/gms/internal/ads/o;

.field private final f:Lcom/google/android/gms/internal/ads/wm;

.field private final g:[J

.field private final h:[Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/google/android/gms/internal/ads/zo;

.field private o:Z

.field private p:Z

.field private q:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;)V
    .locals 6

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/wn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wn;-><init>()V

    const-string/jumbo v1, "min_1"

    const-wide/16 v2, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wn;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/wn;

    move-result-object v0

    const-string/jumbo v1, "1_5"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wn;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/wn;

    move-result-object v0

    const-string/jumbo v1, "5_10"

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wn;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/wn;

    move-result-object v0

    const-string/jumbo v1, "10_20"

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wn;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/wn;

    move-result-object v0

    const-string/jumbo v1, "20_30"

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wn;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/wn;

    move-result-object v0

    const-string/jumbo v1, "30_max"

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wn;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/wn;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wn;->a()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aah;->f:Lcom/google/android/gms/internal/ads/wm;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->i:Z

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->j:Z

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->k:Z

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->l:Z

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aah;->q:J

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aah;->a:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aah;->c:Lcom/google/android/gms/internal/ads/yd;

    .line 17
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aah;->b:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aah;->e:Lcom/google/android/gms/internal/ads/o;

    .line 19
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aah;->d:Lcom/google/android/gms/internal/ads/m;

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->r:Lcom/google/android/gms/internal/ads/ect;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    if-nez v0, :cond_1

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aah;->h:[Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aah;->g:[J

    .line 37
    :cond_0
    return-void

    .line 27
    :cond_1
    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 28
    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aah;->h:[Ljava/lang/String;

    .line 29
    array-length v0, v2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aah;->g:[J

    .line 30
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->g:[J

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    const-string/jumbo v3, "Unable to parse frame hash target time number."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->g:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 44
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->j:Z

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aah;->e:Lcom/google/android/gms/internal/ads/o;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->d:Lcom/google/android/gms/internal/ads/m;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vfr2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;[Ljava/lang/String;)Z

    .line 47
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/aah;->j:Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zo;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aah;->e:Lcom/google/android/gms/internal/ads/o;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->d:Lcom/google/android/gms/internal/ads/m;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vpc2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;[Ljava/lang/String;)Z

    .line 39
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/aah;->i:Z

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aah;->e:Lcom/google/android/gms/internal/ads/o;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aah;->e:Lcom/google/android/gms/internal/ads/o;

    const-string/jumbo v1, "vpn"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aah;->n:Lcom/google/android/gms/internal/ads/zo;

    .line 43
    return-void
.end method

.method public final b()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/az;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->o:Z

    if-nez v0, :cond_5

    .line 50
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "native-player-metrics"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "request"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "player"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->n:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aah;->f:Lcom/google/android/gms/internal/ads/wm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/wo;

    .line 55
    const-string/jumbo v1, "fps_c_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/wo;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget v3, v0, Lcom/google/android/gms/internal/ads/wo;->c:I

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "fps_p_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/wo;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/wo;->b:D

    .line 59
    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 62
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->g:[J

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->h:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 64
    if-eqz v1, :cond_3

    .line 65
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aah;->g:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "fh_"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 67
    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aah;->c:Lcom/google/android/gms/internal/ads/yd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    const-string/jumbo v3, "gmob-apps"

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 69
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/aah;->o:Z

    .line 70
    :cond_5
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zo;)V
    .locals 12

    .prologue
    .line 71
    .line 72
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->l:Z

    if-nez v0, :cond_1

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/ads/uu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->l:Z

    if-nez v0, :cond_0

    .line 75
    const-string/jumbo v0, "VideoMetricsMixin first frame"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aah;->e:Lcom/google/android/gms/internal/ads/o;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->d:Lcom/google/android/gms/internal/ads/m;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vff2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;[Ljava/lang/String;)Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->l:Z

    .line 78
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v0

    .line 79
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aah;->m:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aah;->p:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/aah;->q:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 80
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/aah;->q:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 81
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aah;->f:Lcom/google/android/gms/internal/ads/wm;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/wm;->a(D)V

    .line 82
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aah;->m:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/aah;->p:Z

    .line 83
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/aah;->q:J

    .line 85
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->s:Lcom/google/android/gms/internal/ads/ect;

    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zo;->getCurrentPosition()I

    move-result v0

    int-to-long v4, v0

    .line 89
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->h:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->h:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_7

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->g:[J

    aget-wide v6, v1, v0

    .line 92
    sub-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-lez v1, :cond_7

    .line 93
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/aah;->h:[Ljava/lang/String;

    .line 94
    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 95
    const-wide/16 v6, 0x0

    .line 96
    const-wide/16 v2, 0x3f

    .line 97
    const/4 v1, 0x0

    move v8, v1

    :goto_1
    const/16 v1, 0x8

    if-ge v8, v1, :cond_5

    .line 98
    const/4 v1, 0x0

    move-wide v4, v2

    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_4

    .line 99
    invoke-virtual {v10, v1, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 100
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v11

    add-int/2addr v3, v11

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    add-int/2addr v2, v3

    .line 101
    const/16 v3, 0x80

    if-le v2, v3, :cond_3

    const-wide/16 v2, 0x1

    .line 102
    :goto_3
    long-to-int v11, v4

    shl-long/2addr v2, v11

    or-long/2addr v6, v2

    .line 103
    add-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    move-wide v4, v2

    goto :goto_2

    .line 101
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 104
    :cond_4
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move-wide v2, v4

    goto :goto_1

    .line 105
    :cond_5
    const-string/jumbo v1, "%016X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    aput-object v1, v9, v0

    .line 109
    :cond_6
    return-void

    .line 108
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 110
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/aah;->m:Z

    .line 111
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->k:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aah;->e:Lcom/google/android/gms/internal/ads/o;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aah;->d:Lcom/google/android/gms/internal/ads/m;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vfp2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;[Ljava/lang/String;)Z

    .line 113
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/aah;->k:Z

    .line 114
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aah;->m:Z

    .line 116
    return-void
.end method
