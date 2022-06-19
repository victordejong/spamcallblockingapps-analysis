.class public final Landroidx/media2/exoplayer/external/video/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/video/e$b;,
        Landroidx/media2/exoplayer/external/video/e$a;
    }
.end annotation


# instance fields
.field final a:Landroid/view/WindowManager;

.field final b:Landroidx/media2/exoplayer/external/video/e$b;

.field final c:Landroidx/media2/exoplayer/external/video/e$a;

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:Z

.field j:J

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/video/e;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "window"

    .line 82
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/e;->a:Landroid/view/WindowManager;

    goto :goto_0

    .line 84
    :cond_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/e;->a:Landroid/view/WindowManager;

    .line 86
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/e;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    .line 87
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    const-string v1, "display"

    .line 1198
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_1

    .line 1199
    new-instance v0, Landroidx/media2/exoplayer/external/video/e$a;

    invoke-direct {v0, p0, p1}, Landroidx/media2/exoplayer/external/video/e$a;-><init>(Landroidx/media2/exoplayer/external/video/e;Landroid/hardware/display/DisplayManager;)V

    .line 87
    :cond_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/e;->c:Landroidx/media2/exoplayer/external/video/e$a;

    .line 88
    invoke-static {}, Landroidx/media2/exoplayer/external/video/e$b;->a()Landroidx/media2/exoplayer/external/video/e$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/e;->b:Landroidx/media2/exoplayer/external/video/e$b;

    goto :goto_1

    .line 90
    :cond_2
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/e;->c:Landroidx/media2/exoplayer/external/video/e$a;

    .line 91
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/e;->b:Landroidx/media2/exoplayer/external/video/e$b;

    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 93
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/e;->d:J

    .line 94
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/e;->e:J

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 204
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/e;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    .line 207
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/e;->d:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    .line 208
    div-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/e;->e:J

    :cond_0
    return-void
.end method

.method final a(JJ)Z
    .locals 2

    .line 213
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/e;->k:J

    sub-long/2addr p1, v0

    .line 214
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/e;->j:J

    sub-long/2addr p3, v0

    sub-long/2addr p3, p1

    .line 215
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
