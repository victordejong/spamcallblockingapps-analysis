.class public abstract Landroidx/media2/exoplayer/external/text/h;
.super Landroidx/media2/exoplayer/external/b/f;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/text/d;


# instance fields
.field private d:Landroidx/media2/exoplayer/external/text/d;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .line 66
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h;->d:Landroidx/media2/exoplayer/external/text/d;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/d;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/text/h;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/text/d;->a(J)I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroidx/media2/exoplayer/external/b/f;->a()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h;->d:Landroidx/media2/exoplayer/external/text/d;

    return-void
.end method

.method public final a(JLandroidx/media2/exoplayer/external/text/d;J)V
    .locals 0

    .line 48
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/text/h;->b:J

    .line 49
    iput-object p3, p0, Landroidx/media2/exoplayer/external/text/h;->d:Landroidx/media2/exoplayer/external/text/d;

    const-wide p1, 0x7fffffffffffffffL

    cmp-long p3, p4, p1

    if-nez p3, :cond_0

    .line 50
    iget-wide p4, p0, Landroidx/media2/exoplayer/external/text/h;->b:J

    .line 51
    :cond_0
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/text/h;->e:J

    return-void
.end method

.method public final a_(I)J
    .locals 4

    .line 61
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h;->d:Landroidx/media2/exoplayer/external/text/d;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/d;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/text/d;->a_(I)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/text/h;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final b()I
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h;->d:Landroidx/media2/exoplayer/external/text/d;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/d;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/text/d;->b()I

    move-result v0

    return v0
.end method

.method public final b(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/a;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h;->d:Landroidx/media2/exoplayer/external/text/d;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/d;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/text/h;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/text/d;->b(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract f()V
.end method
