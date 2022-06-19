.class public final synthetic Lj4/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/a1;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lj4/s0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lj4/b1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/s0;->b:Ljava/lang/Object;

    iput p2, p0, Lj4/s0;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Lj4/s0;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj4/s0;->b:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x7

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const v0, 0xffff

    :goto_0
    return v0
.end method

.method public b(II)Lj4/s0;
    .locals 3

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lj4/s0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 2
    iget v2, p0, Lj4/s0;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lj4/s0;->a:I

    .line 3
    check-cast v0, [I

    aput p2, v0, p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public zza()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lj4/s0;->b:Ljava/lang/Object;

    check-cast v0, Lj4/b1;

    iget v1, p0, Lj4/s0;->a:I

    .line 1
    invoke-virtual {v0, v1}, Lj4/b1;->a(I)Lj4/y0;

    move-result-object v2

    iget-object v3, v2, Lj4/y0;->c:Lj4/x0;

    iget v4, v3, Lj4/x0;->d:I

    invoke-static {v4}, Ly/d;->s(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2
    iget-object v1, v0, Lj4/b1;->a:Lj4/w;

    iget-object v4, v3, Lj4/x0;->a:Ljava/lang/String;

    iget v5, v2, Lj4/y0;->b:I

    iget-wide v6, v3, Lj4/x0;->b:J

    .line 3
    invoke-virtual {v1, v4, v5, v6, v7}, Lj4/w;->c(Ljava/lang/String;IJ)Z

    iget-object v1, v2, Lj4/y0;->c:Lj4/x0;

    iget v3, v1, Lj4/x0;->d:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    :cond_0
    iget-object v0, v0, Lj4/b1;->a:Lj4/w;

    iget-object v3, v1, Lj4/x0;->a:Ljava/lang/String;

    iget v2, v2, Lj4/y0;->b:I

    iget-wide v4, v1, Lj4/x0;->b:J

    .line 4
    invoke-virtual {v0, v3, v2, v4, v5}, Lj4/w;->n(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, v3, v2, v4, v5}, Lj4/w;->n(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lj4/w;->j(Ljava/io/File;)Z

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_3
    new-instance v0, Lj4/n0;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Could not safely delete session %d because it is not in a terminal state."

    .line 8
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lj4/n0;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
