.class public final Lu6/f$u;
.super Landroid/support/v4/media/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/a;-><init>()V

    return-void
.end method


# virtual methods
.method public M(Lw6/a;)Ls6/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lw6/a;->Z()I

    move-result v0

    invoke-static {v0}, Lt/g;->c(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lw6/a;->P()V

    .line 3
    sget-object p1, Ls6/j;->a:Ls6/j;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance v0, Ls6/m;

    invoke-virtual {p1}, Lw6/a;->J()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Ls6/m;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lw6/a;->W()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ls6/m;

    new-instance v1, Lt6/d;

    invoke-direct {v1, p1}, Lt6/d;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ls6/m;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Ls6/m;

    invoke-virtual {p1}, Lw6/a;->W()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ls6/m;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_4
    new-instance v0, Ls6/k;

    invoke-direct {v0}, Ls6/k;-><init>()V

    .line 10
    invoke-virtual {p1}, Lw6/a;->k()V

    .line 11
    :goto_0
    invoke-virtual {p1}, Lw6/a;->A()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p1}, Lw6/a;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lu6/f$u;->M(Lw6/a;)Ls6/i;

    move-result-object v2

    .line 13
    iget-object v3, v0, Ls6/k;->a:Lt6/e;

    invoke-virtual {v3, v1, v2}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p1}, Lw6/a;->r()V

    return-object v0

    .line 15
    :cond_6
    new-instance v0, Ls6/h;

    invoke-direct {v0}, Ls6/h;-><init>()V

    .line 16
    invoke-virtual {p1}, Lw6/a;->d()V

    .line 17
    :goto_1
    invoke-virtual {p1}, Lw6/a;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {p0, p1}, Lu6/f$u;->M(Lw6/a;)Ls6/i;

    move-result-object v1

    .line 19
    iget-object v2, v0, Ls6/h;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_7
    invoke-virtual {p1}, Lw6/a;->p()V

    return-object v0
.end method

.method public N(Lw6/b;Ls6/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_e

    .line 1
    instance-of v0, p2, Ls6/j;

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    instance-of v0, p2, Ls6/m;

    if-eqz v0, :cond_6

    if-eqz v0, :cond_5

    .line 3
    check-cast p2, Ls6/m;

    .line 4
    iget-object v0, p2, Ls6/m;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2}, Ls6/m;->e()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lw6/b;->K(Ljava/lang/Number;)Lw6/b;

    goto/16 :goto_6

    .line 6
    :cond_1
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    if-eqz v1, :cond_2

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p2}, Ls6/m;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 10
    :goto_0
    invoke-virtual {p1}, Lw6/b;->P()V

    .line 11
    invoke-virtual {p1}, Lw6/b;->d()V

    .line 12
    iget-object p1, p1, Lw6/b;->a:Ljava/io/Writer;

    if-eqz p2, :cond_3

    const-string p2, "true"

    goto :goto_1

    :cond_3
    const-string p2, "false"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 13
    :cond_4
    invoke-virtual {p2}, Ls6/m;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lw6/b;->L(Ljava/lang/String;)Lw6/b;

    goto/16 :goto_6

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Primitive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_6
    instance-of v0, p2, Ls6/h;

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {p1}, Lw6/b;->k()Lw6/b;

    .line 17
    invoke-virtual {p2}, Ls6/i;->b()Ls6/h;

    move-result-object p2

    invoke-virtual {p2}, Ls6/h;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls6/i;

    .line 18
    invoke-virtual {p0, p1, v0}, Lu6/f$u;->N(Lw6/b;Ls6/i;)V

    goto :goto_2

    .line 19
    :cond_7
    invoke-virtual {p1}, Lw6/b;->o()Lw6/b;

    goto/16 :goto_6

    .line 20
    :cond_8
    instance-of v0, p2, Ls6/k;

    if-eqz v0, :cond_d

    .line 21
    invoke-virtual {p1}, Lw6/b;->P()V

    .line 22
    invoke-virtual {p1}, Lw6/b;->d()V

    const/4 v0, 0x3

    .line 23
    invoke-virtual {p1, v0}, Lw6/b;->B(I)V

    .line 24
    iget-object v1, p1, Lw6/b;->a:Ljava/io/Writer;

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Ls6/i;->c()Ls6/k;

    move-result-object p2

    .line 26
    iget-object p2, p2, Ls6/k;->a:Lt6/e;

    invoke-virtual {p2}, Lt6/e;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 27
    check-cast p2, Lt6/e$b;

    .line 28
    iget-object p2, p2, Lt6/e$b;->a:Lt6/e;

    .line 29
    iget-object v1, p2, Lt6/e;->e:Lt6/e$e;

    iget-object v1, v1, Lt6/e$e;->d:Lt6/e$e;

    .line 30
    iget v2, p2, Lt6/e;->d:I

    .line 31
    :goto_3
    iget-object v3, p2, Lt6/e;->e:Lt6/e$e;

    if-eq v1, v3, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_c

    if-eq v1, v3, :cond_b

    .line 32
    iget v3, p2, Lt6/e;->d:I

    if-ne v3, v2, :cond_a

    .line 33
    iget-object v3, v1, Lt6/e$e;->d:Lt6/e$e;

    .line 34
    iget-object v4, v1, Lt6/e$e;->f:Ljava/lang/Object;

    .line 35
    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lw6/b;->p(Ljava/lang/String;)Lw6/b;

    .line 36
    iget-object v1, v1, Lt6/e$e;->g:Ljava/lang/Object;

    .line 37
    check-cast v1, Ls6/i;

    invoke-virtual {p0, p1, v1}, Lu6/f$u;->N(Lw6/b;Ls6/i;)V

    move-object v1, v3

    goto :goto_3

    .line 38
    :cond_a
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 39
    :cond_b
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_c
    const/4 p2, 0x5

    const-string v1, "}"

    .line 40
    invoke-virtual {p1, v0, p2, v1}, Lw6/b;->l(IILjava/lang/String;)Lw6/b;

    goto :goto_6

    .line 41
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t write "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_e
    :goto_5
    invoke-virtual {p1}, Lw6/b;->s()Lw6/b;

    :goto_6
    return-void
.end method
