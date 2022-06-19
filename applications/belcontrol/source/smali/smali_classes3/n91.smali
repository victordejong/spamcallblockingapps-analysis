.class public Ln91;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln91$b;,
        Ln91$a;
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Li91;Lq71$e;)Ln91$b;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Ln91;->b(Li91;Lq71$e;Ljava/lang/Boolean;)Ln91$b;

    move-result-object p0

    return-object p0
.end method

.method public static b(Li91;Lq71$e;Ljava/lang/Boolean;)Ln91$b;
    .locals 11

    new-instance v0, Ln91$b;

    invoke-direct {v0}, Ln91$b;-><init>()V

    invoke-virtual {p0}, Li91;->p()Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Li91;->q()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Li91;->s()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Li91;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lj81;

    invoke-direct {v1}, Lj81;-><init>()V

    invoke-virtual {v1, p0}, Lj81;->H(Li91;)Lj81;

    move-result-object v1

    iget-wide v5, v1, Lj81;->d:J

    cmp-long v7, v5, v2

    if-lez v7, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lj81;->j:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    sget-object v5, Lq71$a;->c:Lq71$a;

    iput-object v5, v0, Ln91$b;->c:Lq71$a;

    iget-object v5, v1, Lj81;->f:Ljava/lang/String;

    iput-object v5, v0, Ln91$b;->f:Ljava/lang/String;

    invoke-static {}, Lu71;->n()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, v1, Lj81;->h:Lj81$a;

    invoke-virtual {v1}, Lj81$a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object p0, Ln91$a;->y:Ln91$a;

    iput-object p0, v0, Ln91$b;->a:Ln91$a;

    iput-boolean v4, v0, Ln91$b;->b:Z

    return-object v0

    :cond_1
    invoke-static {}, Lu71;->d()Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Li91;->p()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lq71$a;->c:Lq71$a;

    iput-object p0, v0, Ln91$b;->c:Lq71$a;

    sget-object p0, Ln91$a;->q:Ln91$a;

    iput-object p0, v0, Ln91$b;->a:Ln91$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    return-object v0

    :cond_2
    invoke-virtual {p0}, Li91;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ln91$a;->g:Ln91$a;

    iput-object v1, v0, Ln91$b;->a:Ln91$a;

    sget-object v1, Lr71$a;->x:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lq71$a;->c:Lq71$a;

    iput-object p0, v0, Ln91$b;->c:Lq71$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    return-object v0

    :cond_3
    invoke-virtual {p0}, Li91;->s()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ln91$a;->h:Ln91$a;

    iput-object v1, v0, Ln91$b;->a:Ln91$a;

    sget-object v1, Lr71$a;->y:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p0, Lq71$a;->c:Lq71$a;

    iput-object p0, v0, Ln91$b;->c:Lq71$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    return-object v0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lx81;

    invoke-direct {v7}, Lx81;-><init>()V

    invoke-virtual {v7, p0}, Lx81;->K(Li91;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_5
    new-instance v8, Lx81;

    invoke-direct {v8}, Lx81;-><init>()V

    invoke-virtual {v8, v7}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    iget-object v9, v8, Lx81;->l:Lq71$g;

    sget-object v10, Lq71$g;->c:Lq71$g;

    if-ne v9, v10, :cond_6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v8, Lx81;->h:Li91$b;

    sget-object v10, Li91$b;->b:Li91$b;

    if-eq v9, v10, :cond_8

    :goto_0
    invoke-virtual {v8}, Lx81;->L()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Ln91$b;->d:Ljava/lang/String;

    goto :goto_1

    :cond_6
    sget-object v10, Lq71$g;->b:Lq71$g;

    if-ne v9, v10, :cond_7

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v8, Lx81;->h:Li91$b;

    sget-object v10, Li91$b;->b:Li91$b;

    if-eq v9, v10, :cond_8

    goto :goto_0

    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_8
    :goto_1
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_b

    invoke-static {}, Lu71;->n()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {}, Lu71;->r()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx81;

    iget-object v6, v6, Lx81;->k:Lq71$a;

    iput-object v6, v0, Ln91$b;->c:Lq71$a;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx81;

    iget-object v6, v6, Lx81;->j:Ljava/util/EnumSet;

    iput-object v6, v0, Ln91$b;->h:Ljava/util/EnumSet;

    sget-object v6, Ln91$a;->f:Ln91$a;

    iput-object v6, v0, Ln91$b;->a:Ln91$a;

    iput-boolean v4, v0, Ln91$b;->b:Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx81;

    iget-object v1, v1, Lx81;->f:Ljava/lang/String;

    iput-object v1, v0, Ln91$b;->f:Ljava/lang/String;

    new-instance v1, Ln91$b;

    invoke-direct {v1, v0}, Ln91$b;-><init>(Ln91$b;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx81;

    iget-object v1, v1, Lx81;->k:Lq71$a;

    iput-object v1, v0, Ln91$b;->c:Lq71$a;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx81;

    iget-object v1, v1, Lx81;->j:Ljava/util/EnumSet;

    iput-object v1, v0, Ln91$b;->h:Ljava/util/EnumSet;

    iget-object v1, v0, Ln91$b;->d:Ljava/lang/String;

    if-eqz v1, :cond_c

    sget-object v1, Ln91$a;->d:Ln91$a;

    goto :goto_2

    :cond_c
    sget-object v1, Ln91$a;->c:Ln91$a;

    :goto_2
    iput-object v1, v0, Ln91$b;->a:Ln91$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx81;

    iget-object v1, v1, Lx81;->f:Ljava/lang/String;

    iput-object v1, v0, Ln91$b;->f:Ljava/lang/String;

    new-instance v1, Ln91$b;

    invoke-direct {v1, v0}, Ln91$b;-><init>(Ln91$b;)V

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Li91;->p()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lq71$a;->c:Lq71$a;

    iput-object v1, v0, Ln91$b;->c:Lq71$a;

    sget-object v1, Ln91$a;->t:Ln91$a;

    iput-object v1, v0, Ln91$b;->a:Ln91$a;

    iput-boolean v4, v0, Ln91$b;->b:Z

    new-instance v1, Ln91$b;

    invoke-direct {v1, v0}, Ln91$b;-><init>(Ln91$b;)V

    goto :goto_3

    :cond_e
    move-object v1, v8

    :goto_3
    new-instance v6, Lq81;

    invoke-direct {v6}, Lq81;-><init>()V

    invoke-virtual {v6, p0}, Lq81;->W(Li91;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_14

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_f
    new-instance v7, Lq81;

    invoke-direct {v7}, Lq81;-><init>()V

    invoke-virtual {v7, v6}, Lq81;->Q(Landroid/database/Cursor;)Lq81;

    iget-object v9, v7, Lq81;->k:Lq71$g;

    sget-object v10, Lq71$g;->c:Lq71$g;

    if-ne v9, v10, :cond_10

    iget-object v9, v7, Lq81;->j:Lq71$a;

    iput-object v9, v0, Ln91$b;->c:Lq71$a;

    iget-object v9, v7, Lq81;->h:Ljava/util/EnumSet;

    iput-object v9, v0, Ln91$b;->h:Ljava/util/EnumSet;

    iput-boolean v5, v0, Ln91$b;->b:Z

    sget-object v9, Ln91$a;->c:Ln91$a;

    :goto_4
    iput-object v9, v0, Ln91$b;->a:Ln91$a;

    iget-object v7, v7, Lq81;->f:Ljava/lang/String;

    iput-object v7, v0, Ln91$b;->f:Ljava/lang/String;

    :goto_5
    const/4 v7, 0x1

    const/4 v9, 0x1

    goto :goto_7

    :cond_10
    sget-object v10, Lq71$g;->b:Lq71$g;

    if-ne v9, v10, :cond_12

    invoke-static {}, Lu71;->n()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-static {}, Lu71;->r()Z

    move-result v9

    if-eqz v9, :cond_12

    :cond_11
    iget-object v9, v7, Lq81;->j:Lq71$a;

    iput-object v9, v0, Ln91$b;->c:Lq71$a;

    iget-object v9, v7, Lq81;->h:Ljava/util/EnumSet;

    iput-object v9, v0, Ln91$b;->h:Ljava/util/EnumSet;

    iput-boolean v4, v0, Ln91$b;->b:Z

    sget-object v9, Ln91$a;->f:Ln91$a;

    goto :goto_4

    :cond_12
    iget-object v9, v7, Lq81;->j:Lq71$a;

    iput-object v9, v0, Ln91$b;->c:Lq71$a;

    iget-object v9, v7, Lq81;->h:Ljava/util/EnumSet;

    iput-object v9, v0, Ln91$b;->h:Ljava/util/EnumSet;

    iput-boolean v4, v0, Ln91$b;->b:Z

    sget-object v9, Ln91$a;->o:Ln91$a;

    iput-object v9, v0, Ln91$b;->a:Ln91$a;

    iget-object v9, v7, Lq81;->f:Ljava/lang/String;

    iput-object v9, v0, Ln91$b;->f:Ljava/lang/String;

    invoke-virtual {v7}, Lq81;->c0()[Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lu71;->c([Ljava/lang/Integer;)Z

    move-result v7

    if-eqz v7, :cond_13

    goto :goto_5

    :cond_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_f

    const/4 v7, 0x1

    goto :goto_6

    :cond_14
    const/4 v7, 0x0

    :goto_6
    const/4 v9, 0x0

    :goto_7
    if-eqz v6, :cond_15

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_15
    if-eqz v7, :cond_17

    if-nez v9, :cond_16

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_16

    sget-object v6, Lq71$a;->c:Lq71$a;

    iput-object v6, v0, Ln91$b;->c:Lq71$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    sget-object v6, Ln91$a;->q:Ln91$a;

    iput-object v6, v0, Ln91$b;->a:Ln91$a;

    :cond_16
    new-instance v6, Ln91$b;

    invoke-direct {v6, v0}, Ln91$b;-><init>(Ln91$b;)V

    goto :goto_8

    :cond_17
    move-object v6, v8

    :goto_8
    if-eqz v1, :cond_18

    if-eqz v6, :cond_18

    invoke-static {v1, v4}, Ln91$b;->a(Ln91$b;Z)Z

    invoke-static {v6, v4}, Ln91$b;->a(Ln91$b;Z)Z

    invoke-static {v0, v4}, Ln91$b;->a(Ln91$b;Z)Z

    :cond_18
    if-eqz v1, :cond_19

    iget-object v10, v1, Ln91$b;->h:Ljava/util/EnumSet;

    invoke-virtual {v10, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    return-object v1

    :cond_19
    if-eqz v6, :cond_1a

    iget-object v1, v6, Ln91$b;->h:Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return-object v6

    :cond_1a
    invoke-static {}, Lu71;->n()Z

    move-result p1

    if-eqz p1, :cond_1c

    if-eqz v7, :cond_1b

    if-nez v9, :cond_1c

    :cond_1b
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1c

    sget-object p0, Lq71$a;->c:Lq71$a;

    iput-object p0, v0, Ln91$b;->c:Lq71$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    sget-object p0, Ln91$a;->q:Ln91$a;

    iput-object p0, v0, Ln91$b;->a:Ln91$a;

    return-object v0

    :cond_1c
    if-eqz v6, :cond_1d

    iput-boolean v4, v6, Ln91$b;->b:Z

    return-object v6

    :cond_1d
    invoke-virtual {p0}, Li91;->t()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Li91;->s()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Li91;->q()Z

    move-result p1

    if-nez p1, :cond_1e

    sget-object p1, Ln91$a;->j:Ln91$a;

    iput-object p1, v0, Ln91$b;->a:Ln91$a;

    sget-object p1, Lr71$a;->z:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_1e

    sget-object p0, Lq71$a;->c:Lq71$a;

    iput-object p0, v0, Ln91$b;->c:Lq71$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Li91;->n()Z

    move-result p1

    if-eqz p1, :cond_1f

    sget-object p1, Ln91$a;->k:Ln91$a;

    iput-object p1, v0, Ln91$b;->a:Ln91$a;

    sget-object p1, Lr71$a;->A:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_1f

    sget-object p0, Lq71$a;->c:Lq71$a;

    iput-object p0, v0, Ln91$b;->c:Lq71$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    return-object v0

    :cond_1f
    invoke-virtual {p0}, Li91;->o()Z

    move-result p1

    if-eqz p1, :cond_20

    sget-object p1, Ln91$a;->m:Ln91$a;

    iput-object p1, v0, Ln91$b;->a:Ln91$a;

    sget-object p1, Lr71$a;->B:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_20

    sget-object p0, Lq71$a;->c:Lq71$a;

    iput-object p0, v0, Ln91$b;->c:Lq71$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    return-object v0

    :cond_20
    invoke-virtual {p0}, Li91;->j()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object p1

    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p1, p2, :cond_21

    sget-object p1, Ln91$a;->n:Ln91$a;

    iput-object p1, v0, Ln91$b;->a:Ln91$a;

    sget-object p1, Lr71$a;->C:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_21

    sget-object p0, Lq71$a;->c:Lq71$a;

    iput-object p0, v0, Ln91$b;->c:Lq71$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    return-object v0

    :cond_21
    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lea1;->a(Li91;)Z

    move-result p1

    if-eqz p1, :cond_22

    sget-object p0, Ln91$a;->u:Ln91$a;

    iput-object p0, v0, Ln91$b;->a:Ln91$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    return-object v0

    :cond_22
    sget-object p1, Lr71$a;->D:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Li91;->t()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Li91;->h()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lr71$a;->E:Lr71$a;

    invoke-virtual {p2}, Lr71$a;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    sget-object p0, Ln91$a;->l:Ln91$a;

    iput-object p0, v0, Ln91$b;->a:Ln91$a;

    sget-object p0, Lq71$a;->c:Lq71$a;

    iput-object p0, v0, Ln91$b;->c:Lq71$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    return-object v0

    :cond_23
    invoke-virtual {p0}, Li91;->p()Z

    move-result p1

    if-nez p1, :cond_24

    invoke-virtual {p0}, Li91;->q()Z

    move-result p1

    if-nez p1, :cond_24

    invoke-virtual {p0}, Li91;->n()Z

    move-result p1

    if-nez p1, :cond_24

    invoke-virtual {p0}, Li91;->s()Z

    move-result p1

    if-nez p1, :cond_24

    invoke-virtual {p0}, Li91;->o()Z

    move-result p1

    if-nez p1, :cond_24

    new-instance p1, Ln81;

    invoke-direct {p1}, Ln81;-><init>()V

    invoke-virtual {p1, p0}, Ln81;->G(Li91;)Ln81;

    iget-wide v6, p1, Ln81;->d:J

    cmp-long p2, v6, v2

    if-lez p2, :cond_24

    iget-object p2, p1, Ln81;->g:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_24

    new-instance p2, Lk81;

    invoke-direct {p2}, Lk81;-><init>()V

    iget-object v1, p1, Ln81;->g:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lk81;->E(Ljava/lang/String;)Lk81;

    iget-wide v6, p2, Lk81;->d:J

    cmp-long p2, v6, v2

    if-lez p2, :cond_24

    new-instance p2, Lu81;

    invoke-direct {p2}, Lu81;-><init>()V

    invoke-virtual {p2, p0, v8}, Lu81;->F(Li91;Ljava/lang/String;)Lu81;

    iget-object p1, p1, Ln81;->g:Ljava/lang/String;

    sget-object v1, Lu81$a;->a:Lu81$a;

    invoke-virtual {p2, p0, p1, v1}, Lu81;->G(Li91;Ljava/lang/String;Lu81$a;)V

    invoke-virtual {p2}, Lu81;->z()Z

    sget-object p0, Ln91$a;->A:Ln91$a;

    iput-object p0, v0, Ln91$b;->a:Ln91$a;

    sget-object p0, Lq71$a;->c:Lq71$a;

    iput-object p0, v0, Ln91$b;->c:Lq71$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    return-object v0

    :cond_24
    sget-object p1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p2

    if-eqz p2, :cond_25

    sget-object p2, Lr71$a;->g:Lr71$a;

    invoke-virtual {p2}, Lr71$a;->a()Z

    move-result p2

    if-eqz p2, :cond_26

    :cond_25
    new-instance p2, Lo81;

    invoke-direct {p2}, Lo81;-><init>()V

    invoke-virtual {p0}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lo81;->H(Ljava/lang/String;)Lo81;

    invoke-virtual {p2}, Lo81;->K()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_26

    sget-object v1, Lq71$a;->c:Lq71$a;

    iput-object v1, v0, Ln91$b;->c:Lq71$a;

    sget-object v1, Ln91$a;->p:Ln91$a;

    iput-object v1, v0, Ln91$b;->a:Ln91$a;

    iget v1, p2, Lo81;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ln91$b;->g:Ljava/lang/Integer;

    iget p2, p2, Lo81;->d:I

    invoke-static {p2}, Lo81;->L(I)Z

    move-result p2

    if-eqz p2, :cond_26

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p0

    iput-boolean p0, v0, Ln91$b;->b:Z

    return-object v0

    :cond_26
    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_28

    sget-object p1, Lr71$a;->g:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_28

    sget-object p1, Lr71$a;->d:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Li91;->p()Z

    move-result p1

    if-nez p1, :cond_27

    invoke-virtual {p0}, Li91;->q()Z

    move-result p1

    if-nez p1, :cond_27

    invoke-virtual {p0}, Li91;->n()Z

    move-result p1

    if-nez p1, :cond_27

    invoke-virtual {p0}, Li91;->s()Z

    move-result p1

    if-nez p1, :cond_27

    invoke-virtual {p0}, Li91;->o()Z

    move-result p1

    if-nez p1, :cond_27

    new-instance p1, Ln81;

    invoke-direct {p1}, Ln81;-><init>()V

    invoke-virtual {p1, p0}, Ln81;->G(Li91;)Ln81;

    iget-wide v6, p1, Ln81;->d:J

    cmp-long p2, v6, v2

    if-lez p2, :cond_27

    iget-object p2, p1, Ln81;->g:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_27

    new-instance p2, Ly81;

    invoke-direct {p2}, Ly81;-><init>()V

    iget-object v1, p1, Ln81;->g:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ly81;->F(Ljava/lang/String;)Ly81;

    iget-wide v6, p2, Ly81;->d:J

    cmp-long p2, v6, v2

    if-lez p2, :cond_27

    new-instance p2, Lu81;

    invoke-direct {p2}, Lu81;-><init>()V

    invoke-virtual {p2, p0, v8}, Lu81;->F(Li91;Ljava/lang/String;)Lu81;

    iget-object p1, p1, Ln81;->g:Ljava/lang/String;

    sget-object v1, Lu81$a;->a:Lu81$a;

    invoke-virtual {p2, p0, p1, v1}, Lu81;->G(Li91;Ljava/lang/String;Lu81$a;)V

    invoke-virtual {p2}, Lu81;->z()Z

    sget-object p0, Ln91$a;->p:Ln91$a;

    iput-object p0, v0, Ln91$b;->a:Ln91$a;

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Ln91$b;->g:Ljava/lang/Integer;

    sget-object p0, Lq71$a;->c:Lq71$a;

    iput-object p0, v0, Ln91$b;->c:Lq71$a;

    iput-boolean v5, v0, Ln91$b;->b:Z

    return-object v0

    :cond_27
    new-instance p1, Lm81;

    invoke-direct {p1}, Lm81;-><init>()V

    invoke-virtual {p1, p0}, Lm81;->H(Li91;)Lm81;

    invoke-virtual {p1}, Lm81;->J()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_28

    iget p0, p1, Lm81;->j:I

    if-lez p0, :cond_28

    iget-object p0, p1, Lm81;->f:Ljava/lang/String;

    iput-object p0, v0, Ln91$b;->f:Ljava/lang/String;

    sget-object p0, Lq71$a;->c:Lq71$a;

    iput-object p0, v0, Ln91$b;->c:Lq71$a;

    sget-object p0, Ln91$a;->z:Ln91$a;

    iput-object p0, v0, Ln91$b;->a:Ln91$a;

    sget-object p0, Lr71$a;->h:Lr71$a;

    invoke-virtual {p0}, Lr71$a;->a()Z

    move-result p0

    iput-boolean p0, v0, Ln91$b;->b:Z

    return-object v0

    :cond_28
    iput-boolean v4, v0, Ln91$b;->b:Z

    return-object v0
.end method
