.class final Landroidx/media2/exoplayer/external/extractor/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/c/c$a;


# instance fields
.field private final a:[J

.field private final b:[J

.field private final c:J


# direct methods
.method constructor <init>([J[J)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/c/b;->a:[J

    .line 65
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/c/b;->b:[J

    .line 68
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/c/b;->c:J

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

    .line 111
    invoke-static {p2, p0, p1, v0}, Landroidx/media2/exoplayer/external/util/ac;->a([JJZ)I

    move-result v1

    .line 112
    aget-wide v2, p2, v1

    .line 113
    aget-wide v4, p3, v1

    add-int/2addr v1, v0

    .line 115
    array-length v0, p2

    if-ne v1, v0, :cond_0

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    aget-wide v6, p2, v1

    .line 119
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

    .line 125
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(J)Landroidx/media2/exoplayer/external/extractor/o$a;
    .locals 6

    .line 78
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/c/b;->c:J

    const-wide/16 v2, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/util/ac;->a(JJJ)J

    move-result-wide p1

    .line 80
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide p1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/c/b;->b:[J

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/c/b;->a:[J

    invoke-static {p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/c/b;->a(J[J[J)Landroid/util/Pair;

    move-result-object p1

    .line 81
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v0

    .line 82
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 83
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/o$a;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {v3, v0, v1, p1, p2}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object v2
.end method

.method public final b()J
    .locals 2

    .line 95
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c/b;->c:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final c(J)J
    .locals 2

    .line 88
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/c/b;->a:[J

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/c/b;->b:[J

    .line 89
    invoke-static {p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/c/b;->a(J[J[J)Landroid/util/Pair;

    move-result-object p1

    .line 90
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final j_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
