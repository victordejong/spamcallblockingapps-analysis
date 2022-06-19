.class public final Lsk;
.super Lrk;
.source ""


# instance fields
.field public final b:Lyt;

.field public final c:Lyt;

.field public d:I

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Lkk;)V
    .locals 1

    invoke-direct {p0, p1}, Lrk;-><init>(Lkk;)V

    new-instance p1, Lyt;

    sget-object v0, Lwt;->a:[B

    invoke-direct {p1, v0}, Lyt;-><init>([B)V

    iput-object p1, p0, Lsk;->b:Lyt;

    new-instance p1, Lyt;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lyt;-><init>(I)V

    iput-object p1, p0, Lsk;->c:Lyt;

    return-void
.end method


# virtual methods
.method public b(Lyt;)Z
    .locals 3

    invoke-virtual {p1}, Lyt;->w()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iput v0, p0, Lsk;->f:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    new-instance v0, Lrk$a;

    const/16 v1, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Video format not supported: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lrk$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lyt;J)V
    .locals 12

    invoke-virtual {p1}, Lyt;->w()I

    move-result v0

    invoke-virtual {p1}, Lyt;->i()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lsk;->e:Z

    if-nez v1, :cond_0

    new-instance v0, Lyt;

    invoke-virtual {p1}, Lyt;->a()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lyt;-><init>([B)V

    iget-object v1, v0, Lyt;->a:[B

    invoke-virtual {p1}, Lyt;->a()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2}, Lyt;->f([BII)V

    invoke-static {v0}, Lou;->b(Lyt;)Lou;

    move-result-object p1

    iget p3, p1, Lou;->b:I

    iput p3, p0, Lsk;->d:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    iget v5, p1, Lou;->c:I

    iget v6, p1, Lou;->d:I

    const/high16 v7, -0x40800000    # -1.0f

    iget-object v8, p1, Lou;->a:Ljava/util/List;

    const/4 v9, -0x1

    iget v10, p1, Lou;->e:F

    const/4 v11, 0x0

    const-string v1, "video/avc"

    invoke-static/range {v0 .. v11}, Landroidx/media2/exoplayer/external/Format;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    iget-object p3, p0, Lrk;->a:Lkk;

    invoke-interface {p3, p1}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    iput-boolean p2, p0, Lsk;->e:Z

    goto :goto_2

    :cond_0
    if-ne v0, p2, :cond_3

    iget-boolean v0, p0, Lsk;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsk;->c:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    aput-byte p3, v0, p3

    aput-byte p3, v0, p2

    const/4 v1, 0x2

    aput-byte p3, v0, v1

    iget v0, p0, Lsk;->d:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p1}, Lyt;->a()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lsk;->c:Lyt;

    iget-object v2, v2, Lyt;->a:[B

    iget v3, p0, Lsk;->d:I

    invoke-virtual {p1, v2, v0, v3}, Lyt;->f([BII)V

    iget-object v2, p0, Lsk;->c:Lyt;

    invoke-virtual {v2, p3}, Lyt;->J(I)V

    iget-object v2, p0, Lsk;->c:Lyt;

    invoke-virtual {v2}, Lyt;->A()I

    move-result v2

    iget-object v3, p0, Lsk;->b:Lyt;

    invoke-virtual {v3, p3}, Lyt;->J(I)V

    iget-object v3, p0, Lrk;->a:Lkk;

    iget-object v6, p0, Lsk;->b:Lyt;

    invoke-interface {v3, v6, v1}, Lkk;->c(Lyt;I)V

    add-int/lit8 v7, v7, 0x4

    iget-object v3, p0, Lrk;->a:Lkk;

    invoke-interface {v3, p1, v2}, Lkk;->c(Lyt;I)V

    add-int/2addr v7, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lrk;->a:Lkk;

    iget p1, p0, Lsk;->f:I

    if-ne p1, p2, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lkk;->a(JIIILkk$a;)V

    :cond_3
    :goto_2
    return-void
.end method
