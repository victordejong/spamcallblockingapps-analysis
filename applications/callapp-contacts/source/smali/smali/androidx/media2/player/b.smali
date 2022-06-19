.class final Landroidx/media2/player/b;
.super Landroidx/media2/exoplayer/external/upstream/d;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/media2/common/b;

.field private b:Landroid/net/Uri;

.field private c:J

.field private d:J

.field private e:Z


# direct methods
.method constructor <init>(Landroidx/media2/common/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/d;-><init>(Z)V

    .line 65
    invoke-static {p1}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/b;

    iput-object p1, p0, Landroidx/media2/player/b;->a:Landroidx/media2/common/b;

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

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_0
    iget-wide p1, p0, Landroidx/media2/player/b;->d:J

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    return v2

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v3, p1, v0

    if-eqz v3, :cond_2

    int-to-long v3, p3

    .line 94
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 95
    :cond_2
    iget-object p1, p0, Landroidx/media2/player/b;->a:Landroidx/media2/common/b;

    invoke-virtual {p1}, Landroidx/media2/common/b;->a()I

    move-result p1

    if-gez p1, :cond_4

    .line 97
    iget-wide p1, p0, Landroidx/media2/player/b;->d:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_3

    return v2

    .line 98
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 102
    :cond_4
    iget-wide p2, p0, Landroidx/media2/player/b;->c:J

    int-to-long v2, p1

    add-long/2addr p2, v2

    iput-wide p2, p0, Landroidx/media2/player/b;->c:J

    .line 103
    iget-wide p2, p0, Landroidx/media2/player/b;->d:J

    cmp-long v4, p2, v0

    if-eqz v4, :cond_5

    sub-long/2addr p2, v2

    .line 104
    iput-wide p2, p0, Landroidx/media2/player/b;->d:J

    .line 106
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/media2/player/b;->a(I)V

    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/player/b;->b:Landroid/net/Uri;

    .line 71
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/h;->f:J

    iput-wide v0, p0, Landroidx/media2/player/b;->c:J

    .line 72
    invoke-virtual {p0}, Landroidx/media2/player/b;->d()V

    .line 73
    iget-object v0, p0, Landroidx/media2/player/b;->a:Landroidx/media2/common/b;

    invoke-virtual {v0}, Landroidx/media2/common/b;->b()J

    move-result-wide v0

    .line 74
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/h;->g:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 75
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/h;->g:J

    iput-wide v0, p0, Landroidx/media2/player/b;->d:J

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 77
    iget-wide v2, p0, Landroidx/media2/player/b;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/player/b;->d:J

    goto :goto_0

    .line 79
    :cond_1
    iput-wide v4, p0, Landroidx/media2/player/b;->d:J

    :goto_0
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Landroidx/media2/player/b;->e:Z

    .line 82
    invoke-virtual {p0, p1}, Landroidx/media2/player/b;->b(Landroidx/media2/exoplayer/external/upstream/h;)V

    .line 83
    iget-wide v0, p0, Landroidx/media2/player/b;->d:J

    return-wide v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/media2/player/b;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Landroidx/media2/player/b;->b:Landroid/net/Uri;

    .line 118
    iget-boolean v0, p0, Landroidx/media2/player/b;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Landroidx/media2/player/b;->e:Z

    .line 120
    invoke-virtual {p0}, Landroidx/media2/player/b;->e()V

    :cond_0
    return-void
.end method
