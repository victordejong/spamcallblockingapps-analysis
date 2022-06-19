.class final Lcom/google/android/exoplayer2/text/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/exoplayer2/text/g/d;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/g/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/g/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/g;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/g/d;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 251
    invoke-interface {v0, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 252
    :cond_0
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 253
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/text/g/d;

    .line 255
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/g/d;->f:Lcom/google/android/exoplayer2/text/g/g;

    .line 3245
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/g/d;->g:[Ljava/lang/String;

    .line 255
    invoke-static {v1, v2, p1}, Lcom/google/android/exoplayer2/text/g/f;->a(Lcom/google/android/exoplayer2/text/g/g;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3288
    iget v1, v1, Lcom/google/android/exoplayer2/text/g/g;->m:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    return-object p0

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/g/d;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 260
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/text/g/d;->a(I)Lcom/google/android/exoplayer2/text/g/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/google/android/exoplayer2/text/g/g;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/g/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/g/g;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/g;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/g/g;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    array-length v2, p1

    if-ne v2, v1, :cond_1

    .line 60
    aget-object p0, p1, v0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/text/g/g;

    return-object p0

    .line 61
    :cond_1
    array-length v2, p1

    if-le v2, v1, :cond_5

    .line 63
    new-instance p0, Lcom/google/android/exoplayer2/text/g/g;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/g/g;-><init>()V

    .line 64
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 65
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/g/g;

    .line 1207
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/text/g/g;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    .line 70
    array-length v2, p1

    if-ne v2, v1, :cond_4

    .line 72
    aget-object p1, p1, v0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/g/g;

    .line 2207
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/g/g;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p1, :cond_5

    .line 73
    array-length v2, p1

    if-le v2, v1, :cond_5

    .line 75
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    .line 76
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/g/g;

    .line 3207
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/text/g/g;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-object p0
.end method

.method static b(Lcom/google/android/exoplayer2/text/g/d;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/g/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/g/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/g;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/g/d;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/d;->f:Lcom/google/android/exoplayer2/text/g/g;

    .line 4245
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/g/d;->g:[Ljava/lang/String;

    .line 271
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/text/g/f;->a(Lcom/google/android/exoplayer2/text/g/g;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4288
    iget v0, v0, Lcom/google/android/exoplayer2/text/g/g;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/g/d;->j:Lcom/google/android/exoplayer2/text/g/d;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
