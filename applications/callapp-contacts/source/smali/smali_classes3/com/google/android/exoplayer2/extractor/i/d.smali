.class final Lcom/google/android/exoplayer2/extractor/i/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/v;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/i/b;

.field private final b:I

.field private final c:J

.field private final d:J

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/i/b;IJJ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/i/d;->a:Lcom/google/android/exoplayer2/extractor/i/b;

    .line 34
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/i/d;->b:I

    .line 35
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/i/d;->c:J

    sub-long/2addr p5, p3

    .line 36
    iget p1, p1, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    int-to-long p1, p1

    div-long/2addr p5, p1

    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/i/d;->d:J

    .line 37
    invoke-direct {p0, p5, p6}, Lcom/google/android/exoplayer2/extractor/i/d;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/i/d;->e:J

    return-void
.end method

.method private b(J)J
    .locals 8

    .line 71
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/i/d;->b:I

    int-to-long v0, v0

    mul-long v2, p1, v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/i/d;->a:Lcom/google/android/exoplayer2/extractor/i/b;

    iget p1, p1, Lcom/google/android/exoplayer2/extractor/i/b;->c:I

    int-to-long v6, p1

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public final a(J)Lcom/google/android/exoplayer2/extractor/v$a;
    .locals 10

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/i/d;->a:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/i/b;->c:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/i/d;->b:I

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    div-long v4, v0, v2

    .line 54
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/i/d;->d:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/af;->a(JJJ)J

    move-result-wide v0

    .line 56
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/i/d;->c:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/i/d;->a:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    int-to-long v6, v6

    mul-long v6, v6, v0

    add-long/2addr v4, v6

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/i/d;->b(J)J

    move-result-wide v6

    .line 58
    new-instance v8, Lcom/google/android/exoplayer2/extractor/w;

    invoke-direct {v8, v6, v7, v4, v5}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    cmp-long v4, v6, p1

    if-gez v4, :cond_1

    .line 59
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/i/d;->d:J

    sub-long/2addr p1, v2

    cmp-long v4, v0, p1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr v0, v2

    .line 63
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/i/d;->c:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/i/d;->a:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    add-long/2addr p1, v2

    .line 64
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/i/d;->b(J)J

    move-result-wide v0

    .line 65
    new-instance v2, Lcom/google/android/exoplayer2/extractor/w;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    .line 66
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$a;

    invoke-direct {p1, v8, v2}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p1

    .line 60
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$a;

    invoke-direct {p1, v8}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p1
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/i/d;->e:J

    return-wide v0
.end method
