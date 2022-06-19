.class public Lxl$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcm;
.implements Lik;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:[J

.field public b:[J

.field public c:J

.field public d:J

.field public final synthetic e:Lxl;


# direct methods
.method public constructor <init>(Lxl;)V
    .locals 2

    iput-object p1, p0, Lxl$a;->e:Lxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lxl$a;->c:J

    iput-wide v0, p0, Lxl$a;->d:J

    return-void
.end method


# virtual methods
.method public a(Lbk;)J
    .locals 6

    iget-wide v0, p0, Lxl$a;->d:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    iput-wide v2, p0, Lxl$a;->d:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public b(Lyt;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lyt;->K(I)V

    invoke-virtual {p1}, Lyt;->z()I

    move-result v0

    div-int/lit8 v0, v0, 0x12

    new-array v1, v0, [J

    iput-object v1, p0, Lxl$a;->a:[J

    new-array v1, v0, [J

    iput-object v1, p0, Lxl$a;->b:[J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lxl$a;->a:[J

    invoke-virtual {p1}, Lyt;->p()J

    move-result-wide v3

    aput-wide v3, v2, v1

    iget-object v2, p0, Lxl$a;->b:[J

    invoke-virtual {p1}, Lyt;->p()J

    move-result-wide v3

    aput-wide v3, v2, v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lyt;->K(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lxl$a;->c:J

    return-void
.end method

.method public createSeekMap()Lik;
    .locals 0

    return-object p0
.end method

.method public getDurationUs()J
    .locals 2

    iget-object v0, p0, Lxl$a;->e:Lxl;

    invoke-static {v0}, Lxl;->l(Lxl;)Lpt;

    move-result-object v0

    invoke-virtual {v0}, Lpt;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lik$a;
    .locals 9

    iget-object v0, p0, Lxl$a;->e:Lxl;

    invoke-virtual {v0, p1, p2}, Lem;->b(J)J

    move-result-wide v0

    iget-object v2, p0, Lxl$a;->a:[J

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3, v3}, Lnu;->f([JJZZ)I

    move-result v0

    iget-object v1, p0, Lxl$a;->e:Lxl;

    iget-object v2, p0, Lxl$a;->a:[J

    aget-wide v4, v2, v0

    invoke-virtual {v1, v4, v5}, Lem;->a(J)J

    move-result-wide v1

    iget-wide v4, p0, Lxl$a;->c:J

    iget-object v6, p0, Lxl$a;->b:[J

    aget-wide v7, v6, v0

    add-long/2addr v4, v7

    new-instance v6, Ljk;

    invoke-direct {v6, v1, v2, v4, v5}, Ljk;-><init>(JJ)V

    cmp-long v4, v1, p1

    if-gez v4, :cond_1

    iget-object p1, p0, Lxl$a;->a:[J

    array-length p2, p1

    sub-int/2addr p2, v3

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lxl$a;->e:Lxl;

    add-int/2addr v0, v3

    aget-wide v1, p1, v0

    invoke-virtual {p2, v1, v2}, Lem;->a(J)J

    move-result-wide p1

    iget-wide v1, p0, Lxl$a;->c:J

    iget-object v3, p0, Lxl$a;->b:[J

    aget-wide v4, v3, v0

    add-long/2addr v1, v4

    new-instance v0, Ljk;

    invoke-direct {v0, p1, p2, v1, v2}, Ljk;-><init>(JJ)V

    new-instance p1, Lik$a;

    invoke-direct {p1, v6, v0}, Lik$a;-><init>(Ljk;Ljk;)V

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Lik$a;

    invoke-direct {p1, v6}, Lik$a;-><init>(Ljk;)V

    return-object p1
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startSeek(J)J
    .locals 2

    iget-object v0, p0, Lxl$a;->e:Lxl;

    invoke-virtual {v0, p1, p2}, Lem;->b(J)J

    move-result-wide p1

    iget-object v0, p0, Lxl$a;->a:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lnu;->f([JJZZ)I

    move-result v0

    iget-object v1, p0, Lxl$a;->a:[J

    aget-wide v0, v1, v0

    iput-wide v0, p0, Lxl$a;->d:J

    return-wide p1
.end method
