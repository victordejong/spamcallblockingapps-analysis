.class public final Ltn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lak;


# instance fields
.field public a:Lck;

.field public b:Lkk;

.field public c:Lun;

.field public d:I

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lsn;->a:Ldk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic d()[Lak;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lak;

    new-instance v1, Ltn;

    invoke-direct {v1}, Ltn;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lbk;Lhk;)I
    .locals 13

    iget-object p2, p0, Ltn;->c:Lun;

    if-nez p2, :cond_1

    invoke-static {p1}, Lvn;->a(Lbk;)Lun;

    move-result-object p2

    iput-object p2, p0, Ltn;->c:Lun;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Lun;->a()I

    move-result v3

    const v4, 0x8000

    iget-object p2, p0, Ltn;->c:Lun;

    invoke-virtual {p2}, Lun;->f()I

    move-result v5

    iget-object p2, p0, Ltn;->c:Lun;

    invoke-virtual {p2}, Lun;->g()I

    move-result v6

    iget-object p2, p0, Ltn;->c:Lun;

    invoke-virtual {p2}, Lun;->e()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, "audio/raw"

    invoke-static/range {v0 .. v11}, Landroidx/media2/exoplayer/external/Format;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    iget-object v0, p0, Ltn;->b:Lkk;

    invoke-interface {v0, p2}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    iget-object p2, p0, Ltn;->c:Lun;

    invoke-virtual {p2}, Lun;->b()I

    move-result p2

    iput p2, p0, Ltn;->d:I

    goto :goto_0

    :cond_0
    new-instance p1, Lch;

    const-string p2, "Unsupported or unrecognized wav header."

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p2, p0, Ltn;->c:Lun;

    invoke-virtual {p2}, Lun;->h()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Ltn;->c:Lun;

    invoke-static {p1, p2}, Lvn;->b(Lbk;Lun;)V

    iget-object p2, p0, Ltn;->a:Lck;

    iget-object v0, p0, Ltn;->c:Lun;

    invoke-interface {p2, v0}, Lck;->e(Lik;)V

    :cond_2
    iget-object p2, p0, Ltn;->c:Lun;

    invoke-virtual {p2}, Lun;->c()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 p2, 0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lit;->f(Z)V

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_4

    return v5

    :cond_4
    const v2, 0x8000

    iget v3, p0, Ltn;->e:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Ltn;->b:Lkk;

    invoke-interface {v0, p1, v1, p2}, Lkk;->d(Lbk;IZ)I

    move-result p2

    if-eq p2, v5, :cond_5

    iget v0, p0, Ltn;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Ltn;->e:I

    :cond_5
    iget v0, p0, Ltn;->e:I

    iget v1, p0, Ltn;->d:I

    div-int/2addr v0, v1

    if-lez v0, :cond_6

    iget-object v1, p0, Ltn;->c:Lun;

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v2

    iget p1, p0, Ltn;->e:I

    int-to-long v6, p1

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lun;->getTimeUs(J)J

    move-result-wide v7

    iget p1, p0, Ltn;->d:I

    mul-int v10, v0, p1

    iget p1, p0, Ltn;->e:I

    sub-int v11, p1, v10

    iput v11, p0, Ltn;->e:I

    iget-object v6, p0, Ltn;->b:Lkk;

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lkk;->a(JIIILkk$a;)V

    :cond_6
    if-ne p2, v5, :cond_7

    const/4 v4, -0x1

    :cond_7
    return v4
.end method

.method public b(Lbk;)Z
    .locals 0

    invoke-static {p1}, Lvn;->a(Lbk;)Lun;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lck;)V
    .locals 2

    iput-object p1, p0, Ltn;->a:Lck;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lck;->track(II)Lkk;

    move-result-object v0

    iput-object v0, p0, Ltn;->b:Lkk;

    const/4 v0, 0x0

    iput-object v0, p0, Ltn;->c:Lun;

    invoke-interface {p1}, Lck;->endTracks()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Ltn;->e:I

    return-void
.end method
