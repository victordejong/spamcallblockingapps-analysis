.class public final Lmn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lju;

.field public final b:Lyt;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lju;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lju;-><init>(J)V

    iput-object v0, p0, Lmn;->a:Lju;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lmn;->f:J

    iput-wide v0, p0, Lmn;->g:J

    iput-wide v0, p0, Lmn;->h:J

    new-instance v0, Lyt;

    invoke-direct {v0}, Lyt;-><init>()V

    iput-object v0, p0, Lmn;->b:Lyt;

    return-void
.end method


# virtual methods
.method public final a(Lbk;)I
    .locals 2

    iget-object v0, p0, Lmn;->b:Lyt;

    sget-object v1, Lnu;->f:[B

    invoke-virtual {v0, v1}, Lyt;->G([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmn;->c:Z

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    const/4 p1, 0x0

    return p1
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lmn;->h:J

    return-wide v0
.end method

.method public c()Lju;
    .locals 1

    iget-object v0, p0, Lmn;->a:Lju;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lmn;->c:Z

    return v0
.end method

.method public e(Lbk;Lhk;I)I
    .locals 5

    if-gtz p3, :cond_0

    invoke-virtual {p0, p1}, Lmn;->a(Lbk;)I

    move-result p1

    return p1

    :cond_0
    iget-boolean v0, p0, Lmn;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lmn;->h(Lbk;Lhk;I)I

    move-result p1

    return p1

    :cond_1
    iget-wide v0, p0, Lmn;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lmn;->a(Lbk;)I

    move-result p1

    return p1

    :cond_2
    iget-boolean v0, p0, Lmn;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lmn;->f(Lbk;Lhk;I)I

    move-result p1

    return p1

    :cond_3
    iget-wide p2, p0, Lmn;->f:J

    cmp-long v0, p2, v2

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lmn;->a(Lbk;)I

    move-result p1

    return p1

    :cond_4
    iget-object v0, p0, Lmn;->a:Lju;

    invoke-virtual {v0, p2, p3}, Lju;->b(J)J

    move-result-wide p2

    iget-object v0, p0, Lmn;->a:Lju;

    iget-wide v1, p0, Lmn;->g:J

    invoke-virtual {v0, v1, v2}, Lju;->b(J)J

    move-result-wide v0

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lmn;->h:J

    invoke-virtual {p0, p1}, Lmn;->a(Lbk;)I

    move-result p1

    return p1
.end method

.method public final f(Lbk;Lhk;I)I
    .locals 8

    invoke-interface {p1}, Lbk;->getLength()J

    move-result-wide v0

    const-wide/32 v2, 0x1b8a0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v2

    const/4 v0, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    iput-wide v4, p2, Lhk;->a:J

    return v6

    :cond_0
    iget-object p2, p0, Lmn;->b:Lyt;

    invoke-virtual {p2, v1}, Lyt;->F(I)V

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    iget-object p2, p0, Lmn;->b:Lyt;

    iget-object p2, p2, Lyt;->a:[B

    invoke-interface {p1, p2, v0, v1}, Lbk;->peekFully([BII)V

    iget-object p1, p0, Lmn;->b:Lyt;

    invoke-virtual {p0, p1, p3}, Lmn;->g(Lyt;I)J

    move-result-wide p1

    iput-wide p1, p0, Lmn;->f:J

    iput-boolean v6, p0, Lmn;->d:Z

    return v0
.end method

.method public final g(Lyt;I)J
    .locals 7

    invoke-virtual {p1}, Lyt;->c()I

    move-result v0

    invoke-virtual {p1}, Lyt;->d()I

    move-result v1

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v1, :cond_2

    iget-object v4, p1, Lyt;->a:[B

    aget-byte v4, v4, v0

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p2}, Lqn;->b(Lyt;II)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    return-wide v4

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public final h(Lbk;Lhk;I)I
    .locals 7

    invoke-interface {p1}, Lbk;->getLength()J

    move-result-wide v0

    const-wide/32 v2, 0x1b8a0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr v0, v4

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v4

    const/4 v2, 0x1

    cmp-long v6, v4, v0

    if-eqz v6, :cond_0

    iput-wide v0, p2, Lhk;->a:J

    return v2

    :cond_0
    iget-object p2, p0, Lmn;->b:Lyt;

    invoke-virtual {p2, v3}, Lyt;->F(I)V

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    iget-object p2, p0, Lmn;->b:Lyt;

    iget-object p2, p2, Lyt;->a:[B

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v3}, Lbk;->peekFully([BII)V

    iget-object p1, p0, Lmn;->b:Lyt;

    invoke-virtual {p0, p1, p3}, Lmn;->i(Lyt;I)J

    move-result-wide p1

    iput-wide p1, p0, Lmn;->g:J

    iput-boolean v2, p0, Lmn;->e:Z

    return v0
.end method

.method public final i(Lyt;I)J
    .locals 7

    invoke-virtual {p1}, Lyt;->c()I

    move-result v0

    invoke-virtual {p1}, Lyt;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v1, v0, :cond_2

    iget-object v4, p1, Lyt;->a:[B

    aget-byte v4, v4, v1

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v1, p2}, Lqn;->b(Lyt;II)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    return-wide v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method
