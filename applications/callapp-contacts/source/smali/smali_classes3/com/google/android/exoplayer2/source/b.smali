.class final Lcom/google/android/exoplayer2/source/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/v;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/l;

.field private b:Lcom/google/android/exoplayer2/extractor/h;

.field private c:Lcom/google/android/exoplayer2/extractor/i;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b;->a:Lcom/google/android/exoplayer2/extractor/l;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b;->c:Lcom/google/android/exoplayer2/extractor/i;

    .line 127
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/extractor/h;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;

    .line 104
    :cond_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b;->c:Lcom/google/android/exoplayer2/extractor/i;

    return-void
.end method

.method public final a(JJ)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/h;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/h;->a(JJ)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/e;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/e;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/android/exoplayer2/extractor/j;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v6, Lcom/google/android/exoplayer2/extractor/e;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/e;-><init>(Lcom/google/android/exoplayer2/upstream/e;JJ)V

    .line 66
    iput-object v6, p0, Lcom/google/android/exoplayer2/source/b;->c:Lcom/google/android/exoplayer2/extractor/i;

    .line 67
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;

    if-eqz p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/b;->a:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/l;->a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object p1

    .line 71
    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    .line 72
    aget-object p1, p1, p6

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;

    goto :goto_4

    .line 74
    :cond_1
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_9

    aget-object v1, p1, v0

    .line 76
    :try_start_0
    invoke-interface {v1, v6}, Lcom/google/android/exoplayer2/extractor/h;->a(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 83
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    cmp-long p3, v0, p4

    if-nez p3, :cond_3

    :cond_2
    const/4 p6, 0x1

    :cond_3
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 84
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    goto :goto_3

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;

    if-nez v1, :cond_8

    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_7

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;

    if-nez p2, :cond_5

    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide p2

    cmp-long p8, p2, p4

    if-nez p8, :cond_6

    :cond_5
    const/4 p6, 0x1

    :cond_6
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 84
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 85
    throw p1

    :catch_0
    nop

    .line 83
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;

    if-nez v1, :cond_8

    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 84
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_9
    :goto_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;

    if-eqz p3, :cond_a

    .line 95
    :goto_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;

    invoke-interface {p1, p8}, Lcom/google/android/exoplayer2/extractor/h;->a(Lcom/google/android/exoplayer2/extractor/j;)V

    return-void

    .line 88
    :cond_a
    new-instance p3, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "None of the available extractors ("

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-direct {p3, p1, p2}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p3
.end method

.method public final b()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/extractor/h;

    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/e/d;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Lcom/google/android/exoplayer2/extractor/e/d;

    const/4 v1, 0x1

    .line 1236
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/e/d;->b:Z

    :cond_0
    return-void
.end method

.method public final c()J
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b;->c:Lcom/google/android/exoplayer2/extractor/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
