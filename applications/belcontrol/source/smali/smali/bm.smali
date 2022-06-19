.class public final Lbm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:I

.field public e:I

.field public f:I

.field public final g:[I

.field public final h:Lyt;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lbm;->g:[I

    new-instance v1, Lyt;

    invoke-direct {v1, v0}, Lyt;-><init>(I)V

    iput-object v1, p0, Lbm;->h:Lyt;

    return-void
.end method


# virtual methods
.method public a(Lbk;Z)Z
    .locals 8

    iget-object v0, p0, Lbm;->h:Lyt;

    invoke-virtual {v0}, Lyt;->E()V

    invoke-virtual {p0}, Lbm;->b()V

    invoke-interface {p1}, Lbk;->getLength()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    invoke-interface {p1}, Lbk;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lbk;->getPeekPosition()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1b

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    iget-object v0, p0, Lbm;->h:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/16 v1, 0x1b

    invoke-interface {p1, v0, v3, v1, v2}, Lbk;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lbm;->h:Lyt;

    invoke-virtual {v0}, Lyt;->y()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    return v3

    :cond_3
    new-instance p1, Lch;

    const-string p2, "expected OggS capture pattern at begin of page"

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v0, p0, Lbm;->h:Lyt;

    invoke-virtual {v0}, Lyt;->w()I

    move-result v0

    iput v0, p0, Lbm;->a:I

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    return v3

    :cond_5
    new-instance p1, Lch;

    const-string p2, "unsupported bit stream revision"

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object p2, p0, Lbm;->h:Lyt;

    invoke-virtual {p2}, Lyt;->w()I

    move-result p2

    iput p2, p0, Lbm;->b:I

    iget-object p2, p0, Lbm;->h:Lyt;

    invoke-virtual {p2}, Lyt;->l()J

    move-result-wide v4

    iput-wide v4, p0, Lbm;->c:J

    iget-object p2, p0, Lbm;->h:Lyt;

    invoke-virtual {p2}, Lyt;->m()J

    iget-object p2, p0, Lbm;->h:Lyt;

    invoke-virtual {p2}, Lyt;->m()J

    iget-object p2, p0, Lbm;->h:Lyt;

    invoke-virtual {p2}, Lyt;->m()J

    iget-object p2, p0, Lbm;->h:Lyt;

    invoke-virtual {p2}, Lyt;->w()I

    move-result p2

    iput p2, p0, Lbm;->d:I

    add-int/2addr p2, v1

    iput p2, p0, Lbm;->e:I

    iget-object p2, p0, Lbm;->h:Lyt;

    invoke-virtual {p2}, Lyt;->E()V

    iget-object p2, p0, Lbm;->h:Lyt;

    iget-object p2, p2, Lyt;->a:[B

    iget v0, p0, Lbm;->d:I

    invoke-interface {p1, p2, v3, v0}, Lbk;->peekFully([BII)V

    :goto_2
    iget p1, p0, Lbm;->d:I

    if-ge v3, p1, :cond_7

    iget-object p1, p0, Lbm;->g:[I

    iget-object p2, p0, Lbm;->h:Lyt;

    invoke-virtual {p2}, Lyt;->w()I

    move-result p2

    aput p2, p1, v3

    iget p1, p0, Lbm;->f:I

    iget-object p2, p0, Lbm;->g:[I

    aget p2, p2, v3

    add-int/2addr p1, p2

    iput p1, p0, Lbm;->f:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v2

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    return v3

    :cond_9
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lbm;->a:I

    iput v0, p0, Lbm;->b:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lbm;->c:J

    iput v0, p0, Lbm;->d:I

    iput v0, p0, Lbm;->e:I

    iput v0, p0, Lbm;->f:I

    return-void
.end method
