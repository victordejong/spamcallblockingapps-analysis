.class public final Lso$a;
.super Ldp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z


# direct methods
.method public constructor <init>(Lph;JJ)V
    .locals 9

    invoke-direct {p0, p1}, Ldp;-><init>(Lph;)V

    invoke-virtual {p1}, Lph;->i()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    new-instance v0, Lph$c;

    invoke-direct {v0}, Lph$c;-><init>()V

    invoke-virtual {p1, v1, v0}, Lph;->m(ILph$c;)Lph$c;

    move-result-object p1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, p4, v5

    if-nez v0, :cond_0

    iget-wide p4, p1, Lph$c;->i:J

    goto :goto_0

    :cond_0
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    :goto_0
    iget-wide v5, p1, Lph$c;->i:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    cmp-long v0, p4, v5

    if-lez v0, :cond_1

    move-wide p4, v5

    :cond_1
    cmp-long v0, p2, v3

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lph$c;->d:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lso$b;

    invoke-direct {p1, v2}, Lso$b;-><init>(I)V

    throw p1

    :cond_3
    :goto_1
    cmp-long v0, p2, p4

    if-gtz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lso$b;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lso$b;-><init>(I)V

    throw p1

    :cond_5
    :goto_2
    iput-wide p2, p0, Lso$a;->c:J

    iput-wide p4, p0, Lso$a;->d:J

    cmp-long v0, p4, v7

    if-nez v0, :cond_6

    move-wide p2, v7

    goto :goto_3

    :cond_6
    sub-long p2, p4, p2

    :goto_3
    iput-wide p2, p0, Lso$a;->e:J

    iget-boolean p1, p1, Lph$c;->e:Z

    if-eqz p1, :cond_8

    if-eqz v0, :cond_7

    cmp-long p1, v5, v7

    if-eqz p1, :cond_8

    cmp-long p1, p4, v5

    if-nez p1, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p0, Lso$a;->f:Z

    return-void

    :cond_9
    new-instance p1, Lso$b;

    invoke-direct {p1, v1}, Lso$b;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public g(ILph$b;Z)Lph$b;
    .locals 12

    iget-object p1, p0, Ldp;->b:Lph;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lph;->g(ILph$b;Z)Lph$b;

    invoke-virtual {p2}, Lph$b;->l()J

    move-result-wide v0

    iget-wide v2, p0, Lso$a;->c:J

    sub-long v10, v0, v2

    iget-wide v0, p0, Lso$a;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    move-wide v8, v2

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v10

    move-wide v8, v0

    :goto_0
    iget-object v5, p2, Lph$b;->a:Ljava/lang/Object;

    iget-object v6, p2, Lph$b;->b:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Lph$b;->n(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lph$b;

    return-object p2
.end method

.method public o(ILph$c;ZJ)Lph$c;
    .locals 6

    iget-object v0, p0, Ldp;->b:Lph;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lph;->o(ILph$c;ZJ)Lph$c;

    iget-wide p3, p2, Lph$c;->j:J

    iget-wide v0, p0, Lso$a;->c:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Lph$c;->j:J

    iget-wide p3, p0, Lso$a;->e:J

    iput-wide p3, p2, Lph$c;->i:J

    iget-boolean p1, p0, Lso$a;->f:Z

    iput-boolean p1, p2, Lph$c;->e:Z

    iget-wide p3, p2, Lph$c;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v2

    if-eqz p1, :cond_1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lph$c;->h:J

    iget-wide v0, p0, Lso$a;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p2, Lph$c;->h:J

    iget-wide v0, p0, Lso$a;->c:J

    sub-long/2addr p3, v0

    iput-wide p3, p2, Lph$c;->h:J

    :cond_1
    iget-wide p3, p0, Lso$a;->c:J

    invoke-static {p3, p4}, Lcg;->b(J)J

    move-result-wide p3

    iget-wide v0, p2, Lph$c;->b:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    add-long/2addr v0, p3

    iput-wide v0, p2, Lph$c;->b:J

    :cond_2
    iget-wide v0, p2, Lph$c;->c:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    add-long/2addr v0, p3

    iput-wide v0, p2, Lph$c;->c:J

    :cond_3
    return-object p2
.end method
