.class final Lcom/google/android/exoplayer2/extractor/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/e/e;


# instance fields
.field final a:Lcom/google/android/exoplayer2/util/o;

.field final b:Lcom/google/android/exoplayer2/util/o;

.field c:J

.field private final d:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/e/b;->c:J

    .line 38
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/e/b;->d:J

    .line 39
    new-instance p1, Lcom/google/android/exoplayer2/util/o;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/o;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/b;->a:Lcom/google/android/exoplayer2/util/o;

    .line 40
    new-instance p2, Lcom/google/android/exoplayer2/util/o;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/o;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/e/b;->b:Lcom/google/android/exoplayer2/util/o;

    const-wide/16 p5, 0x0

    .line 41
    invoke-virtual {p1, p5, p6}, Lcom/google/android/exoplayer2/util/o;->a(J)V

    .line 42
    invoke-virtual {p2, p3, p4}, Lcom/google/android/exoplayer2/util/o;->a(J)V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/exoplayer2/extractor/v$a;
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/b;->a:Lcom/google/android/exoplayer2/util/o;

    .line 71
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/util/af;->a(Lcom/google/android/exoplayer2/util/o;J)I

    move-result v0

    .line 72
    new-instance v1, Lcom/google/android/exoplayer2/extractor/w;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e/b;->a:Lcom/google/android/exoplayer2/util/o;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/o;->a(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/e/b;->b:Lcom/google/android/exoplayer2/util/o;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/o;->a(I)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    .line 73
    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/w;->b:J

    cmp-long v4, v2, p1

    if-eqz v4, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/b;->a:Lcom/google/android/exoplayer2/util/o;

    .line 1072
    iget p1, p1, Lcom/google/android/exoplayer2/util/o;->a:I

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/w;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/e/b;->a:Lcom/google/android/exoplayer2/util/o;

    add-int/lit8 v0, v0, 0x1

    .line 77
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/o;->a(I)J

    move-result-wide v2

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/e/b;->b:Lcom/google/android/exoplayer2/util/o;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/o;->a(I)J

    move-result-wide v4

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    .line 78
    new-instance p2, Lcom/google/android/exoplayer2/extractor/v$a;

    invoke-direct {p2, v1, p1}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p2

    .line 74
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$a;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p1
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e/b;->c:J

    return-wide v0
.end method

.method public final b(J)Z
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/b;->a:Lcom/google/android/exoplayer2/util/o;

    .line 2072
    iget v1, v0, Lcom/google/android/exoplayer2/util/o;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/o;->a(I)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x186a0

    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e/b;->d:J

    return-wide v0
.end method

.method public final c(J)J
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/b;->b:Lcom/google/android/exoplayer2/util/o;

    .line 48
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/util/af;->a(Lcom/google/android/exoplayer2/util/o;J)I

    move-result p1

    .line 50
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/e/b;->a:Lcom/google/android/exoplayer2/util/o;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/o;->a(I)J

    move-result-wide p1

    return-wide p1
.end method
