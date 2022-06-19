.class public final Lcom/google/android/exoplayer2/extractor/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/v;


# instance fields
.field private final a:[J

.field private final b:[J

.field private final c:J

.field private final d:Z


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 8

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 44
    array-length v0, p2

    if-lez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 45
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/t;->d:Z

    if-eqz v1, :cond_2

    .line 46
    aget-wide v4, p2, v3

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 48
    new-array v4, v1, [J

    iput-object v4, p0, Lcom/google/android/exoplayer2/extractor/t;->a:[J

    .line 49
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/t;->b:[J

    .line 50
    invoke-static {p1, v3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    invoke-static {p2, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 53
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/t;->a:[J

    .line 54
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/t;->b:[J

    .line 56
    :goto_2
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/t;->c:J

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/exoplayer2/extractor/v$a;
    .locals 8

    .line 71
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/t;->d:Z

    if-nez v0, :cond_0

    .line 72
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$a;

    sget-object p2, Lcom/google/android/exoplayer2/extractor/w;->a:Lcom/google/android/exoplayer2/extractor/w;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/t;->b:[J

    const/4 v1, 0x1

    .line 75
    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/util/af;->a([JJZ)I

    move-result v0

    .line 76
    new-instance v2, Lcom/google/android/exoplayer2/extractor/w;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/t;->b:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/t;->a:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    .line 77
    iget-wide v3, v2, Lcom/google/android/exoplayer2/extractor/w;->b:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/t;->b:[J

    array-length p2, p1

    sub-int/2addr p2, v1

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    new-instance p2, Lcom/google/android/exoplayer2/extractor/w;

    add-int/2addr v0, v1

    aget-wide v3, p1, v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/t;->a:[J

    aget-wide v0, p1, v0

    invoke-direct {p2, v3, v4, v0, v1}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    .line 82
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$a;

    invoke-direct {p1, v2, p2}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p1

    .line 78
    :cond_2
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$a;

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p1
.end method

.method public final a()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/t;->d:Z

    return v0
.end method

.method public final b()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/t;->c:J

    return-wide v0
.end method
