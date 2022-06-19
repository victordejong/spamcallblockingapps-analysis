.class public final Lcom/google/android/gms/internal/ads/eds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/edr;

.field final b:Z

.field final c:J

.field final d:J

.field e:J

.field f:J

.field g:J

.field h:Z

.field i:J

.field j:J

.field k:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/eds;-><init>(D)V

    return-void
.end method

.method private constructor <init>(D)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eds;->b:Z

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/edr;->a()Lcom/google/android/gms/internal/ads/edr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eds;->a:Lcom/google/android/gms/internal/ads/edr;

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, p1

    double-to-long p1, v0

    .line 13
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eds;->c:J

    const-wide/16 v0, 0x50

    mul-long p1, p1, v0

    const-wide/16 v0, 0x64

    .line 14
    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eds;->d:J

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eds;->a:Lcom/google/android/gms/internal/ads/edr;

    const-wide/16 p1, -0x1

    .line 16
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eds;->c:J

    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eds;->d:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "window"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 5
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v0, p1

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 7
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/eds;-><init>(D)V

    return-void
.end method


# virtual methods
.method final a(JJ)Z
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eds;->j:J

    sub-long/2addr p1, v0

    .line 65
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eds;->i:J

    sub-long/2addr p3, v0

    sub-long/2addr p3, p1

    .line 66
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 p3, 0x1312d00

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
