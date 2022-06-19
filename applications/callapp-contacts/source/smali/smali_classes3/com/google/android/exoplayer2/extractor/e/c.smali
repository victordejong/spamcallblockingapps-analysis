.class final Lcom/google/android/exoplayer2/extractor/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/e/e;


# instance fields
.field private final a:[J

.field private final b:[J

.field private final c:J


# direct methods
.method constructor <init>([J[JJ)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/c;->a:[J

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/e/c;->b:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/e/c;->c:J

    return-void
.end method

.method private static a(J[J[J)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[J[J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 108
    invoke-static {p2, p0, p1, v0}, Lcom/google/android/exoplayer2/util/af;->a([JJZ)I

    move-result v1

    .line 109
    aget-wide v2, p2, v1

    .line 110
    aget-wide v4, p3, v1

    add-int/2addr v1, v0

    .line 112
    array-length v0, p2

    if-ne v1, v0, :cond_0

    .line 113
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    aget-wide v6, p2, v1

    .line 116
    aget-wide p2, p3, v1

    cmp-long v0, v6, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    long-to-double v0, p0

    long-to-double v8, v2

    sub-double/2addr v0, v8

    sub-long/2addr v6, v2

    long-to-double v2, v6

    div-double/2addr v0, v2

    :goto_0
    sub-long/2addr p2, v4

    long-to-double p2, p2

    mul-double v0, v0, p2

    double-to-long p2, v0

    add-long/2addr p2, v4

    .line 122
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(J)Lcom/google/android/exoplayer2/extractor/v$a;
    .locals 6

    .line 75
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/e/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/af;->a(JJJ)J

    move-result-wide p1

    .line 77
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/c;->b:[J

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/c;->a:[J

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/e/c;->a(J[J[J)Landroid/util/Pair;

    move-result-object p1

    .line 78
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v0

    .line 79
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 80
    new-instance v2, Lcom/google/android/exoplayer2/extractor/v$a;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/w;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;)V

    return-object v2
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e/c;->c:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final c(J)J
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/c;->a:[J

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/c;->b:[J

    .line 86
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/e/c;->a(J[J[J)Landroid/util/Pair;

    move-result-object p1

    .line 87
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide p1

    return-wide p1
.end method
