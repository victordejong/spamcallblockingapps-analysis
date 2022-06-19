.class public Ll8/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/u;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-class v0, Lh8/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Ll8/w;->d:Landroid/widget/LinearLayout;

    .line 3
    iput-object v1, p0, Ll8/w;->e:Landroid/widget/Button;

    .line 4
    iput-object p1, p0, Ll8/w;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Ll8/w;->h()V

    .line 6
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 7
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget p1, p1, Lh8/u;->e:I

    const/4 v2, 0x1

    if-ltz p1, :cond_1

    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget p1, p1, Lh8/u;->e:I

    iget-object v3, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 9
    :goto_1
    iget-object v4, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_3

    .line 10
    iget-object v4, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/u;

    iget v4, v4, Lh8/u;->e:I

    if-eq v4, p1, :cond_2

    .line 11
    iget-object v4, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/u;

    iget v4, v4, Lh8/u;->b:I

    iget-object v4, p0, Ll8/w;->b:Ljava/util/List;

    .line 12
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/u;

    iget-object v4, v4, Lh8/u;->c:Ljava/lang/String;

    iget-object v4, p0, Ll8/w;->b:Ljava/util/List;

    .line 13
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/u;

    iget v4, v4, Lh8/u;->e:I

    .line 14
    iget-object v4, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/u;

    iput p1, v4, Lh8/u;->e:I

    add-int/lit8 v3, v3, 0x1

    .line 15
    new-instance v4, Lw8/q;

    invoke-direct {v4, v0}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v5, v2, [Lw8/n;

    .line 16
    sget-object v6, Lh8/v;->i:Lx8/b;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v4

    new-array v5, v2, [Lw8/n;

    sget-object v6, Lh8/v;->f:Lx8/b;

    iget-object v7, p0, Ll8/w;->b:Ljava/util/List;

    .line 18
    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget v7, v7, Lh8/u;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v6

    aput-object v6, v5, v1

    .line 19
    new-instance v6, Lw8/r;

    invoke-direct {v6, v4, v5}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-lez v3, :cond_4

    new-array p1, v1, [Lx8/a;

    .line 20
    new-instance v3, Lw8/o;

    invoke-direct {v3, p1}, Lw8/o;-><init>([Lx8/a;)V

    .line 21
    new-instance p1, Lw8/g;

    invoke-direct {p1, v3, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 22
    sget-object v0, Lh8/v;->i:Lx8/b;

    invoke-virtual {p1, v0, v2}, Lw8/e;->n(Lx8/a;Z)Lw8/r;

    move-result-object p1

    invoke-virtual {p1}, Lw8/r;->l()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ll8/w;->b:Ljava/util/List;

    .line 23
    :cond_4
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    iput v1, p0, Ll8/w;->c:I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->E(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 2
    iget v0, p0, Ll8/w;->c:I

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4
    :cond_0
    iget-object v0, p0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->b0(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, v2}, Ll8/w;->f(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0}, Ll8/w;->f(I)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    if-nez p1, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0, v4}, Ll8/w;->f(I)Z

    move-result v3

    if-eqz v3, :cond_15

    if-nez p1, :cond_15

    :cond_3
    const/16 p1, 0xe

    .line 8
    invoke-virtual {p0, p1}, Ll8/w;->f(I)Z

    .line 9
    invoke-virtual {p0, p1}, Ll8/w;->f(I)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_a

    .line 10
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eq p1, v2, :cond_9

    if-eq p1, v4, :cond_8

    if-eq p1, v7, :cond_a

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v3, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x6

    goto :goto_1

    :cond_6
    const/4 v4, 0x5

    goto :goto_1

    :cond_7
    const/4 v4, 0x4

    goto :goto_1

    :cond_8
    const/4 v4, 0x2

    goto :goto_1

    :cond_9
    const/4 v4, 0x7

    .line 11
    :cond_a
    :goto_1
    invoke-virtual {p0, v4}, Ll8/w;->c(I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 12
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 13
    invoke-virtual {p0, v2}, Ll8/w;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lf8/g;->i(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 14
    invoke-static {p1}, Lf8/g;->r(Ljava/util/Date;)I

    move-result v4

    .line 15
    invoke-static {p1}, Lf8/g;->u(Ljava/util/Date;)I

    move-result p1

    .line 16
    invoke-static {v3}, Lf8/g;->r(Ljava/util/Date;)I

    move-result v5

    .line 17
    invoke-static {v3}, Lf8/g;->u(Ljava/util/Date;)I

    move-result v3

    if-gt v4, v5, :cond_c

    if-ne v4, v5, :cond_b

    if-lt p1, v3, :cond_b

    goto :goto_2

    :cond_b
    const/4 v6, 0x0

    goto :goto_3

    :cond_c
    :goto_2
    const/4 v6, 0x1

    .line 18
    :goto_3
    invoke-virtual {p0, v0}, Ll8/w;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf8/g;->i(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lf8/g;->r(Ljava/util/Date;)I

    move-result v7

    .line 20
    invoke-static {v0}, Lf8/g;->u(Ljava/util/Date;)I

    move-result v0

    if-lt v4, v7, :cond_e

    if-ne v4, v7, :cond_d

    if-gt p1, v0, :cond_d

    goto :goto_4

    :cond_d
    const/4 p1, 0x0

    goto :goto_5

    :cond_e
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-lt v5, v7, :cond_10

    if-ne v5, v7, :cond_f

    if-gt v3, v0, :cond_f

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_11

    if-eqz v6, :cond_12

    if-eqz p1, :cond_12

    goto :goto_8

    :cond_11
    if-nez v6, :cond_13

    if-eqz p1, :cond_12

    goto :goto_8

    :cond_12
    const/4 p1, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    const/4 p1, 0x1

    :goto_9
    if-eqz p1, :cond_14

    const/4 v1, 0x1

    :cond_14
    move v2, v1

    :goto_a
    return v2

    :cond_15
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v2, p0, Ll8/w;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget-object v1, v1, Lh8/u;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v2, p0, Ll8/w;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget-object v1, v1, Lh8/u;->A:Ljava/lang/String;

    const-string v2, " "

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v2, p0, Ll8/w;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget-boolean v1, v1, Lh8/u;->s:Z

    const-string v2, "0"

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v3, p0, Ll8/w;->c:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget-boolean v1, v1, Lh8/u;->t:Z

    if-eqz v1, :cond_1

    const-string v1, "2"

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v3, p0, Ll8/w;->c:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget-boolean v1, v1, Lh8/u;->u:Z

    if-eqz v1, :cond_2

    const-string v1, "3"

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v3, p0, Ll8/w;->c:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget-boolean v1, v1, Lh8/u;->v:Z

    if-eqz v1, :cond_3

    const-string v1, "4"

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v3, p0, Ll8/w;->c:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget-boolean v1, v1, Lh8/u;->w:Z

    if-eqz v1, :cond_4

    const-string v1, "5"

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v3, p0, Ll8/w;->c:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget-boolean v1, v1, Lh8/u;->x:Z

    if-eqz v1, :cond_5

    const-string v1, "6"

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v3, p0, Ll8/w;->c:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget-boolean v1, v1, Lh8/u;->y:Z

    if-eqz v1, :cond_6

    const-string v2, "7"

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->y:Z

    return p1

    .line 2
    :pswitch_1
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->x:Z

    return p1

    .line 3
    :pswitch_2
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->w:Z

    return p1

    .line 4
    :pswitch_3
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->v:Z

    return p1

    .line 5
    :pswitch_4
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->u:Z

    return p1

    .line 6
    :pswitch_5
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->t:Z

    return p1

    .line 7
    :pswitch_6
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->s:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-object p1, p1, Lh8/u;->A:Ljava/lang/String;

    return-object p1

    .line 2
    :cond_1
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-object p1, p1, Lh8/u;->z:Ljava/lang/String;

    return-object p1
.end method

.method public f(I)Z
    .locals 3

    .line 1
    iget v0, p0, Ll8/w;->c:I

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget v0, p0, Ll8/w;->c:I

    packed-switch p1, :pswitch_data_0

    return v2

    .line 3
    :pswitch_0
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->r:Z

    return p1

    .line 4
    :pswitch_1
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->q:Z

    return p1

    .line 5
    :pswitch_2
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->p:Z

    return p1

    .line 6
    :pswitch_3
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->o:Z

    return p1

    .line 7
    :pswitch_4
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->n:Z

    return p1

    .line 8
    :pswitch_5
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->l:Z

    return p1

    .line 9
    :pswitch_6
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->k:Z

    return p1

    .line 10
    :pswitch_7
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->m:Z

    return p1

    .line 11
    :pswitch_8
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->j:Z

    return p1

    .line 12
    :pswitch_9
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->i:Z

    return p1

    .line 13
    :pswitch_a
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->h:Z

    return p1

    .line 14
    :pswitch_b
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->g:Z

    return p1

    .line 15
    :pswitch_c
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->f:Z

    return p1

    .line 16
    :pswitch_d
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->d:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Ll8/w;->d:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Ll8/w;->e:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Ll8/w;->n(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    .line 3
    iget-object v0, p0, Ll8/w;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ll8/w;->d()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final h()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Lx8/a;

    .line 1
    new-instance v1, Lw8/o;

    invoke-direct {v1, v0}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v0, Lh8/u;

    .line 3
    new-instance v2, Lw8/g;

    invoke-direct {v2, v1, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 4
    sget-object v0, Lh8/v;->i:Lx8/b;

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lw8/e;->n(Lx8/a;Z)Lw8/r;

    move-result-object v0

    invoke-virtual {v0}, Lw8/r;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ll8/w;->b:Ljava/util/List;

    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    invoke-static {}, Lf8/g;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    iget v1, p0, Ll8/w;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/u;

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v2, p0, Ll8/w;->c:I

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget-boolean v1, v1, Lh8/u;->f:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v2, p0, Ll8/w;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget-boolean v1, v1, Lh8/u;->g:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lh8/u;->d:Z

    :cond_2
    return-void
.end method

.method public final j(IZ)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    sget-object p1, Lh8/v;->C:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    iget v1, p0, Ll8/w;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/u;

    iput-boolean p2, v0, Lh8/u;->y:Z

    goto/16 :goto_0

    .line 3
    :pswitch_1
    sget-object p1, Lh8/v;->B:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    .line 4
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    iget v1, p0, Ll8/w;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/u;

    iput-boolean p2, v0, Lh8/u;->x:Z

    goto :goto_0

    .line 5
    :pswitch_2
    sget-object p1, Lh8/v;->A:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    .line 6
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    iget v1, p0, Ll8/w;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/u;

    iput-boolean p2, v0, Lh8/u;->w:Z

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object p1, Lh8/v;->z:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    .line 8
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    iget v1, p0, Ll8/w;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/u;

    iput-boolean p2, v0, Lh8/u;->v:Z

    goto :goto_0

    .line 9
    :pswitch_4
    sget-object p1, Lh8/v;->y:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    .line 10
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    iget v1, p0, Ll8/w;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/u;

    iput-boolean p2, v0, Lh8/u;->u:Z

    goto :goto_0

    .line 11
    :pswitch_5
    sget-object p1, Lh8/v;->x:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    .line 12
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    iget v1, p0, Ll8/w;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/u;

    iput-boolean p2, v0, Lh8/u;->t:Z

    goto :goto_0

    .line 13
    :pswitch_6
    sget-object p1, Lh8/v;->w:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    .line 14
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    iget v1, p0, Ll8/w;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/u;

    iput-boolean p2, v0, Lh8/u;->s:Z

    .line 15
    :goto_0
    const-class p2, Lh8/u;

    .line 16
    new-instance v0, Lw8/q;

    invoke-direct {v0, p2}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 p2, 0x1

    new-array v1, p2, [Lw8/n;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 17
    invoke-virtual {v0, v1}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object p1

    new-array p2, p2, [Lw8/n;

    sget-object v0, Lh8/v;->f:Lx8/b;

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v3, p0, Ll8/w;->c:I

    .line 18
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget v1, v1, Lh8/u;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, p2, v2

    .line 19
    new-instance v0, Lw8/r;

    invoke-direct {v0, p1, p2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 20
    invoke-virtual {v0}, Lw8/r;->i()Lc9/g;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object p1, Lh8/v;->E:Lx8/b;

    invoke-virtual {p1, p2}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    .line 2
    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v2, p0, Ll8/w;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iput-object p2, v1, Lh8/u;->A:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lh8/v;->D:Lx8/b;

    invoke-virtual {p1, p2}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    .line 4
    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v2, p0, Ll8/w;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iput-object p2, v1, Lh8/u;->z:Ljava/lang/String;

    .line 5
    :goto_0
    const-class p2, Lh8/u;

    .line 6
    new-instance v1, Lw8/q;

    invoke-direct {v1, p2}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array p2, v0, [Lw8/n;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    .line 7
    invoke-virtual {v1, p2}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object p1

    new-array p2, v0, [Lw8/n;

    sget-object v0, Lh8/v;->f:Lx8/b;

    iget-object v1, p0, Ll8/w;->b:Ljava/util/List;

    iget v3, p0, Ll8/w;->c:I

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iget v1, v1, Lh8/u;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, p2, v2

    .line 9
    new-instance v0, Lw8/r;

    invoke-direct {v0, p1, p2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 10
    invoke-virtual {v0}, Lw8/r;->i()Lc9/g;

    return-void
.end method

.method public l(IZ)V
    .locals 6

    .line 1
    iget v0, p0, Ll8/w;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    iput v1, p0, Ll8/w;->c:I

    .line 3
    :cond_0
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput v1, p0, Ll8/w;->c:I

    .line 5
    invoke-virtual {p0}, Ll8/w;->h()V

    :cond_1
    const v0, 0x7f1101cd

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 6
    :pswitch_0
    sget-object p1, Lh8/v;->v:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    .line 7
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->r:Z

    .line 8
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean p2, p1, Lh8/u;->r:Z

    .line 9
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget p2, p0, Ll8/w;->c:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->r:Z

    goto/16 :goto_1

    .line 10
    :pswitch_1
    sget-object p1, Lh8/v;->u:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    .line 11
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean p2, p1, Lh8/u;->q:Z

    goto/16 :goto_1

    .line 12
    :pswitch_2
    sget-object p1, Lh8/v;->t:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    .line 13
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean p2, p1, Lh8/u;->p:Z

    goto/16 :goto_1

    .line 14
    :pswitch_3
    sget-object p1, Lh8/v;->s:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    .line 15
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean p2, p1, Lh8/u;->o:Z

    goto/16 :goto_1

    .line 16
    :pswitch_4
    sget-object p1, Lh8/v;->r:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    .line 17
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean p2, p1, Lh8/u;->n:Z

    goto/16 :goto_1

    .line 18
    :pswitch_5
    sget-object p1, Lh8/v;->p:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    .line 19
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean p2, p1, Lh8/u;->l:Z

    goto/16 :goto_1

    .line 20
    :pswitch_6
    sget-object p1, Lh8/v;->o:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    .line 21
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean p2, p1, Lh8/u;->k:Z

    goto/16 :goto_1

    .line 22
    :pswitch_7
    sget-object p1, Lh8/v;->q:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    .line 23
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean p2, p1, Lh8/u;->m:Z

    goto/16 :goto_1

    .line 24
    :pswitch_8
    sget-object p1, Lh8/v;->n:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    .line 25
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean p2, p1, Lh8/u;->j:Z

    goto/16 :goto_1

    .line 26
    :pswitch_9
    sget-object p1, Lh8/v;->m:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    .line 27
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean p2, p1, Lh8/u;->i:Z

    goto/16 :goto_1

    .line 28
    :pswitch_a
    sget-object p1, Lh8/v;->l:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    .line 29
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean p2, p1, Lh8/u;->h:Z

    goto/16 :goto_1

    .line 30
    :pswitch_b
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v4, p0, Ll8/w;->c:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->d:Z

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 31
    :cond_2
    sget-object p1, Lh8/v;->k:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    .line 32
    iget-object v4, p0, Ll8/w;->b:Ljava/util/List;

    iget v5, p0, Ll8/w;->c:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/u;

    iput-boolean p2, v4, Lh8/u;->g:Z

    .line 33
    invoke-virtual {p0}, Ll8/w;->i()V

    if-nez p2, :cond_4

    .line 34
    iget-object p2, p0, Ll8/w;->a:Landroid/content/Context;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "2"

    aput-object v5, v4, v1

    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v2, v0}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :pswitch_c
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v4, p0, Ll8/w;->c:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->d:Z

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    const/4 p2, 0x1

    .line 36
    :cond_3
    sget-object p1, Lh8/v;->j:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    .line 37
    iget-object v4, p0, Ll8/w;->b:Ljava/util/List;

    iget v5, p0, Ll8/w;->c:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/u;

    iput-boolean p2, v4, Lh8/u;->f:Z

    .line 38
    invoke-virtual {p0}, Ll8/w;->i()V

    if-nez p2, :cond_4

    .line 39
    iget-object p2, p0, Ll8/w;->a:Landroid/content/Context;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "1"

    aput-object v5, v4, v1

    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v2, v0}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :cond_4
    :goto_0
    move-object v2, p1

    goto :goto_1

    .line 40
    :pswitch_d
    iget p1, p0, Ll8/w;->c:I

    if-eqz p1, :cond_5

    .line 41
    invoke-static {}, Lf8/g;->y()Z

    move-result p1

    if-nez p1, :cond_5

    .line 42
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/v;

    invoke-direct {p2}, Lk8/v;-><init>()V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_1

    .line 43
    :cond_5
    sget-object p1, Lh8/v;->h:Lx8/b;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    .line 44
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget v0, p0, Ll8/w;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean p2, p1, Lh8/u;->d:Z

    if-eqz p2, :cond_6

    .line 45
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget p2, p0, Ll8/w;->c:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->f:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget p2, p0, Ll8/w;->c:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iget-boolean p1, p1, Lh8/u;->g:Z

    if-nez p1, :cond_6

    .line 46
    iget-object p1, p0, Ll8/w;->b:Ljava/util/List;

    iget p2, p0, Ll8/w;->c:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/u;

    iput-boolean v3, p1, Lh8/u;->f:Z

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    .line 47
    const-class p1, Lh8/u;

    .line 48
    new-instance p2, Lw8/q;

    invoke-direct {p2, p1}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array p1, v3, [Lw8/n;

    aput-object v2, p1, v1

    .line 49
    invoke-virtual {p2, p1}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object p1

    new-array p2, v3, [Lw8/n;

    sget-object v0, Lh8/v;->f:Lx8/b;

    iget-object v2, p0, Ll8/w;->b:Ljava/util/List;

    iget v3, p0, Ll8/w;->c:I

    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/u;

    iget v2, v2, Lh8/u;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, p2, v1

    .line 51
    new-instance v0, Lw8/r;

    invoke-direct {v0, p1, p2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 52
    invoke-virtual {v0}, Lw8/r;->i()Lc9/g;

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Landroid/widget/ToggleButton;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Ll8/w;->a:Landroid/content/Context;

    const p3, 0x7f060057

    invoke-static {p2, p3}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result p2

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Ll8/w;->a:Landroid/content/Context;

    const p3, 0x7f060059

    invoke-static {p2, p3}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result p2

    .line 5
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    return-void
.end method

.method public n(Landroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 13

    .line 1
    iput-object p1, p0, Ll8/w;->d:Landroid/widget/LinearLayout;

    .line 2
    iput-object p2, p0, Ll8/w;->e:Landroid/widget/Button;

    const/4 p2, 0x1

    :goto_0
    const/16 v0, 0xa

    if-gt p2, v0, :cond_27

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const v0, 0x7f09028e

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const v0, 0x7f090296

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const v0, 0x7f090295

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const v0, 0x7f090294

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    const v0, 0x7f090293

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    const v0, 0x7f090292

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    const v0, 0x7f090291

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :pswitch_7
    const v0, 0x7f090290

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :pswitch_8
    const v0, 0x7f09028f

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :pswitch_9
    const v0, 0x7f09028d

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    goto/16 :goto_1e

    .line 13
    :cond_0
    invoke-virtual {p0}, Ll8/w;->d()I

    move-result v1

    const/16 v2, 0x8

    if-ge p2, v1, :cond_1

    iget-object v1, p0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v1}, Lf8/h;->S(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto/16 :goto_1e

    .line 15
    :cond_2
    new-instance v1, Ll8/v;

    invoke-direct {v1, p0, p2}, Ll8/v;-><init>(Ll8/w;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090113

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Ll8/a;

    invoke-direct {v3, p0, p2}, Ll8/a;-><init>(Ll8/w;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v2, p0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->E(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->S(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 18
    :goto_3
    iget-object v3, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    const v4, 0x7f0902ab

    .line 19
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0902aa

    .line 20
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0902b0

    .line 21
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902a5

    .line 22
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0902a3

    .line 23
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroidx/appcompat/widget/SwitchCompat;

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v8, 0x7f0902ac

    .line 25
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 26
    iget-object v9, v3, Lh8/u;->c:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_4

    const v9, 0x7f08016d

    goto :goto_4

    :cond_4
    const v9, 0x7f08016e

    .line 27
    :goto_4
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object v8, p0, Ll8/w;->a:Landroid/content/Context;

    const v9, 0x7f060033

    invoke-static {v8, v9}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v8

    .line 29
    iget-object v9, p0, Ll8/w;->a:Landroid/content/Context;

    const v10, 0x7f060059

    invoke-static {v9, v10}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v9

    .line 30
    iget-object v10, p0, Ll8/w;->a:Landroid/content/Context;

    const v11, 0x7f06005e

    invoke-static {v10, v11}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v10

    if-eqz v2, :cond_5

    .line 31
    iget-object v9, p0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v9}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v8, v10

    goto :goto_5

    :cond_5
    move v8, v9

    :cond_6
    :goto_5
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget v4, v3, Lh8/u;->e:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, v3, Lh8/u;->s:Z

    const-string v8, " "

    const-string v9, ""

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Ll8/w;->a:Landroid/content/Context;

    const v11, 0x7f110064

    invoke-static {v10, v11, v5, v8}, Landroid/support/v4/media/b;->f(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_7
    move-object v5, v9

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-boolean v5, v3, Lh8/u;->t:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Ll8/w;->a:Landroid/content/Context;

    const v11, 0x7f110065

    invoke-static {v10, v11, v5, v8}, Landroid/support/v4/media/b;->f(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_8
    move-object v5, v9

    :goto_7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-boolean v5, v3, Lh8/u;->u:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Ll8/w;->a:Landroid/content/Context;

    const v11, 0x7f110066

    invoke-static {v10, v11, v5, v8}, Landroid/support/v4/media/b;->f(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_9
    move-object v5, v9

    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean v5, v3, Lh8/u;->v:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Ll8/w;->a:Landroid/content/Context;

    const v11, 0x7f110067

    invoke-static {v10, v11, v5, v8}, Landroid/support/v4/media/b;->f(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_a
    move-object v5, v9

    :goto_9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-boolean v5, v3, Lh8/u;->w:Z

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Ll8/w;->a:Landroid/content/Context;

    const v11, 0x7f110068

    invoke-static {v10, v11, v5, v8}, Landroid/support/v4/media/b;->f(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_b
    move-object v5, v9

    :goto_a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-boolean v5, v3, Lh8/u;->x:Z

    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Ll8/w;->a:Landroid/content/Context;

    const v11, 0x7f110069

    invoke-static {v10, v11, v5, v8}, Landroid/support/v4/media/b;->f(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_c
    move-object v5, v9

    :goto_b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-boolean v5, v3, Lh8/u;->y:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ll8/w;->a:Landroid/content/Context;

    const v10, 0x7f11006a

    invoke-static {v9, v10, v5, v8}, Landroid/support/v4/media/b;->f(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_d
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ll8/w;->a:Landroid/content/Context;

    iget-object v8, v3, Lh8/u;->z:Ljava/lang/String;

    invoke-static {v8}, Lf8/g;->i(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-static {v5, v8}, Lf8/g;->m(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ll8/w;->a:Landroid/content/Context;

    iget-object v8, v3, Lh8/u;->A:Ljava/lang/String;

    .line 42
    invoke-static {v8}, Lf8/g;->i(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-static {v5, v8}, Lf8/g;->m(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-boolean v4, v3, Lh8/u;->r:Z

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_c

    :cond_e
    const/16 v4, 0x8

    :goto_c
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-boolean v4, v3, Lh8/u;->r:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    goto :goto_d

    :cond_f
    const/16 v4, 0x8

    :goto_d
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f0902a7

    .line 46
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/widget/ImageView;

    iget-boolean v4, v3, Lh8/u;->f:Z

    if-eqz v4, :cond_10

    if-eqz v2, :cond_10

    const/4 v4, 0x1

    const/4 v7, 0x1

    goto :goto_e

    :cond_10
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_e
    const v4, 0x7f0902a8

    .line 47
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/ImageView;

    iget-boolean v4, v3, Lh8/u;->g:Z

    if-eqz v4, :cond_11

    if-eqz v2, :cond_11

    const/4 v4, 0x1

    const/4 v10, 0x1

    goto :goto_f

    :cond_11
    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_f
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v3

    .line 48
    invoke-virtual/range {v4 .. v11}, Lh8/u;->d(Landroid/widget/ImageView;Landroid/widget/CheckBox;ZLandroid/widget/ImageView;Landroid/widget/CheckBox;ZZ)V

    const v4, 0x7f0900e6

    .line 49
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, v3, Lh8/u;->h:Z

    if-eqz v5, :cond_12

    iget-boolean v5, v3, Lh8/u;->m:Z

    if-nez v5, :cond_12

    iget-boolean v5, v3, Lh8/u;->l:Z

    if-nez v5, :cond_12

    const/4 v5, 0x0

    goto :goto_10

    :cond_12
    const/16 v5, 0x8

    :goto_10
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0900ea

    .line 50
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, v3, Lh8/u;->k:Z

    if-eqz v5, :cond_13

    iget-boolean v5, v3, Lh8/u;->m:Z

    if-nez v5, :cond_13

    const/4 v5, 0x0

    goto :goto_11

    :cond_13
    const/16 v5, 0x8

    :goto_11
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f09006e

    .line 51
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, v3, Lh8/u;->l:Z

    if-eqz v5, :cond_15

    iget-boolean v5, v3, Lh8/u;->m:Z

    if-eqz v5, :cond_14

    iget-boolean v5, v3, Lh8/u;->j:Z

    if-nez v5, :cond_15

    :cond_14
    iget-boolean v5, v3, Lh8/u;->k:Z

    if-eqz v5, :cond_15

    const/4 v5, 0x0

    goto :goto_12

    :cond_15
    const/16 v5, 0x8

    :goto_12
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f09006d

    .line 52
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, v3, Lh8/u;->i:Z

    if-eqz v5, :cond_16

    iget-boolean v5, v3, Lh8/u;->m:Z

    if-nez v5, :cond_16

    const/4 v5, 0x0

    goto :goto_13

    :cond_16
    const/16 v5, 0x8

    :goto_13
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0903c5

    .line 53
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, v3, Lh8/u;->j:Z

    if-eqz v5, :cond_17

    const/4 v5, 0x0

    goto :goto_14

    :cond_17
    const/16 v5, 0x8

    :goto_14
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0903c6

    .line 54
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, v3, Lh8/u;->m:Z

    if-eqz v5, :cond_19

    iget-boolean v5, v3, Lh8/u;->l:Z

    if-eqz v5, :cond_18

    iget-boolean v5, v3, Lh8/u;->k:Z

    if-nez v5, :cond_19

    :cond_18
    iget-boolean v5, v3, Lh8/u;->j:Z

    if-eqz v5, :cond_19

    const/4 v5, 0x0

    goto :goto_15

    :cond_19
    const/16 v5, 0x8

    :goto_15
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f09018d

    .line 55
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, v3, Lh8/u;->n:Z

    if-eqz v5, :cond_1c

    iget-boolean v5, v3, Lh8/u;->m:Z

    if-eqz v5, :cond_1a

    iget-boolean v5, v3, Lh8/u;->j:Z

    if-nez v5, :cond_1c

    :cond_1a
    iget-boolean v5, v3, Lh8/u;->l:Z

    if-eqz v5, :cond_1b

    iget-boolean v5, v3, Lh8/u;->k:Z

    if-nez v5, :cond_1c

    :cond_1b
    const/4 v5, 0x0

    goto :goto_16

    :cond_1c
    const/16 v5, 0x8

    :goto_16
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f090172

    .line 56
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, v3, Lh8/u;->o:Z

    if-eqz v5, :cond_1f

    iget-boolean v5, v3, Lh8/u;->m:Z

    if-eqz v5, :cond_1d

    iget-boolean v5, v3, Lh8/u;->j:Z

    if-nez v5, :cond_1f

    :cond_1d
    iget-boolean v5, v3, Lh8/u;->l:Z

    if-eqz v5, :cond_1e

    iget-boolean v5, v3, Lh8/u;->k:Z

    if-nez v5, :cond_1f

    :cond_1e
    const/4 v5, 0x0

    goto :goto_17

    :cond_1f
    const/16 v5, 0x8

    :goto_17
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f090112

    .line 57
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, v3, Lh8/u;->p:Z

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    goto :goto_18

    :cond_20
    const/16 v5, 0x8

    :goto_18
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f090276

    .line 58
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, v3, Lh8/u;->q:Z

    if-eqz v5, :cond_21

    const/4 v5, 0x0

    goto :goto_19

    :cond_21
    const/16 v5, 0x8

    :goto_19
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0902d9

    .line 59
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, v3, Lh8/u;->r:Z

    if-eqz v5, :cond_22

    const/4 v5, 0x0

    goto :goto_1a

    :cond_22
    const/16 v5, 0x8

    :goto_1a
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    .line 60
    invoke-virtual {v12, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    new-instance v4, Ll8/m;

    invoke-direct {v4, p0, v3, v12}, Ll8/m;-><init>(Ll8/w;Lh8/u;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v12, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    iget-boolean v4, v3, Lh8/u;->d:Z

    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 63
    invoke-virtual {v12, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 64
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    const v1, 0x7f0902b5

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f0902b3

    .line 67
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    iget v4, v3, Lh8/u;->e:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_23

    if-eqz v2, :cond_23

    const/4 v4, 0x1

    goto :goto_1b

    :cond_23
    const/4 v4, 0x0

    :goto_1b
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 69
    iget v4, v3, Lh8/u;->e:I

    iget-object v6, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-ge v4, v6, :cond_24

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_1c

    :cond_24
    const/4 v2, 0x0

    :goto_1c
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 70
    iget-object v2, p0, Ll8/w;->a:Landroid/content/Context;

    const v4, 0x7f060059

    invoke-static {v2, v4}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v2

    .line 71
    iget-object v4, p0, Ll8/w;->a:Landroid/content/Context;

    const v5, 0x7f06005b

    invoke-static {v4, v5}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v4

    .line 72
    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_25

    move v5, v4

    goto :goto_1d

    :cond_25
    move v5, v2

    :goto_1d
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 73
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_26

    move v2, v4

    :cond_26
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 74
    new-instance v2, Ll8/u;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v3, v4}, Ll8/u;-><init>(Ll8/w;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v1, Ll8/t;

    invoke-direct {v1, p0, v3, v4}, Ll8/t;-><init>(Ll8/w;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1e
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_27
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public o(Landroid/view/View;)Ll8/w;
    .locals 61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 2
    iget-object v4, v0, Ll8/w;->b:Ljava/util/List;

    iget v5, v0, Ll8/w;->c:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/u;

    iget-boolean v4, v4, Lh8/u;->k:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Ll8/w;->b:Ljava/util/List;

    iget v6, v0, Ll8/w;->c:I

    .line 3
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/u;

    iget-boolean v4, v4, Lh8/u;->l:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-object v6, v0, Ll8/w;->b:Ljava/util/List;

    iget v7, v0, Ll8/w;->c:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh8/u;

    iget-boolean v6, v6, Lh8/u;->j:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Ll8/w;->b:Ljava/util/List;

    iget v7, v0, Ll8/w;->c:I

    .line 5
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh8/u;

    iget-boolean v6, v6, Lh8/u;->m:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const v7, 0x7f0902b4

    .line 6
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 7
    iget v8, v0, Ll8/w;->c:I

    if-nez v8, :cond_2

    const/16 v8, 0x8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v7, 0x7f0902ad

    .line 8
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 9
    iget v8, v0, Ll8/w;->c:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f090333

    .line 10
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const v8, 0x7f0901a8

    .line 11
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v10, 0x7f0901a9

    .line 12
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Landroid/widget/ImageView;

    const v10, 0x7f0900cd

    .line 13
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Landroid/widget/CheckBox;

    const v10, 0x7f0900ce

    .line 14
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Landroid/widget/CheckBox;

    const v10, 0x7f09033c

    .line 15
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroidx/appcompat/widget/SwitchCompat;

    const v10, 0x7f090339

    .line 16
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroidx/appcompat/widget/SwitchCompat;

    const v10, 0x7f09033d

    .line 17
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/SwitchCompat;

    const v9, 0x7f09033b

    .line 18
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/SwitchCompat;

    const v5, 0x7f0903ab

    .line 19
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v3, 0x7f09032d

    .line 20
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 v16, v10

    const v10, 0x7f090329

    .line 21
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 v17, v10

    const v10, 0x7f090328

    .line 22
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 v18, v10

    const v10, 0x7f090072

    .line 23
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v19, v10

    const v10, 0x7f090326

    .line 24
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 v20, v10

    const v10, 0x7f090327

    .line 25
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 v21, v10

    const v10, 0x7f090071

    .line 26
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v22, v10

    const v10, 0x7f090336

    .line 27
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 v23, v10

    const v10, 0x7f09033a

    .line 28
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 v24, v10

    const v10, 0x7f0903aa

    .line 29
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v25, v10

    const v10, 0x7f09017a

    .line 30
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v26, v10

    const v10, 0x7f09037e

    .line 31
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    move-object/from16 v27, v10

    const v10, 0x7f090380

    .line 32
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    move-object/from16 v28, v10

    const v10, 0x7f0900fe

    .line 33
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    move-object/from16 v29, v10

    const v10, 0x7f0900ff

    .line 34
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    move-object/from16 v30, v10

    const v10, 0x7f090100

    .line 35
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    move-object/from16 v31, v10

    const v10, 0x7f090101

    .line 36
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    move-object/from16 v32, v10

    const v10, 0x7f090102

    .line 37
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    move-object/from16 v33, v10

    const v10, 0x7f090103

    .line 38
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    move-object/from16 v34, v10

    const v10, 0x7f090104

    .line 39
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    move-object/from16 v35, v10

    const v10, 0x7f09037f

    .line 40
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v36, v10

    const v10, 0x7f090381

    .line 41
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v37, v10

    .line 42
    iget-object v10, v0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v10}, Lf8/h;->E(Landroid/content/Context;)Z

    move-result v10

    move-object/from16 v38, v11

    .line 43
    iget-object v11, v0, Ll8/w;->b:Ljava/util/List;

    move-object/from16 v39, v12

    iget v12, v0, Ll8/w;->c:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh8/u;

    iget-boolean v11, v11, Lh8/u;->d:Z

    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 44
    invoke-virtual {v7, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 45
    iget v11, v0, Ll8/w;->c:I

    if-nez v11, :cond_3

    .line 46
    iget-object v11, v0, Ll8/w;->a:Landroid/content/Context;

    const v12, 0x7f1101af

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 47
    :cond_3
    iget-object v12, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh8/u;

    iget-object v11, v11, Lh8/u;->c:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_3
    iget v11, v0, Ll8/w;->c:I

    if-eqz v11, :cond_4

    .line 49
    new-instance v11, Ll8/c;

    invoke-direct {v11, v0, v7}, Ll8/c;-><init>(Ll8/w;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v7, v11}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 50
    :cond_4
    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    .line 51
    :goto_4
    iget-object v12, v0, Ll8/w;->b:Ljava/util/List;

    move/from16 v40, v11

    iget v11, v0, Ll8/w;->c:I

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh8/u;

    iget v11, v11, Lh8/u;->e:I

    if-eqz v11, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    move/from16 v12, v40

    .line 52
    :goto_5
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 53
    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 54
    iget-object v10, v0, Ll8/w;->b:Ljava/util/List;

    iget v11, v0, Ll8/w;->c:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lh8/u;

    iget-object v11, v0, Ll8/w;->b:Ljava/util/List;

    move-object/from16 v40, v13

    iget v13, v0, Ll8/w;->c:I

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh8/u;

    iget-boolean v11, v11, Lh8/u;->f:Z

    if-eqz v11, :cond_7

    if-eqz v12, :cond_7

    const/4 v13, 0x1

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    :goto_6
    iget-object v11, v0, Ll8/w;->b:Ljava/util/List;

    move-object/from16 v41, v7

    iget v7, v0, Ll8/w;->c:I

    .line 55
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->g:Z

    if-eqz v7, :cond_8

    if-eqz v12, :cond_8

    const/4 v7, 0x1

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    const/16 v42, 0x1

    move-object/from16 v11, v16

    move-object/from16 v43, v19

    move-object/from16 v1, v21

    move-object/from16 v44, v23

    move-object/from16 v45, v24

    move-object/from16 v46, v25

    move-object/from16 v47, v26

    move-object/from16 v48, v27

    move-object/from16 v49, v28

    move-object/from16 v50, v29

    move-object/from16 v51, v30

    move-object/from16 v52, v31

    move-object/from16 v53, v32

    move-object/from16 v54, v33

    move-object/from16 v55, v34

    move-object/from16 v56, v35

    move-object/from16 v57, v36

    move-object/from16 v58, v37

    move-object/from16 v19, v18

    move-object/from16 v21, v20

    move-object/from16 v18, v3

    move-object/from16 v20, v17

    move-object/from16 v3, v22

    move-object/from16 v23, v1

    move-object v1, v11

    move-object/from16 v3, v38

    move-object v11, v8

    move-object/from16 v25, v5

    move-object/from16 v24, v8

    move v5, v12

    move-object/from16 v8, v39

    move-object v12, v14

    move-object/from16 v26, v40

    move-object/from16 v59, v14

    move-object v14, v15

    move-object/from16 v60, v15

    move-object/from16 v15, v26

    move/from16 v16, v7

    move/from16 v17, v42

    .line 56
    invoke-virtual/range {v10 .. v17}, Lh8/u;->d(Landroid/widget/ImageView;Landroid/widget/CheckBox;ZLandroid/widget/ImageView;Landroid/widget/CheckBox;ZZ)V

    if-eqz v5, :cond_9

    if-eqz v2, :cond_9

    if-nez v4, :cond_9

    if-nez v6, :cond_9

    const/4 v7, 0x1

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    .line 57
    :goto_8
    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 58
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v10, v0, Ll8/w;->c:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->h:Z

    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    if-eqz v5, :cond_a

    if-nez v6, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    .line 59
    :goto_9
    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 60
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v10, v0, Ll8/w;->c:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->i:Z

    invoke-virtual {v3, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    if-eqz v5, :cond_b

    if-nez v6, :cond_b

    const/4 v7, 0x1

    goto :goto_a

    :cond_b
    const/4 v7, 0x0

    .line 61
    :goto_a
    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 62
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v10, v0, Ll8/w;->c:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->j:Z

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    if-eqz v5, :cond_c

    if-nez v6, :cond_c

    if-nez v4, :cond_c

    const/4 v7, 0x1

    goto :goto_b

    :cond_c
    const/4 v7, 0x0

    .line 63
    :goto_b
    invoke-virtual {v9, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 64
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v10, v0, Ll8/w;->c:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->k:Z

    if-eqz v7, :cond_d

    iget-object v7, v0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v7}, Lf8/g;->a(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    goto :goto_c

    :cond_d
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v9, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 65
    invoke-virtual {v9}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v7

    move-object/from16 v10, v25

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v5, :cond_e

    .line 66
    invoke-virtual {v9}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_e

    if-nez v6, :cond_e

    move-object/from16 v10, v23

    const/4 v7, 0x1

    goto :goto_d

    :cond_e
    move-object/from16 v10, v23

    const/4 v7, 0x0

    :goto_d
    invoke-virtual {v10, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 67
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v11, v0, Ll8/w;->c:I

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->l:Z

    invoke-virtual {v10, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 68
    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v7

    move-object/from16 v11, v22

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v5, :cond_f

    .line 69
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_f

    if-nez v4, :cond_f

    move-object/from16 v11, v21

    const/4 v7, 0x1

    goto :goto_e

    :cond_f
    move-object/from16 v11, v21

    const/4 v7, 0x0

    :goto_e
    invoke-virtual {v11, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 70
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v12, v0, Ll8/w;->c:I

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->m:Z

    invoke-virtual {v11, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    if-eqz v5, :cond_10

    if-nez v4, :cond_10

    if-nez v6, :cond_10

    move-object/from16 v12, v20

    const/4 v7, 0x1

    goto :goto_f

    :cond_10
    move-object/from16 v12, v20

    const/4 v7, 0x0

    .line 71
    :goto_f
    invoke-virtual {v12, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 72
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v13, v0, Ll8/w;->c:I

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->n:Z

    invoke-virtual {v12, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    if-eqz v5, :cond_11

    if-eqz v2, :cond_11

    if-nez v4, :cond_11

    if-nez v6, :cond_11

    move-object/from16 v6, v19

    const/4 v4, 0x1

    goto :goto_10

    :cond_11
    move-object/from16 v6, v19

    const/4 v4, 0x0

    .line 73
    :goto_10
    invoke-virtual {v6, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 74
    iget-object v4, v0, Ll8/w;->b:Ljava/util/List;

    iget v7, v0, Ll8/w;->c:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/u;

    iget-boolean v4, v4, Lh8/u;->o:Z

    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 75
    iget-object v4, v0, Ll8/w;->a:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {v4}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 76
    new-instance v14, Ljava/util/Locale;

    const-string v15, ""

    invoke-direct {v14, v15, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v14}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const v7, 0x7f1101b4

    .line 78
    invoke-virtual {v4, v7, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, v43

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    goto :goto_11

    :cond_12
    const/16 v2, 0x8

    .line 79
    :goto_11
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v2, v18

    .line 81
    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 82
    iget-object v4, v0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v4}, Lf8/g;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v0, Ll8/w;->b:Ljava/util/List;

    iget v7, v0, Ll8/w;->c:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/u;

    iget-boolean v4, v4, Lh8/u;->p:Z

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    goto :goto_12

    :cond_13
    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    move-object/from16 v4, v44

    .line 83
    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 84
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v13, v0, Ll8/w;->c:I

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->q:Z

    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 85
    iget v7, v0, Ll8/w;->c:I

    if-nez v7, :cond_14

    if-eqz v5, :cond_14

    move-object/from16 v13, v45

    const/4 v7, 0x1

    goto :goto_13

    :cond_14
    move-object/from16 v13, v45

    const/4 v7, 0x0

    :goto_13
    invoke-virtual {v13, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 86
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v14, v0, Ll8/w;->c:I

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->r:Z

    invoke-virtual {v13, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 87
    invoke-virtual {v13}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    move-object/from16 v14, v46

    if-nez v7, :cond_15

    const/4 v7, 0x0

    goto :goto_14

    :cond_15
    const/16 v7, 0x8

    :goto_14
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-virtual {v13}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v7

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 89
    invoke-virtual {v13}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    move-object/from16 v14, v47

    if-eqz v7, :cond_16

    const/4 v7, 0x0

    goto :goto_15

    :cond_16
    const/16 v7, 0x8

    :goto_15
    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v7, v0, Ll8/w;->a:Landroid/content/Context;

    iget-object v14, v0, Ll8/w;->b:Ljava/util/List;

    iget v15, v0, Ll8/w;->c:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lh8/u;

    iget-object v14, v14, Lh8/u;->z:Ljava/lang/String;

    invoke-static {v14}, Lf8/g;->i(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-static {v7, v14}, Lf8/g;->m(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v14, v57

    .line 91
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v14, v48

    .line 92
    invoke-virtual {v14, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    invoke-virtual {v14, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v7, v0, Ll8/w;->a:Landroid/content/Context;

    iget-object v15, v0, Ll8/w;->b:Ljava/util/List;

    move-object/from16 v20, v12

    iget v12, v0, Ll8/w;->c:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lh8/u;

    iget-object v12, v12, Lh8/u;->A:Ljava/lang/String;

    invoke-static {v12}, Lf8/g;->i(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-static {v7, v12}, Lf8/g;->m(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v12, v58

    .line 95
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v12, v49

    .line 96
    invoke-virtual {v12, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    invoke-virtual {v12, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v15, v0, Ll8/w;->c:I

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->s:Z

    move-object/from16 v15, v50

    invoke-virtual {v0, v15, v5, v7}, Ll8/w;->m(Landroid/widget/ToggleButton;ZZ)V

    .line 99
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v12, v0, Ll8/w;->c:I

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->t:Z

    move-object/from16 v12, v51

    invoke-virtual {v0, v12, v5, v7}, Ll8/w;->m(Landroid/widget/ToggleButton;ZZ)V

    .line 100
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v14, v0, Ll8/w;->c:I

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->u:Z

    move-object/from16 v14, v52

    invoke-virtual {v0, v14, v5, v7}, Ll8/w;->m(Landroid/widget/ToggleButton;ZZ)V

    .line 101
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v14, v0, Ll8/w;->c:I

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->v:Z

    move-object/from16 v14, v53

    invoke-virtual {v0, v14, v5, v7}, Ll8/w;->m(Landroid/widget/ToggleButton;ZZ)V

    .line 102
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v14, v0, Ll8/w;->c:I

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->w:Z

    move-object/from16 v14, v54

    invoke-virtual {v0, v14, v5, v7}, Ll8/w;->m(Landroid/widget/ToggleButton;ZZ)V

    .line 103
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v14, v0, Ll8/w;->c:I

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->x:Z

    move-object/from16 v14, v55

    invoke-virtual {v0, v14, v5, v7}, Ll8/w;->m(Landroid/widget/ToggleButton;ZZ)V

    .line 104
    iget-object v7, v0, Ll8/w;->b:Ljava/util/List;

    iget v14, v0, Ll8/w;->c:I

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget-boolean v7, v7, Lh8/u;->y:Z

    move-object/from16 v14, v56

    invoke-virtual {v0, v14, v5, v7}, Ll8/w;->m(Landroid/widget/ToggleButton;ZZ)V

    .line 105
    new-instance v5, Ll8/f;

    move-object/from16 v7, p1

    move-object/from16 v14, v20

    const/4 v12, 0x1

    invoke-direct {v5, v0, v7, v12}, Ll8/f;-><init>(Ll8/w;Landroid/view/View;I)V

    move-object/from16 v12, v41

    invoke-virtual {v12, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    new-instance v5, Ll8/g;

    invoke-direct {v5, v0}, Ll8/g;-><init>(Ll8/w;)V

    invoke-virtual {v8, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    new-instance v5, Ll8/d;

    const/4 v8, 0x0

    invoke-direct {v5, v0, v8}, Ll8/d;-><init>(Ll8/w;I)V

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    new-instance v3, Ll8/j;

    invoke-direct {v3, v0, v7}, Ll8/j;-><init>(Ll8/w;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    new-instance v1, Ll8/f;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v7, v3}, Ll8/f;-><init>(Ll8/w;Landroid/view/View;I)V

    invoke-virtual {v11, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    new-instance v1, Ll8/l;

    invoke-direct {v1, v0, v7}, Ll8/l;-><init>(Ll8/w;Landroid/view/View;)V

    invoke-virtual {v9, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    new-instance v1, Ll8/e;

    const/4 v5, 0x1

    invoke-direct {v1, v0, v7, v5}, Ll8/e;-><init>(Ll8/w;Landroid/view/View;I)V

    invoke-virtual {v10, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    new-instance v1, Ll8/d;

    invoke-direct {v1, v0, v5}, Ll8/d;-><init>(Ll8/w;I)V

    invoke-virtual {v14, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    new-instance v1, Ll8/h;

    invoke-direct {v1, v0}, Ll8/h;-><init>(Ll8/w;)V

    invoke-virtual {v6, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    new-instance v1, Ll8/f;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v7, v5}, Ll8/f;-><init>(Ll8/w;Landroid/view/View;I)V

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    new-instance v1, Ll8/i;

    invoke-direct {v1, v0}, Ll8/i;-><init>(Ll8/w;)V

    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    new-instance v1, Ll8/e;

    invoke-direct {v1, v0, v7, v5}, Ll8/e;-><init>(Ll8/w;Landroid/view/View;I)V

    invoke-virtual {v13, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    new-instance v1, Ll8/r;

    invoke-direct {v1, v0, v7, v5}, Ll8/r;-><init>(Ll8/w;Landroid/view/View;I)V

    move-object/from16 v8, v24

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v1, Ll8/s;

    invoke-direct {v1, v0, v7, v5}, Ll8/s;-><init>(Ll8/w;Landroid/view/View;I)V

    move-object/from16 v10, v60

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance v1, Ll8/q;

    invoke-direct {v1, v8, v5}, Ll8/q;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v2, v59

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v1, Ll8/p;

    invoke-direct {v1, v10, v5}, Ll8/p;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v10, v26

    invoke-virtual {v10, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v1, Ll8/t;

    invoke-direct {v1, v0, v7, v5}, Ll8/t;-><init>(Ll8/w;Ljava/lang/Object;I)V

    invoke-virtual {v15, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v1, Ll8/r;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v7, v2}, Ll8/r;-><init>(Ll8/w;Landroid/view/View;I)V

    move-object/from16 v10, v51

    invoke-virtual {v10, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v1, Ll8/s;

    invoke-direct {v1, v0, v7, v2}, Ll8/s;-><init>(Ll8/w;Landroid/view/View;I)V

    move-object/from16 v10, v52

    invoke-virtual {v10, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v1, Ll8/u;

    invoke-direct {v1, v0, v7, v5}, Ll8/u;-><init>(Ll8/w;Ljava/lang/Object;I)V

    move-object/from16 v10, v53

    invoke-virtual {v10, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v1, Ll8/t;

    invoke-direct {v1, v0, v7, v2}, Ll8/t;-><init>(Ll8/w;Ljava/lang/Object;I)V

    move-object/from16 v10, v54

    invoke-virtual {v10, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    new-instance v1, Ll8/r;

    invoke-direct {v1, v0, v7, v3}, Ll8/r;-><init>(Ll8/w;Landroid/view/View;I)V

    move-object/from16 v10, v55

    invoke-virtual {v10, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v1, Ll8/s;

    invoke-direct {v1, v0, v7, v3}, Ll8/s;-><init>(Ll8/w;Landroid/view/View;I)V

    move-object/from16 v10, v56

    invoke-virtual {v10, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v1, Ll8/b;

    move-object/from16 v10, v48

    invoke-direct {v1, v0, v10}, Ll8/b;-><init>(Ll8/w;Landroid/widget/Button;)V

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v1, Ll8/u;

    move-object/from16 v10, v49

    const/4 v2, 0x1

    invoke-direct {v1, v0, v10, v2}, Ll8/u;-><init>(Ll8/w;Ljava/lang/Object;I)V

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final p(II)V
    .locals 8

    .line 1
    const-class v0, Lh8/u;

    .line 2
    new-instance v1, Lw8/q;

    invoke-direct {v1, v0}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x1

    new-array v3, v2, [Lw8/n;

    .line 3
    sget-object v4, Lh8/v;->i:Lx8/b;

    iget-object v5, p0, Ll8/w;->b:Ljava/util/List;

    .line 4
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/u;

    iget v5, v5, Lh8/u;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual {v1, v3}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v1

    new-array v3, v2, [Lw8/n;

    sget-object v5, Lh8/v;->f:Lx8/b;

    iget-object v7, p0, Ll8/w;->b:Ljava/util/List;

    .line 5
    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget v7, v7, Lh8/u;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v7

    aput-object v7, v3, v6

    .line 6
    new-instance v7, Lw8/r;

    invoke-direct {v7, v1, v3}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 7
    invoke-virtual {v7}, Lw8/r;->i()Lc9/g;

    .line 8
    new-instance v1, Lw8/q;

    invoke-direct {v1, v0}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v0, v2, [Lw8/n;

    .line 9
    iget-object v3, p0, Ll8/w;->b:Ljava/util/List;

    .line 10
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget v3, v3, Lh8/u;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {v1, v0}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v0

    new-array v1, v2, [Lw8/n;

    iget-object v3, p0, Ll8/w;->b:Ljava/util/List;

    .line 11
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget v3, v3, Lh8/u;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v3

    aput-object v3, v1, v6

    .line 12
    new-instance v3, Lw8/r;

    invoke-direct {v3, v0, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 13
    invoke-virtual {v3}, Lw8/r;->i()Lc9/g;

    .line 14
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/u;

    iget v1, v0, Lh8/u;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Lh8/u;->e:I

    .line 15
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/u;

    iget v1, v0, Lh8/u;->e:I

    sub-int/2addr v1, v2

    iput v1, v0, Lh8/u;->e:I

    .line 16
    iget-object v0, p0, Ll8/w;->b:Ljava/util/List;

    add-int/2addr p2, v2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    iget-object p2, p0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Ll8/w;->g()V

    return-void
.end method
