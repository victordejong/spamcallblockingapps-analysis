.class public final Lcom/google/android/exoplayer2/extractor/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/v;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/p;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/p;J)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/o;->a:Lcom/google/android/exoplayer2/extractor/p;

    .line 39
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/o;->b:J

    return-void
.end method

.method private a(JJ)Lcom/google/android/exoplayer2/extractor/w;
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/o;->a:Lcom/google/android/exoplayer2/extractor/p;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/p;->e:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    .line 80
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/o;->b:J

    add-long/2addr v0, p3

    .line 81
    new-instance p3, Lcom/google/android/exoplayer2/extractor/w;

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    return-object p3
.end method


# virtual methods
.method public final a(J)Lcom/google/android/exoplayer2/extractor/v$a;
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/o;->a:Lcom/google/android/exoplayer2/extractor/p;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/p;->k:Lcom/google/android/exoplayer2/extractor/p$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/o;->a:Lcom/google/android/exoplayer2/extractor/p;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/p;->k:Lcom/google/android/exoplayer2/extractor/p$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/p$a;->a:[J

    .line 56
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/o;->a:Lcom/google/android/exoplayer2/extractor/p;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/p;->k:Lcom/google/android/exoplayer2/extractor/p$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/p$a;->b:[J

    .line 58
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/o;->a:Lcom/google/android/exoplayer2/extractor/p;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/p;->a(J)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 60
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/util/af;->a([JJZ)I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    move-wide v6, v3

    goto :goto_0

    .line 66
    :cond_0
    aget-wide v6, v0, v2

    :goto_0
    if-ne v2, v5, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    aget-wide v3, v1, v2

    .line 68
    :goto_1
    invoke-direct {p0, v6, v7, v3, v4}, Lcom/google/android/exoplayer2/extractor/o;->a(JJ)Lcom/google/android/exoplayer2/extractor/w;

    move-result-object v3

    .line 69
    iget-wide v4, v3, Lcom/google/android/exoplayer2/extractor/w;->b:J

    cmp-long v6, v4, p1

    if-eqz v6, :cond_3

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    if-ne v2, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 72
    aget-wide p1, v0, v2

    aget-wide v0, v1, v2

    .line 73
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/o;->a(JJ)Lcom/google/android/exoplayer2/extractor/w;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/google/android/exoplayer2/extractor/v$a;

    invoke-direct {p2, v3, p1}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p2

    .line 70
    :cond_3
    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$a;

    invoke-direct {p1, v3}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p1
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/o;->a:Lcom/google/android/exoplayer2/extractor/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/p;->a()J

    move-result-wide v0

    return-wide v0
.end method
