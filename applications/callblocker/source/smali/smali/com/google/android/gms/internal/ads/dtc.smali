.class public final Lcom/google/android/gms/internal/ads/dtc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dtb;

.field private final b:Z

.field private final c:J

.field private final d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:Z

.field private i:J

.field private j:J

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dtc;-><init>(D)V

    .line 2
    return-void
.end method

.method private constructor <init>(D)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtc;->b:Z

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtc;->b:Z

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dtb;->a()Lcom/google/android/gms/internal/ads/dtb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtc;->a:Lcom/google/android/gms/internal/ads/dtb;

    .line 13
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, p1

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dtc;->c:J

    .line 14
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dtc;->c:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dtc;->d:J

    .line 18
    :goto_1
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtc;->a:Lcom/google/android/gms/internal/ads/dtb;

    .line 16
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dtc;->c:J

    .line 17
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dtc;->d:J

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 3
    .line 4
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    .line 7
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dtc;-><init>(D)V

    .line 8
    return-void

    .line 6
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method private final b(JJ)Z
    .locals 5

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dtc;->j:J

    sub-long v0, p1, v0

    .line 65
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dtc;->i:J

    sub-long v2, p3, v2

    .line 66
    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1312d00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(JJ)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 26
    const-wide/16 v0, 0x3e8

    mul-long v4, p1, v0

    .line 29
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtc;->h:Z

    if-eqz v0, :cond_5

    .line 30
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dtc;->e:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 31
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dtc;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dtc;->k:J

    .line 32
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dtc;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dtc;->f:J

    .line 33
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dtc;->k:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 34
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dtc;->j:J

    sub-long v0, v4, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dtc;->k:J

    div-long/2addr v0, v2

    .line 35
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dtc;->f:J

    add-long/2addr v2, v0

    .line 36
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/android/gms/internal/ads/dtc;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/dtc;->h:Z

    move-wide v0, p3

    move-wide v2, v4

    .line 43
    :goto_0
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/dtc;->h:Z

    if-nez v6, :cond_1

    .line 44
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dtc;->j:J

    .line 45
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/dtc;->i:J

    .line 46
    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/dtc;->k:J

    .line 47
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/dtc;->h:Z

    .line 48
    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dtc;->e:J

    .line 49
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dtc;->g:J

    .line 50
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dtc;->a:Lcom/google/android/gms/internal/ads/dtb;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dtc;->a:Lcom/google/android/gms/internal/ads/dtb;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/dtb;->a:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_6

    .line 63
    :cond_2
    :goto_1
    return-wide v0

    .line 39
    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dtc;->i:J

    add-long/2addr v0, v2

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/dtc;->j:J

    sub-long/2addr v0, v6

    .line 40
    goto :goto_0

    .line 41
    :cond_4
    invoke-direct {p0, v4, v5, p3, p4}, Lcom/google/android/gms/internal/ads/dtc;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/dtc;->h:Z

    :cond_5
    move-wide v0, p3

    move-wide v2, v4

    goto :goto_0

    .line 52
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dtc;->a:Lcom/google/android/gms/internal/ads/dtb;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/dtb;->a:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dtc;->c:J

    .line 53
    sub-long v6, v0, v2

    div-long/2addr v6, v4

    .line 54
    mul-long/2addr v6, v4

    add-long/2addr v6, v2

    .line 55
    cmp-long v2, v0, v6

    if-gtz v2, :cond_7

    .line 56
    sub-long v4, v6, v4

    move-wide v2, v6

    .line 60
    :goto_2
    sub-long v6, v2, v0

    .line 61
    sub-long/2addr v0, v4

    .line 62
    cmp-long v0, v6, v0

    if-gez v0, :cond_8

    move-wide v0, v2

    .line 63
    :goto_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dtc;->d:J

    sub-long/2addr v0, v2

    goto :goto_1

    .line 59
    :cond_7
    add-long v2, v6, v4

    move-wide v4, v6

    goto :goto_2

    :cond_8
    move-wide v0, v4

    .line 62
    goto :goto_3
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtc;->h:Z

    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtc;->b:Z

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtc;->a:Lcom/google/android/gms/internal/ads/dtb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dtb;->b()V

    .line 22
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtc;->b:Z

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtc;->a:Lcom/google/android/gms/internal/ads/dtb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dtb;->c()V

    .line 25
    :cond_0
    return-void
.end method
