.class final Lcom/google/android/exoplayer2/extractor/c/c;
.super Lcom/google/android/exoplayer2/extractor/q;
.source "SourceFile"


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/i;J)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/q;-><init>(Lcom/google/android/exoplayer2/extractor/i;)V

    .line 46
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 47
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/c/c;->a:J

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 4

    .line 57
    invoke-super {p0}, Lcom/google/android/exoplayer2/extractor/q;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/c/c;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()J
    .locals 4

    .line 52
    invoke-super {p0}, Lcom/google/android/exoplayer2/extractor/q;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/c/c;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()J
    .locals 4

    .line 62
    invoke-super {p0}, Lcom/google/android/exoplayer2/extractor/q;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/c/c;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
