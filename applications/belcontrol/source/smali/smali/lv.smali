.class public final Llv;
.super Lhs;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# instance fields
.field public final e:Lzf;

.field public f:Landroid/net/Uri;

.field public g:J

.field public h:J

.field public i:Z


# direct methods
.method public constructor <init>(Lzf;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhs;-><init>(Z)V

    invoke-static {p1}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lzf;

    iput-object p1, p0, Llv;->e:Lzf;

    return-void
.end method

.method public static g(Lzf;)Lls$a;
    .locals 1

    new-instance v0, Llv$a;

    invoke-direct {v0, p0}, Llv$a;-><init>(Lzf;)V

    return-object v0
.end method


# virtual methods
.method public a(Los;)J
    .locals 7

    iget-object v0, p1, Los;->a:Landroid/net/Uri;

    iput-object v0, p0, Llv;->f:Landroid/net/Uri;

    iget-wide v0, p1, Los;->e:J

    iput-wide v0, p0, Llv;->g:J

    invoke-virtual {p0, p1}, Lhs;->e(Los;)V

    iget-object v0, p0, Llv;->e:Lzf;

    invoke-virtual {v0}, Lzf;->a()J

    move-result-wide v0

    iget-wide v2, p1, Los;->f:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iput-wide v2, p0, Llv;->h:J

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Llv;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Llv;->h:J

    goto :goto_0

    :cond_1
    iput-wide v4, p0, Llv;->h:J

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llv;->i:Z

    invoke-virtual {p0, p1}, Lhs;->f(Los;)V

    iget-wide v0, p0, Llv;->h:J

    return-wide v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Llv;->f:Landroid/net/Uri;

    iget-boolean v0, p0, Llv;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Llv;->i:Z

    invoke-virtual {p0}, Lhs;->d()V

    :cond_0
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Llv;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 11

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Llv;->h:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v5, p3

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_0
    move v10, p3

    iget-object v5, p0, Llv;->e:Lzf;

    iget-wide v6, p0, Llv;->g:J

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Lzf;->e(J[BII)I

    move-result p1

    if-gez p1, :cond_4

    iget-wide p1, p0, Llv;->h:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    return v4

    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4
    iget-wide p2, p0, Llv;->g:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Llv;->g:J

    iget-wide p2, p0, Llv;->h:J

    cmp-long v4, p2, v2

    if-eqz v4, :cond_5

    sub-long/2addr p2, v0

    iput-wide p2, p0, Llv;->h:J

    :cond_5
    invoke-virtual {p0, p1}, Lhs;->c(I)V

    return p1
.end method
