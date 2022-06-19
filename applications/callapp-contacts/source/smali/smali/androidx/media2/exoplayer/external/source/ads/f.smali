.class public final Landroidx/media2/exoplayer/external/source/ads/f;
.super Landroidx/media2/exoplayer/external/source/o;
.source "SourceFile"


# instance fields
.field private final c:Landroidx/media2/exoplayer/external/source/ads/a;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/ads/a;)V
    .locals 3

    .line 46
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/o;-><init>(Landroidx/media2/exoplayer/external/al;)V

    .line 47
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/al;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 48
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 49
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/f;->c:Landroidx/media2/exoplayer/external/source/ads/a;

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;
    .locals 10

    .line 54
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/f;->b:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    .line 55
    iget-object v2, p2, Landroidx/media2/exoplayer/external/al$a;->a:Ljava/lang/Object;

    iget-object v3, p2, Landroidx/media2/exoplayer/external/al$a;->b:Ljava/lang/Object;

    iget v4, p2, Landroidx/media2/exoplayer/external/al$a;->c:I

    iget-wide v5, p2, Landroidx/media2/exoplayer/external/al$a;->d:J

    .line 1391
    iget-wide v7, p2, Landroidx/media2/exoplayer/external/al$a;->e:J

    .line 60
    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/ads/f;->c:Landroidx/media2/exoplayer/external/source/ads/a;

    move-object v1, p2

    .line 55
    invoke-virtual/range {v1 .. v9}, Landroidx/media2/exoplayer/external/al$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media2/exoplayer/external/source/ads/a;)Landroidx/media2/exoplayer/external/al$a;

    return-object p2
.end method

.method public final a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;
    .locals 2

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/o;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object p1

    .line 68
    iget-wide p2, p1, Landroidx/media2/exoplayer/external/al$b;->j:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    .line 69
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/f;->c:Landroidx/media2/exoplayer/external/source/ads/a;

    iget-wide p2, p2, Landroidx/media2/exoplayer/external/source/ads/a;->f:J

    iput-wide p2, p1, Landroidx/media2/exoplayer/external/al$b;->j:J

    :cond_0
    return-object p1
.end method
