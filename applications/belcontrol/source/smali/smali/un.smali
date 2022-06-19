.class public final Lun;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lik;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lun;->a:I

    iput p2, p0, Lun;->b:I

    iput p3, p0, Lun;->c:I

    iput p4, p0, Lun;->d:I

    iput p5, p0, Lun;->e:I

    iput p6, p0, Lun;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lun;->b:I

    iget v1, p0, Lun;->e:I

    mul-int v0, v0, v1

    iget v1, p0, Lun;->a:I

    mul-int v0, v0, v1

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lun;->d:I

    return v0
.end method

.method public c()J
    .locals 4

    invoke-virtual {p0}, Lun;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lun;->g:J

    iget-wide v2, p0, Lun;->h:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lun;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lun;->a:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lun;->b:I

    return v0
.end method

.method public getDurationUs()J
    .locals 4

    iget-wide v0, p0, Lun;->h:J

    iget v2, p0, Lun;->d:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lun;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getSeekPoints(J)Lik$a;
    .locals 11

    iget v0, p0, Lun;->c:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget v2, p0, Lun;->d:I

    int-to-long v3, v2

    div-long/2addr v0, v3

    int-to-long v3, v2

    mul-long v5, v0, v3

    iget-wide v0, p0, Lun;->h:J

    int-to-long v2, v2

    sub-long v9, v0, v2

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Lnu;->o(JJJ)J

    move-result-wide v0

    iget-wide v2, p0, Lun;->g:J

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lun;->getTimeUs(J)J

    move-result-wide v4

    new-instance v6, Ljk;

    invoke-direct {v6, v4, v5, v2, v3}, Ljk;-><init>(JJ)V

    cmp-long v7, v4, p1

    if-gez v7, :cond_1

    iget-wide p1, p0, Lun;->h:J

    iget v4, p0, Lun;->d:I

    int-to-long v7, v4

    sub-long/2addr p1, v7

    cmp-long v5, v0, p1

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-long p1, v4

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lun;->getTimeUs(J)J

    move-result-wide p1

    new-instance v0, Ljk;

    invoke-direct {v0, p1, p2, v2, v3}, Ljk;-><init>(JJ)V

    new-instance p1, Lik$a;

    invoke-direct {p1, v6, v0}, Lik$a;-><init>(Ljk;Ljk;)V

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Lik$a;

    invoke-direct {p1, v6}, Lik$a;-><init>(Ljk;)V

    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 2

    iget-wide v0, p0, Lun;->g:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lun;->c:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public h()Z
    .locals 5

    iget-wide v0, p0, Lun;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lun;->h:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(JJ)V
    .locals 0

    iput-wide p1, p0, Lun;->g:J

    iput-wide p3, p0, Lun;->h:J

    return-void
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
