.class public Lwj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lik;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:J

.field public final e:I

.field public final f:J


# direct methods
.method public constructor <init>(JJII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lwj;->a:J

    iput-wide p3, p0, Lwj;->b:J

    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 p6, 0x1

    :cond_0
    iput p6, p0, Lwj;->c:I

    iput p5, p0, Lwj;->e:I

    const-wide/16 v0, -0x1

    cmp-long p6, p1, v0

    if-nez p6, :cond_1

    iput-wide v0, p0, Lwj;->d:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_1
    sub-long v0, p1, p3

    iput-wide v0, p0, Lwj;->d:J

    invoke-static {p1, p2, p3, p4, p5}, Lwj;->c(JJI)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lwj;->f:J

    return-void
.end method

.method public static c(JJI)J
    .locals 0

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x8

    mul-long p0, p0, p2

    const-wide/32 p2, 0xf4240

    mul-long p0, p0, p2

    int-to-long p2, p4

    div-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public final a(J)J
    .locals 9

    iget v0, p0, Lwj;->e:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0x7a1200

    div-long/2addr p1, v0

    iget v0, p0, Lwj;->c:I

    int-to-long v1, v0

    div-long/2addr p1, v1

    int-to-long v1, v0

    mul-long v3, p1, v1

    iget-wide p1, p0, Lwj;->d:J

    int-to-long v0, v0

    sub-long v7, p1, v0

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, Lnu;->o(JJJ)J

    move-result-wide p1

    iget-wide v0, p0, Lwj;->b:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public b(J)J
    .locals 3

    iget-wide v0, p0, Lwj;->b:J

    iget v2, p0, Lwj;->e:I

    invoke-static {p1, p2, v0, v1, v2}, Lwj;->c(JJI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lwj;->f:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lik$a;
    .locals 7

    iget-wide v0, p0, Lwj;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance p1, Lik$a;

    new-instance p2, Ljk;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lwj;->b:J

    invoke-direct {p2, v0, v1, v2, v3}, Ljk;-><init>(JJ)V

    invoke-direct {p1, p2}, Lik$a;-><init>(Ljk;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lwj;->a(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lwj;->b(J)J

    move-result-wide v2

    new-instance v4, Ljk;

    invoke-direct {v4, v2, v3, v0, v1}, Ljk;-><init>(JJ)V

    cmp-long v5, v2, p1

    if-gez v5, :cond_2

    iget p1, p0, Lwj;->c:I

    int-to-long v2, p1

    add-long/2addr v2, v0

    iget-wide v5, p0, Lwj;->a:J

    cmp-long p2, v2, v5

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long p1, p1

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lwj;->b(J)J

    move-result-wide p1

    new-instance v2, Ljk;

    invoke-direct {v2, p1, p2, v0, v1}, Ljk;-><init>(JJ)V

    new-instance p1, Lik$a;

    invoke-direct {p1, v4, v2}, Lik$a;-><init>(Ljk;Ljk;)V

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Lik$a;

    invoke-direct {p1, v4}, Lik$a;-><init>(Ljk;)V

    return-object p1
.end method

.method public isSeekable()Z
    .locals 5

    iget-wide v0, p0, Lwj;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
