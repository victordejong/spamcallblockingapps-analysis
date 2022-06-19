.class public Lzh0$w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzh0$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:[F

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, Lzh0$w;->a:[B

    new-array v0, v0, [F

    iput-object v0, p0, Lzh0$w;->c:[F

    return-void
.end method


# virtual methods
.method public a(FFFF)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lzh0$w;->f(B)V

    invoke-virtual {p0, p1}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p2}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p3}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p4}, Lzh0$w;->g(F)V

    return-void
.end method

.method public b(FF)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzh0$w;->f(B)V

    invoke-virtual {p0, p1}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p2}, Lzh0$w;->g(F)V

    return-void
.end method

.method public c(FFFFFF)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lzh0$w;->f(B)V

    invoke-virtual {p0, p1}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p2}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p3}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p4}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p5}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p6}, Lzh0$w;->g(F)V

    return-void
.end method

.method public close()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lzh0$w;->f(B)V

    return-void
.end method

.method public d(FFFZZFF)V
    .locals 0

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    or-int/lit8 p4, p4, 0x4

    or-int/2addr p4, p5

    int-to-byte p4, p4

    invoke-virtual {p0, p4}, Lzh0$w;->f(B)V

    invoke-virtual {p0, p1}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p2}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p3}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p6}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p7}, Lzh0$w;->g(F)V

    return-void
.end method

.method public e(FF)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lzh0$w;->f(B)V

    invoke-virtual {p0, p1}, Lzh0$w;->g(F)V

    invoke-virtual {p0, p2}, Lzh0$w;->g(F)V

    return-void
.end method

.method public final f(B)V
    .locals 4

    iget v0, p0, Lzh0$w;->b:I

    iget-object v1, p0, Lzh0$w;->a:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lzh0$w;->a:[B

    :cond_0
    iget-object v0, p0, Lzh0$w;->a:[B

    iget v1, p0, Lzh0$w;->b:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lzh0$w;->b:I

    return-void
.end method

.method public final g(F)V
    .locals 4

    iget v0, p0, Lzh0$w;->d:I

    iget-object v1, p0, Lzh0$w;->c:[F

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lzh0$w;->c:[F

    :cond_0
    iget-object v0, p0, Lzh0$w;->c:[F

    iget v1, p0, Lzh0$w;->d:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lzh0$w;->d:I

    return-void
.end method

.method public h(Lzh0$x;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lzh0$w;->b:I

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lzh0$w;->a:[B

    aget-byte v3, v3, v1

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_2

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    iget-object v3, p0, Lzh0$w;->c:[F

    add-int/lit8 v4, v2, 0x1

    aget v7, v3, v2

    add-int/lit8 v2, v4, 0x1

    aget v8, v3, v4

    add-int/lit8 v4, v2, 0x1

    aget v9, v3, v2

    add-int/lit8 v2, v4, 0x1

    aget v12, v3, v4

    add-int/lit8 v4, v2, 0x1

    aget v13, v3, v2

    move-object v6, p1

    invoke-interface/range {v6 .. v13}, Lzh0$x;->d(FFFZZFF)V

    move v2, v4

    goto :goto_4

    :cond_2
    invoke-interface {p1}, Lzh0$x;->close()V

    goto :goto_4

    :cond_3
    iget-object v3, p0, Lzh0$w;->c:[F

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    add-int/lit8 v5, v4, 0x1

    aget v4, v3, v4

    add-int/lit8 v6, v5, 0x1

    aget v5, v3, v5

    add-int/lit8 v7, v6, 0x1

    aget v3, v3, v6

    invoke-interface {p1, v2, v4, v5, v3}, Lzh0$x;->a(FFFF)V

    move v2, v7

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lzh0$w;->c:[F

    add-int/lit8 v4, v2, 0x1

    aget v6, v3, v2

    add-int/lit8 v2, v4, 0x1

    aget v7, v3, v4

    add-int/lit8 v4, v2, 0x1

    aget v8, v3, v2

    add-int/lit8 v2, v4, 0x1

    aget v9, v3, v4

    add-int/lit8 v4, v2, 0x1

    aget v10, v3, v2

    add-int/lit8 v2, v4, 0x1

    aget v11, v3, v4

    move-object v5, p1

    invoke-interface/range {v5 .. v11}, Lzh0$x;->c(FFFFFF)V

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lzh0$w;->c:[F

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    invoke-interface {p1, v2, v3}, Lzh0$x;->e(FF)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lzh0$w;->c:[F

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    invoke-interface {p1, v2, v3}, Lzh0$x;->b(FF)V

    :goto_3
    move v2, v5

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public i()Z
    .locals 1

    iget v0, p0, Lzh0$w;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
