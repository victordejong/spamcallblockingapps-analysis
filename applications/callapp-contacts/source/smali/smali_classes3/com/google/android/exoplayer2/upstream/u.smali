.class public final Lcom/google/android/exoplayer2/upstream/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/h;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/h;

.field private final b:Lcom/google/android/exoplayer2/upstream/g;

.field private c:Z

.field private d:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/g;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/u;->a:Lcom/google/android/exoplayer2/upstream/h;

    .line 43
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/g;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/u;->b:Lcom/google/android/exoplayer2/upstream/g;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/u;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/h;->a([BII)I

    move-result p3

    if-lez p3, :cond_1

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->b:Lcom/google/android/exoplayer2/upstream/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/g;->a([BII)V

    .line 76
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/u;->d:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    int-to-long v0, p3

    sub-long/2addr p1, v0

    .line 77
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/u;->d:J

    :cond_1
    return p3
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/j;)J
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 54
    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/u;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/j;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/upstream/u;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v4

    .line 58
    :cond_0
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/j;->h:J

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-nez v8, :cond_2

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/u;->d:J

    cmp-long v8, v2, v6

    if-eqz v8, :cond_2

    .line 1697
    iget-wide v6, v1, Lcom/google/android/exoplayer2/upstream/j;->h:J

    cmp-long v8, v6, v2

    if-nez v8, :cond_1

    goto :goto_0

    .line 1700
    :cond_1
    new-instance v6, Lcom/google/android/exoplayer2/upstream/j;

    iget-object v10, v1, Lcom/google/android/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    iget-wide v11, v1, Lcom/google/android/exoplayer2/upstream/j;->b:J

    iget v13, v1, Lcom/google/android/exoplayer2/upstream/j;->c:I

    iget-object v14, v1, Lcom/google/android/exoplayer2/upstream/j;->d:[B

    iget-object v15, v1, Lcom/google/android/exoplayer2/upstream/j;->e:Ljava/util/Map;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/j;->g:J

    add-long v16, v7, v4

    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/j;->i:Ljava/lang/String;

    iget v5, v1, Lcom/google/android/exoplayer2/upstream/j;->j:I

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/j;->k:Ljava/lang/Object;

    move-object v9, v6

    move-wide/from16 v18, v2

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v1

    invoke-direct/range {v9 .. v22}, Lcom/google/android/exoplayer2/upstream/j;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    move-object v1, v6

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 62
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/upstream/u;->c:Z

    .line 63
    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/u;->b:Lcom/google/android/exoplayer2/upstream/g;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/upstream/g;->a(Lcom/google/android/exoplayer2/upstream/j;)V

    .line 64
    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/u;->d:J

    return-wide v1
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 1

    .line 48
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/u;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/h;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/u;->c:Z

    if-eqz v1, :cond_0

    .line 100
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/u;->c:Z

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->b:Lcom/google/android/exoplayer2/upstream/g;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/g;->a()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 99
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/u;->c:Z

    if-eqz v2, :cond_1

    .line 100
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/u;->c:Z

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u;->b:Lcom/google/android/exoplayer2/upstream/g;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/g;->a()V

    .line 103
    :cond_1
    throw v1
.end method
