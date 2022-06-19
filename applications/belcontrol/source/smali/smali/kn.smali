.class public final Lkn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhn;


# instance fields
.field public a:Lju;

.field public b:Lkk;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lyt;)V
    .locals 8

    iget-boolean v0, p0, Lkn;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lkn;->a:Lju;

    invoke-virtual {v0}, Lju;->e()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkn;->b:Lkk;

    const/4 v1, 0x0

    iget-object v2, p0, Lkn;->a:Lju;

    invoke-virtual {v2}, Lju;->e()J

    move-result-wide v2

    const-string v4, "application/x-scte35"

    invoke-static {v1, v4, v2, v3}, Landroidx/media2/exoplayer/external/Format;->p(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkn;->c:Z

    :cond_1
    invoke-virtual {p1}, Lyt;->a()I

    move-result v5

    iget-object v0, p0, Lkn;->b:Lkk;

    invoke-interface {v0, p1, v5}, Lkk;->c(Lyt;I)V

    iget-object v1, p0, Lkn;->b:Lkk;

    iget-object p1, p0, Lkn;->a:Lju;

    invoke-virtual {p1}, Lju;->d()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lkk;->a(JIIILkk$a;)V

    return-void
.end method

.method public b(Lju;Lck;Lpn$d;)V
    .locals 2

    iput-object p1, p0, Lkn;->a:Lju;

    invoke-virtual {p3}, Lpn$d;->a()V

    invoke-virtual {p3}, Lpn$d;->c()I

    move-result p1

    const/4 v0, 0x4

    invoke-interface {p2, p1, v0}, Lck;->track(II)Lkk;

    move-result-object p1

    iput-object p1, p0, Lkn;->b:Lkk;

    invoke-virtual {p3}, Lpn$d;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/x-scte35"

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p2, p3, v0, v1, v0}, Landroidx/media2/exoplayer/external/Format;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
