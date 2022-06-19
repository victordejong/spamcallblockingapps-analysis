.class public Lc00$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc00$f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[I

.field public final c:[I

.field public final d:Lc00$b;

.field public final e:I

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(Lc00$b;Ljava/util/List;[I[IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc00$b;",
            "Ljava/util/List<",
            "Lc00$f;",
            ">;[I[IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc00$c;->a:Ljava/util/List;

    iput-object p3, p0, Lc00$c;->b:[I

    iput-object p4, p0, Lc00$c;->c:[I

    const/4 p2, 0x0

    invoke-static {p3, p2}, Ljava/util/Arrays;->fill([II)V

    invoke-static {p4, p2}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Lc00$c;->d:Lc00$b;

    invoke-virtual {p1}, Lc00$b;->e()I

    move-result p2

    iput p2, p0, Lc00$c;->e:I

    invoke-virtual {p1}, Lc00$b;->d()I

    move-result p1

    iput p1, p0, Lc00$c;->f:I

    iput-boolean p5, p0, Lc00$c;->g:Z

    invoke-virtual {p0}, Lc00$c;->a()V

    invoke-virtual {p0}, Lc00$c;->h()V

    return-void
.end method

.method public static j(Ljava/util/List;IZ)Lc00$d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc00$d;",
            ">;IZ)",
            "Lc00$d;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc00$d;

    iget v3, v2, Lc00$d;->a:I

    if-ne v3, p1, :cond_2

    iget-boolean v3, v2, Lc00$d;->c:Z

    if-ne v3, p2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc00$d;

    iget v3, p1, Lc00$d;->b:I

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, -0x1

    :goto_2
    add-int/2addr v3, v4

    iput v3, p1, Lc00$d;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lc00$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc00$c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc00$f;

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lc00$f;->a:I

    if-nez v2, :cond_1

    iget v0, v0, Lc00$f;->b:I

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lc00$f;

    invoke-direct {v0}, Lc00$f;-><init>()V

    iput v1, v0, Lc00$f;->a:I

    iput v1, v0, Lc00$f;->b:I

    iput-boolean v1, v0, Lc00$f;->d:Z

    iput v1, v0, Lc00$f;->c:I

    iput-boolean v1, v0, Lc00$f;->e:Z

    iget-object v2, p0, Lc00$c;->a:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final b(Ljava/util/List;Lh00;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc00$d;",
            ">;",
            "Lh00;",
            "III)V"
        }
    .end annotation

    iget-boolean v0, p0, Lc00$c;->g:Z

    if-nez v0, :cond_0

    invoke-interface {p2, p3, p4}, Lh00;->a(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p4, v0

    :goto_0
    if-ltz p4, :cond_5

    iget-object v1, p0, Lc00$c;->c:[I

    add-int v2, p5, p4

    aget v3, v1, v2

    and-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v5, 0x8

    if-eq v3, v5, :cond_2

    const/16 v1, 0x10

    if-ne v3, v1, :cond_1

    new-instance v1, Lc00$d;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p3, v3}, Lc00$d;-><init>(IIZ)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown flag for pos "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long p3, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x5

    invoke-static {p1, v1, v0}, Lc00$c;->j(Ljava/util/List;IZ)Lc00$d;

    move-result-object v5

    iget v5, v5, Lc00$d;->b:I

    invoke-interface {p2, v5, p3}, Lh00;->d(II)V

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lc00$c;->d:Lc00$b;

    invoke-virtual {v3, v1, v2}, Lc00$b;->c(II)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, p3, v0, v1}, Lh00;->c(IILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-interface {p2, p3, v0}, Lh00;->a(II)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc00$d;

    iget v3, v2, Lc00$d;->b:I

    add-int/2addr v3, v0

    iput v3, v2, Lc00$d;->b:I

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final c(Ljava/util/List;Lh00;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc00$d;",
            ">;",
            "Lh00;",
            "III)V"
        }
    .end annotation

    iget-boolean v0, p0, Lc00$c;->g:Z

    if-nez v0, :cond_0

    invoke-interface {p2, p3, p4}, Lh00;->b(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p4, v0

    :goto_0
    if-ltz p4, :cond_5

    iget-object v1, p0, Lc00$c;->b:[I

    add-int v2, p5, p4

    aget v3, v1, v2

    and-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v5, 0x8

    if-eq v3, v5, :cond_2

    const/16 v1, 0x10

    if-ne v3, v1, :cond_1

    new-instance v1, Lc00$d;

    add-int v3, p3, p4

    invoke-direct {v1, v2, v3, v0}, Lc00$d;-><init>(IIZ)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown flag for pos "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long p3, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x5

    const/4 v5, 0x0

    invoke-static {p1, v1, v5}, Lc00$c;->j(Ljava/util/List;IZ)Lc00$d;

    move-result-object v5

    add-int v6, p3, p4

    iget v7, v5, Lc00$d;->b:I

    sub-int/2addr v7, v0

    invoke-interface {p2, v6, v7}, Lh00;->d(II)V

    if-ne v3, v4, :cond_4

    iget v3, v5, Lc00$d;->b:I

    sub-int/2addr v3, v0

    iget-object v4, p0, Lc00$c;->d:Lc00$b;

    invoke-virtual {v4, v2, v1}, Lc00$b;->c(II)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v3, v0, v1}, Lh00;->c(IILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    add-int v1, p3, p4

    invoke-interface {p2, v1, v0}, Lh00;->b(II)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc00$d;

    iget v3, v2, Lc00$d;->b:I

    sub-int/2addr v3, v0

    iput v3, v2, Lc00$d;->b:I

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public d(Lh00;)V
    .locals 14

    instance-of v0, p1, Lzz;

    if-eqz v0, :cond_0

    check-cast p1, Lzz;

    goto :goto_0

    :cond_0
    new-instance v0, Lzz;

    invoke-direct {v0, p1}, Lzz;-><init>(Lh00;)V

    move-object p1, v0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lc00$c;->e:I

    iget v2, p0, Lc00$c;->f:I

    iget-object v3, p0, Lc00$c;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    move v8, v2

    move v9, v3

    :goto_1
    if-ltz v9, :cond_5

    iget-object v2, p0, Lc00$c;->a:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lc00$f;

    iget v11, v10, Lc00$f;->c:I

    iget v2, v10, Lc00$f;->a:I

    add-int v12, v2, v11

    iget v2, v10, Lc00$f;->b:I

    add-int v13, v2, v11

    if-ge v12, v1, :cond_1

    sub-int v5, v1, v12

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, v12

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lc00$c;->c(Ljava/util/List;Lh00;III)V

    :cond_1
    if-ge v13, v8, :cond_2

    sub-int v5, v8, v13

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, v12

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lc00$c;->b(Ljava/util/List;Lh00;III)V

    :cond_2
    add-int/lit8 v11, v11, -0x1

    :goto_2
    if-ltz v11, :cond_4

    iget-object v1, p0, Lc00$c;->b:[I

    iget v2, v10, Lc00$f;->a:I

    add-int v3, v2, v11

    aget v1, v1, v3

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    add-int v1, v2, v11

    iget-object v3, p0, Lc00$c;->d:Lc00$b;

    add-int/2addr v2, v11

    iget v4, v10, Lc00$f;->b:I

    add-int/2addr v4, v11

    invoke-virtual {v3, v2, v4}, Lc00$b;->c(II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lzz;->c(IILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_4
    iget v1, v10, Lc00$f;->a:I

    iget v8, v10, Lc00$f;->b:I

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lzz;->e()V

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 1

    new-instance v0, Lyz;

    invoke-direct {v0, p1}, Lyz;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {p0, v0}, Lc00$c;->d(Lh00;)V

    return-void
.end method

.method public final f(III)V
    .locals 2

    iget-object v0, p0, Lc00$c;->b:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc00$c;->g(IIIZ)Z

    return-void
.end method

.method public final g(IIIZ)Z
    .locals 8

    if-eqz p4, :cond_0

    add-int/lit8 p2, p2, -0x1

    move v1, p1

    move v0, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    move v1, v0

    :goto_0
    if-ltz p3, :cond_7

    iget-object v2, p0, Lc00$c;->a:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc00$f;

    iget v3, v2, Lc00$f;->a:I

    iget v4, v2, Lc00$f;->c:I

    add-int/2addr v3, v4

    iget v5, v2, Lc00$f;->b:I

    add-int/2addr v5, v4

    const/16 v4, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz p4, :cond_3

    sub-int/2addr v1, v7

    :goto_1
    if-lt v1, v3, :cond_6

    iget-object p2, p0, Lc00$c;->d:Lc00$b;

    invoke-virtual {p2, v1, v0}, Lc00$b;->b(II)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lc00$c;->d:Lc00$b;

    invoke-virtual {p1, v1, v0}, Lc00$b;->a(II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x4

    :goto_2
    iget-object p1, p0, Lc00$c;->c:[I

    shl-int/lit8 p2, v1, 0x5

    or-int/lit8 p2, p2, 0x10

    aput p2, p1, v0

    iget-object p1, p0, Lc00$c;->b:[I

    shl-int/lit8 p2, v0, 0x5

    or-int/2addr p2, v4

    aput p2, p1, v1

    return v7

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    sub-int/2addr p2, v7

    :goto_3
    if-lt p2, v5, :cond_6

    iget-object v1, p0, Lc00$c;->d:Lc00$b;

    invoke-virtual {v1, v0, p2}, Lc00$b;->b(II)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p3, p0, Lc00$c;->d:Lc00$b;

    invoke-virtual {p3, v0, p2}, Lc00$b;->a(II)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x4

    :goto_4
    iget-object p3, p0, Lc00$c;->b:[I

    sub-int/2addr p1, v7

    shl-int/lit8 p4, p2, 0x5

    or-int/lit8 p4, p4, 0x10

    aput p4, p3, p1

    iget-object p3, p0, Lc00$c;->c:[I

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v4

    aput p1, p3, p2

    return v7

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_6
    iget v1, v2, Lc00$f;->a:I

    iget p2, v2, Lc00$f;->b:I

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final h()V
    .locals 9

    iget v0, p0, Lc00$c;->e:I

    iget v1, p0, Lc00$c;->f:I

    iget-object v2, p0, Lc00$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_4

    iget-object v4, p0, Lc00$c;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc00$f;

    iget v5, v4, Lc00$f;->a:I

    iget v6, v4, Lc00$f;->c:I

    add-int/2addr v5, v6

    iget v7, v4, Lc00$f;->b:I

    add-int/2addr v7, v6

    iget-boolean v6, p0, Lc00$c;->g:Z

    if-eqz v6, :cond_1

    :goto_1
    if-le v0, v5, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lc00$c;->f(III)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    :goto_2
    if-le v1, v7, :cond_1

    invoke-virtual {p0, v0, v1, v2}, Lc00$c;->i(III)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_3
    iget v1, v4, Lc00$f;->c:I

    if-ge v0, v1, :cond_3

    iget v1, v4, Lc00$f;->a:I

    add-int/2addr v1, v0

    iget v5, v4, Lc00$f;->b:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lc00$c;->d:Lc00$b;

    invoke-virtual {v6, v1, v5}, Lc00$b;->a(II)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_4

    :cond_2
    const/4 v6, 0x2

    :goto_4
    iget-object v7, p0, Lc00$c;->b:[I

    shl-int/lit8 v8, v5, 0x5

    or-int/2addr v8, v6

    aput v8, v7, v1

    iget-object v7, p0, Lc00$c;->c:[I

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, v6

    aput v1, v7, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget v0, v4, Lc00$f;->a:I

    iget v1, v4, Lc00$f;->b:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final i(III)V
    .locals 2

    iget-object v0, p0, Lc00$c;->c:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lc00$c;->g(IIIZ)Z

    return-void
.end method
