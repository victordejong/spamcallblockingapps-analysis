.class final Lcom/google/android/exoplayer2/video/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/c$a;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/exoplayer2/video/c$a;

.field b:Lcom/google/android/exoplayer2/video/c$a;

.field c:Z

.field d:Z

.field e:J

.field f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/video/c$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/c$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/video/c$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/c$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/c;->b:Lcom/google/android/exoplayer2/video/c$a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/c;->e:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1097
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/c$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    .line 1178
    iget-wide v0, v0, Lcom/google/android/exoplayer2/video/c$a;->b:J

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final b()F
    .locals 4

    .line 2097
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/c$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 129
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/c$a;->c()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method
