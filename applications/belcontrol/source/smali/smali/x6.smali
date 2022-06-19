.class public abstract Lx6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx6$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lz5;

.field public c:Lu6;

.field public d:Lz5$b;

.field public e:Lo6;

.field public f:I

.field public g:Z

.field public h:Ln6;

.field public i:Ln6;

.field public j:Lx6$b;


# direct methods
.method public constructor <init>(Lz5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo6;

    invoke-direct {v0, p0}, Lo6;-><init>(Lx6;)V

    iput-object v0, p0, Lx6;->e:Lo6;

    const/4 v0, 0x0

    iput v0, p0, Lx6;->f:I

    iput-boolean v0, p0, Lx6;->g:Z

    new-instance v0, Ln6;

    invoke-direct {v0, p0}, Ln6;-><init>(Lx6;)V

    iput-object v0, p0, Lx6;->h:Ln6;

    new-instance v0, Ln6;

    invoke-direct {v0, p0}, Ln6;-><init>(Lx6;)V

    iput-object v0, p0, Lx6;->i:Ln6;

    sget-object v0, Lx6$b;->a:Lx6$b;

    iput-object v0, p0, Lx6;->j:Lx6$b;

    iput-object p1, p0, Lx6;->b:Lz5;

    return-void
.end method


# virtual methods
.method public a(Ll6;)V
    .locals 0

    return-void
.end method

.method public final b(Ln6;Ln6;I)V
    .locals 1

    iget-object v0, p1, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, Ln6;->f:I

    iget-object p2, p2, Ln6;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ln6;Ln6;ILo6;)V
    .locals 2

    iget-object v0, p1, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Ln6;->l:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, Ln6;->h:I

    iput-object p4, p1, Ln6;->i:Lo6;

    iget-object p2, p2, Ln6;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, Ln6;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public final g(II)I
    .locals 1

    if-nez p2, :cond_1

    iget-object p2, p0, Lx6;->b:Lz5;

    iget v0, p2, Lz5;->r:I

    iget p2, p2, Lz5;->q:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    if-eq p2, p1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lx6;->b:Lz5;

    iget v0, p2, Lz5;->u:I

    iget p2, p2, Lz5;->t:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_2
    if-eq p2, p1, :cond_3

    :goto_0
    move p1, p2

    :cond_3
    return p1
.end method

.method public final h(Ly5;)Ln6;
    .locals 3

    iget-object p1, p1, Ly5;->f:Ly5;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Ly5;->d:Lz5;

    iget-object p1, p1, Ly5;->e:Ly5$b;

    sget-object v2, Lx6$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, v1, Lz5;->e:Lv6;

    goto :goto_0

    :cond_2
    iget-object p1, v1, Lz5;->e:Lv6;

    iget-object v0, p1, Lv6;->k:Ln6;

    goto :goto_2

    :cond_3
    iget-object p1, v1, Lz5;->e:Lv6;

    goto :goto_1

    :cond_4
    iget-object p1, v1, Lz5;->d:Lt6;

    :goto_0
    iget-object v0, p1, Lx6;->i:Ln6;

    goto :goto_2

    :cond_5
    iget-object p1, v1, Lz5;->d:Lt6;

    :goto_1
    iget-object v0, p1, Lx6;->h:Ln6;

    :goto_2
    return-object v0
.end method

.method public final i(Ly5;I)Ln6;
    .locals 2

    iget-object p1, p1, Ly5;->f:Ly5;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Ly5;->d:Lz5;

    if-nez p2, :cond_1

    iget-object p2, v1, Lz5;->d:Lt6;

    goto :goto_0

    :cond_1
    iget-object p2, v1, Lz5;->e:Lv6;

    :goto_0
    iget-object p1, p1, Ly5;->e:Ly5$b;

    sget-object v1, Lx6$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lx6;->i:Ln6;

    goto :goto_1

    :cond_3
    iget-object v0, p2, Lx6;->h:Ln6;

    :goto_1
    return-object v0
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lx6;->e:Lo6;

    iget-boolean v1, v0, Ln6;->j:Z

    if-eqz v1, :cond_0

    iget v0, v0, Ln6;->g:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lx6;->g:Z

    return v0
.end method

.method public final l(II)V
    .locals 7

    iget v0, p0, Lx6;->a:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 p2, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq v0, p2, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v3, v0, Lz5;->d:Lt6;

    iget-object v4, v3, Lx6;->d:Lz5$b;

    sget-object v5, Lz5$b;->c:Lz5$b;

    if-ne v4, v5, :cond_1

    iget v4, v3, Lx6;->a:I

    if-ne v4, p2, :cond_1

    iget-object v4, v0, Lz5;->e:Lv6;

    iget-object v6, v4, Lx6;->d:Lz5$b;

    if-ne v6, v5, :cond_1

    iget v4, v4, Lx6;->a:I

    if-ne v4, p2, :cond_1

    goto :goto_5

    :cond_1
    if-nez p1, :cond_2

    iget-object v3, v0, Lz5;->e:Lv6;

    :cond_2
    iget-object p2, v3, Lx6;->e:Lo6;

    iget-boolean p2, p2, Ln6;->j:Z

    if-eqz p2, :cond_9

    invoke-virtual {v0}, Lz5;->w()F

    move-result p2

    if-ne p1, v1, :cond_3

    iget-object p1, v3, Lx6;->e:Lo6;

    iget p1, p1, Ln6;->g:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    goto :goto_0

    :cond_3
    iget-object p1, v3, Lx6;->e:Lo6;

    iget p1, p1, Ln6;->g:I

    int-to-float p1, p1

    mul-float p2, p2, p1

    add-float/2addr p2, v2

    float-to-int p1, p2

    :goto_0
    iget-object p2, p0, Lx6;->e:Lo6;

    invoke-virtual {p2, p1}, Lo6;->d(I)V

    goto :goto_5

    :cond_4
    iget-object p2, p0, Lx6;->b:Lz5;

    invoke-virtual {p2}, Lz5;->L()Lz5;

    move-result-object p2

    if-eqz p2, :cond_9

    if-nez p1, :cond_5

    iget-object p2, p2, Lz5;->d:Lt6;

    goto :goto_1

    :cond_5
    iget-object p2, p2, Lz5;->e:Lv6;

    :goto_1
    iget-object p2, p2, Lx6;->e:Lo6;

    iget-boolean v0, p2, Ln6;->j:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lx6;->b:Lz5;

    if-nez p1, :cond_6

    iget v0, v0, Lz5;->s:F

    goto :goto_2

    :cond_6
    iget v0, v0, Lz5;->v:F

    :goto_2
    iget p2, p2, Ln6;->g:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    add-float/2addr p2, v2

    float-to-int p2, p2

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lx6;->e:Lo6;

    iget v0, v0, Lo6;->m:I

    invoke-virtual {p0, v0, p1}, Lx6;->g(II)I

    move-result p1

    iget-object v0, p0, Lx6;->e:Lo6;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v0, p0, Lx6;->e:Lo6;

    invoke-virtual {p0, p2, p1}, Lx6;->g(II)I

    move-result p1

    :goto_4
    invoke-virtual {v0, p1}, Lo6;->d(I)V

    :cond_9
    :goto_5
    return-void
.end method

.method public abstract m()Z
.end method

.method public n(Ll6;Ly5;Ly5;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lx6;->h(Ly5;)Ln6;

    move-result-object p1

    invoke-virtual {p0, p3}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    iget-boolean v1, p1, Ln6;->j:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Ln6;->j:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p1, Ln6;->g:I

    invoke-virtual {p2}, Ly5;->f()I

    move-result p2

    add-int/2addr v1, p2

    iget p2, v0, Ln6;->g:I

    invoke-virtual {p3}, Ly5;->f()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int p3, p2, v1

    iget-object v2, p0, Lx6;->e:Lo6;

    iget-boolean v2, v2, Ln6;->j:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lx6;->d:Lz5$b;

    sget-object v3, Lz5$b;->c:Lz5$b;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p4, p3}, Lx6;->l(II)V

    :cond_1
    iget-object v2, p0, Lx6;->e:Lo6;

    iget-boolean v3, v2, Ln6;->j:Z

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget v2, v2, Ln6;->g:I

    if-ne v2, p3, :cond_3

    iget-object p1, p0, Lx6;->h:Ln6;

    invoke-virtual {p1, v1}, Ln6;->d(I)V

    iget-object p1, p0, Lx6;->i:Ln6;

    :goto_0
    invoke-virtual {p1, p2}, Ln6;->d(I)V

    return-void

    :cond_3
    iget-object p3, p0, Lx6;->b:Lz5;

    if-nez p4, :cond_4

    invoke-virtual {p3}, Lz5;->z()F

    move-result p3

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Lz5;->P()F

    move-result p3

    :goto_1
    const/high16 p4, 0x3f000000    # 0.5f

    if-ne p1, v0, :cond_5

    iget v1, p1, Ln6;->g:I

    iget p2, v0, Ln6;->g:I

    const/high16 p3, 0x3f000000    # 0.5f

    :cond_5
    sub-int/2addr p2, v1

    iget-object p1, p0, Lx6;->e:Lo6;

    iget p1, p1, Ln6;->g:I

    sub-int/2addr p2, p1

    iget-object p1, p0, Lx6;->h:Ln6;

    int-to-float v0, v1

    add-float/2addr v0, p4

    int-to-float p2, p2

    mul-float p2, p2, p3

    add-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Ln6;->d(I)V

    iget-object p1, p0, Lx6;->i:Ln6;

    iget-object p2, p0, Lx6;->h:Ln6;

    iget p2, p2, Ln6;->g:I

    iget-object p3, p0, Lx6;->e:Lo6;

    iget p3, p3, Ln6;->g:I

    add-int/2addr p2, p3

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public o(Ll6;)V
    .locals 0

    return-void
.end method

.method public p(Ll6;)V
    .locals 0

    return-void
.end method
