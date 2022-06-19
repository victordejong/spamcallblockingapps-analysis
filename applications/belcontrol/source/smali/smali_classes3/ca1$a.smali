.class public final Lca1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    invoke-virtual {v0}, Ll81;->V()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Lookup preparation resulted in null cursor"

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lw61;

    invoke-direct {v1}, Lw61;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lw61;->a:Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    new-instance v3, Ll81;

    invoke-direct {v3}, Ll81;-><init>()V

    invoke-virtual {v3, v0}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    iget-object v4, v3, Ll81;->o:Ljava/util/EnumSet;

    sget-object v5, Lq71$e;->b:Lq71$e;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Lw61;->b(Ll81;)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    invoke-virtual {v1}, Lw61;->g()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_4
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v1, v3}, Lk61;->p(Lw61;Z)Lw61;

    move-result-object v1

    sget-object v4, Lr71$a;->k1:Lr71$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lr71$a;->n(Ljava/lang/Long;)V
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received server error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lk61$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Still continue"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_5
    :try_start_1
    new-instance v7, Ll81;

    invoke-direct {v7}, Ll81;-><init>()V

    invoke-virtual {v7, v0}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    iget-object v8, v1, Lw61;->b:Ljava/util/HashMap;

    iget-object v9, v7, Ll81;->m:Li91;

    invoke-virtual {v9}, Li91;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw61$b;

    if-eqz v8, :cond_6

    iget v9, v8, Lw61$b;->b:I

    if-lez v9, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_2
    sget-object v10, Lq71$e;->b:Lq71$e;

    iget-object v11, v7, Ll81;->o:Ljava/util/EnumSet;

    sget-object v12, Lq71$e;->c:Lq71$e;

    invoke-virtual {v11, v12}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :goto_3
    move-object v10, v12

    goto :goto_4

    :cond_7
    iget-object v11, v7, Ll81;->o:Ljava/util/EnumSet;

    sget-object v12, Lq71$e;->d:Lq71$e;

    invoke-virtual {v11, v12}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    iget-object v11, v7, Ll81;->m:Li91;

    invoke-static {v11, v10}, Ln91;->a(Li91;Lq71$e;)Ln91$b;

    move-result-object v10

    iget-boolean v11, v10, Ln91$b;->b:Z

    const-wide/16 v12, -0x1

    if-nez v11, :cond_9

    iget-object v11, v10, Ln91$b;->a:Ln91$a;

    sget-object v14, Ln91$a;->f:Ln91$a;

    if-ne v11, v14, :cond_9

    iget-object v7, v7, Ll81;->m:Li91;

    :goto_5
    invoke-static {v7, v10, v12, v13}, Lo71;->h(Li91;Ln91$b;J)V

    goto :goto_7

    :cond_9
    invoke-virtual {v7}, Ll81;->E()Z

    move-result v11

    if-nez v11, :cond_a

    if-eqz v9, :cond_c

    :cond_a
    if-eqz v9, :cond_b

    const/4 v11, 0x1

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v7, v11}, Ll81;->C0(I)V

    invoke-virtual {v7}, Lv71;->z()Z

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v7}, Ll81;->r0()Z

    move-result v9

    if-nez v9, :cond_d

    sget-object v9, Lr71$a;->d:Lr71$a;

    invoke-virtual {v9}, Lr71$a;->a()Z

    move-result v9

    if-eqz v9, :cond_e

    sget-object v9, Lr71$a;->g:Lr71$a;

    invoke-virtual {v9}, Lr71$a;->a()Z

    move-result v9

    if-eqz v9, :cond_e

    new-instance v9, Lo81;

    invoke-direct {v9}, Lo81;-><init>()V

    iget-object v10, v7, Ll81;->m:Li91;

    invoke-virtual {v10}, Li91;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lo81;->I(Ljava/lang/String;Z)Lo81;

    invoke-virtual {v9}, Lo81;->K()Ljava/lang/Long;

    move-result-object v10

    if-nez v10, :cond_f

    iget-object v7, v7, Ll81;->m:Li91;

    invoke-virtual {v9, v7}, Lo81;->N(Li91;)V

    iget v7, v8, Lw61$b;->k:I

    iput v7, v9, Lo81;->d:I

    invoke-virtual {v9}, Lo81;->z()Z

    goto :goto_7

    :cond_d
    iget-object v8, v7, Ll81;->m:Li91;

    invoke-virtual {v8}, Li91;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v8, v10, Ln91$b;->a:Ln91$a;

    sget-object v9, Ln91$a;->q:Ln91$a;

    if-eq v8, v9, :cond_f

    sget-object v9, Ln91$a;->y:Ln91$a;

    if-eq v8, v9, :cond_f

    iget-object v7, v7, Ll81;->m:Li91;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    nop

    :cond_f
    :goto_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v3, Ll81;

    invoke-direct {v3}, Ll81;-><init>()V

    invoke-virtual {v3, v2, v0}, Ll81;->D0(I[Ljava/lang/String;)V

    :cond_10
    iget-object v0, v1, Lw61;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lr71$a;->s1:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lr71$a;->r1:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->g()J

    move-result-wide v2

    cmp-long v0, v2, v5

    if-ltz v0, :cond_11

    sget-object v0, Lr71$a;->r0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->g()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_11

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lfa1$b;

    iget-object v1, v1, Lw61;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lfa1$b;->c(Ljava/lang/String;)V

    :cond_11
    return-void
.end method
