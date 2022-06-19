.class public Lf6;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lf6;->a:[Z

    return-void
.end method

.method public static a(La6;Lo5;Lz5;)V
    .locals 6

    const/4 v0, -0x1

    iput v0, p2, Lz5;->l:I

    iput v0, p2, Lz5;->m:I

    iget-object v0, p0, Lz5;->S:[Lz5$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Lz5$b;->b:Lz5$b;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Lz5;->S:[Lz5$b;

    aget-object v0, v0, v1

    sget-object v1, Lz5$b;->d:Lz5$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lz5;->H:Ly5;

    iget v0, v0, Ly5;->g:I

    invoke-virtual {p0}, Lz5;->U()I

    move-result v1

    iget-object v4, p2, Lz5;->J:Ly5;

    iget v4, v4, Ly5;->g:I

    sub-int/2addr v1, v4

    iget-object v4, p2, Lz5;->H:Ly5;

    invoke-virtual {p1, v4}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v5

    iput-object v5, v4, Ly5;->i:Lt5;

    iget-object v4, p2, Lz5;->J:Ly5;

    invoke-virtual {p1, v4}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v5

    iput-object v5, v4, Ly5;->i:Lt5;

    iget-object v4, p2, Lz5;->H:Ly5;

    iget-object v4, v4, Ly5;->i:Lt5;

    invoke-virtual {p1, v4, v0}, Lo5;->f(Lt5;I)V

    iget-object v4, p2, Lz5;->J:Ly5;

    iget-object v4, v4, Ly5;->i:Lt5;

    invoke-virtual {p1, v4, v1}, Lo5;->f(Lt5;I)V

    iput v3, p2, Lz5;->l:I

    invoke-virtual {p2, v0, v1}, Lz5;->C0(II)V

    :cond_0
    iget-object v0, p0, Lz5;->S:[Lz5$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Lz5;->S:[Lz5$b;

    aget-object v0, v0, v1

    sget-object v1, Lz5$b;->d:Lz5$b;

    if-ne v0, v1, :cond_3

    iget-object v0, p2, Lz5;->I:Ly5;

    iget v0, v0, Ly5;->g:I

    invoke-virtual {p0}, Lz5;->y()I

    move-result p0

    iget-object v1, p2, Lz5;->K:Ly5;

    iget v1, v1, Ly5;->g:I

    sub-int/2addr p0, v1

    iget-object v1, p2, Lz5;->I:Ly5;

    invoke-virtual {p1, v1}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v2

    iput-object v2, v1, Ly5;->i:Lt5;

    iget-object v1, p2, Lz5;->K:Ly5;

    invoke-virtual {p1, v1}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v2

    iput-object v2, v1, Ly5;->i:Lt5;

    iget-object v1, p2, Lz5;->I:Ly5;

    iget-object v1, v1, Ly5;->i:Lt5;

    invoke-virtual {p1, v1, v0}, Lo5;->f(Lt5;I)V

    iget-object v1, p2, Lz5;->K:Ly5;

    iget-object v1, v1, Ly5;->i:Lt5;

    invoke-virtual {p1, v1, p0}, Lo5;->f(Lt5;I)V

    iget v1, p2, Lz5;->e0:I

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Lz5;->T()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p2, Lz5;->L:Ly5;

    invoke-virtual {p1, v1}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v2

    iput-object v2, v1, Ly5;->i:Lt5;

    iget-object v1, p2, Lz5;->L:Ly5;

    iget-object v1, v1, Ly5;->i:Lt5;

    iget v2, p2, Lz5;->e0:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lo5;->f(Lt5;I)V

    :cond_2
    iput v3, p2, Lz5;->m:I

    invoke-virtual {p2, v0, p0}, Lz5;->T0(II)V

    :cond_3
    return-void
.end method

.method public static final b(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
