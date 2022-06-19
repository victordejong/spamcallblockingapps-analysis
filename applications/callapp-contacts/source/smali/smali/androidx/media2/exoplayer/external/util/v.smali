.class public final Landroidx/media2/exoplayer/external/util/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/util/l;


# instance fields
.field public a:Landroidx/media2/exoplayer/external/ad;

.field private final b:Landroidx/media2/exoplayer/external/util/b;

.field private c:Z

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/util/b;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/v;->b:Landroidx/media2/exoplayer/external/util/b;

    .line 47
    sget-object p1, Landroidx/media2/exoplayer/external/ad;->a:Landroidx/media2/exoplayer/external/ad;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/v;->a:Landroidx/media2/exoplayer/external/ad;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 54
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/v;->c:Z

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/v;->b:Landroidx/media2/exoplayer/external/util/b;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/util/v;->e:J

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/util/v;->c:Z

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 76
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/util/v;->d:J

    .line 77
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/util/v;->c:Z

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Landroidx/media2/exoplayer/external/util/v;->b:Landroidx/media2/exoplayer/external/util/b;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/util/b;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/util/v;->e:J

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/ad;)V
    .locals 2

    .line 99
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/v;->c:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/v;->h_()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/util/v;->a(J)V

    .line 102
    :cond_0
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/v;->a:Landroidx/media2/exoplayer/external/ad;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/v;->c:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/v;->h_()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/util/v;->a(J)V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/util/v;->c:Z

    :cond_0
    return-void
.end method

.method public final d()Landroidx/media2/exoplayer/external/ad;
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/v;->a:Landroidx/media2/exoplayer/external/ad;

    return-object v0
.end method

.method public final h_()J
    .locals 6

    .line 84
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/v;->d:J

    .line 85
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/util/v;->c:Z

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/v;->b:Landroidx/media2/exoplayer/external/util/b;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/util/b;->a()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/util/v;->e:J

    sub-long/2addr v2, v4

    .line 87
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/v;->a:Landroidx/media2/exoplayer/external/ad;

    iget v4, v4, Landroidx/media2/exoplayer/external/ad;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 88
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v2

    goto :goto_0

    .line 90
    :cond_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/v;->a:Landroidx/media2/exoplayer/external/ad;

    .line 1093
    iget v4, v4, Landroidx/media2/exoplayer/external/ad;->e:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method
