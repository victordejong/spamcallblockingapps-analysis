.class public final Lns;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field public final a:Lls;

.field public final b:Los;

.field public final c:[B

.field public d:Z

.field public f:Z

.field public g:J


# direct methods
.method public constructor <init>(Lls;Los;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lns;->d:Z

    iput-boolean v0, p0, Lns;->f:Z

    iput-object p1, p0, Lns;->a:Lls;

    iput-object p2, p0, Lns;->b:Los;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lns;->c:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lns;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lns;->a:Lls;

    iget-object v1, p0, Lns;->b:Los;

    invoke-interface {v0, v1}, Lls;->a(Los;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lns;->d:Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lns;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lns;->a:Lls;

    invoke-interface {v0}, Lls;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lns;->f:Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lns;->a()V

    return-void
.end method

.method public read()I
    .locals 2

    iget-object v0, p0, Lns;->c:[B

    invoke-virtual {p0, v0}, Lns;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lns;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lns;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    iget-boolean v0, p0, Lns;->f:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lit;->f(Z)V

    invoke-virtual {p0}, Lns;->a()V

    iget-object v0, p0, Lns;->a:Lls;

    invoke-interface {v0, p1, p2, p3}, Lls;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-wide p2, p0, Lns;->g:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lns;->g:J

    return p1
.end method
