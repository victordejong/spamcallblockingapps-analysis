.class public final Lcom/google/android/exoplayer2/util/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/p;


# instance fields
.field public a:Lcom/google/android/exoplayer2/aa;

.field private final b:Lcom/google/android/exoplayer2/util/c;

.field private c:Z

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/c;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/z;->b:Lcom/google/android/exoplayer2/util/c;

    .line 41
    sget-object p1, Lcom/google/android/exoplayer2/aa;->a:Lcom/google/android/exoplayer2/aa;

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/z;->a:Lcom/google/android/exoplayer2/aa;

    return-void
.end method


# virtual methods
.method public final B_()J
    .locals 6

    .line 78
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/z;->d:J

    .line 79
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/util/z;->c:Z

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/z;->b:Lcom/google/android/exoplayer2/util/c;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/util/c;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/util/z;->e:J

    sub-long/2addr v2, v4

    .line 81
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/z;->a:Lcom/google/android/exoplayer2/aa;

    iget v4, v4, Lcom/google/android/exoplayer2/aa;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 82
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v2

    goto :goto_0

    .line 86
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/z;->a:Lcom/google/android/exoplayer2/aa;

    .line 1071
    iget v4, v4, Lcom/google/android/exoplayer2/aa;->d:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public final a()V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/z;->c:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/z;->b:Lcom/google/android/exoplayer2/util/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/z;->e:J

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/z;->c:Z

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 70
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/z;->d:J

    .line 71
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/util/z;->c:Z

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/z;->b:Lcom/google/android/exoplayer2/util/c;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/c;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/z;->e:J

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/aa;)V
    .locals 2

    .line 95
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/z;->c:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/z;->B_()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/z;->a(J)V

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/z;->a:Lcom/google/android/exoplayer2/aa;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 58
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/z;->c:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/z;->B_()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/z;->a(J)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/z;->c:Z

    :cond_0
    return-void
.end method

.method public final d()Lcom/google/android/exoplayer2/aa;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/z;->a:Lcom/google/android/exoplayer2/aa;

    return-object v0
.end method
