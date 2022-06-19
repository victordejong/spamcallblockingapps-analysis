.class public final synthetic Ly2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/a$a;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lm7/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly2/k;->a:I

    iput-object p1, p0, Ly2/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Ly2/k;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 13

    iget p1, p0, Ly2/k;->a:I

    const-string v0, "socurl"

    const-string v1, "hy#Ut*PkU@385%d2"

    const-string v2, "social"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "body"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    iget-object p1, p0, Ly2/k;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/api/AlarmJobIntentService;

    iget-object v6, p0, Ly2/k;->c:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    check-cast p2, Ls6/k;

    sget v7, Lcom/mglab/scm/api/AlarmJobIntentService;->l:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "preinitserverscount"

    const-string v8, "unbandate"

    const/4 v9, -0x2

    const/4 v10, 0x1

    if-eqz p2, :cond_7

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    .line 2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p1, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    invoke-virtual {v12, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {p2, v5}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v11

    invoke-virtual {v11}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {p2, v5}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance v4, Ls6/l;

    invoke-direct {v4}, Ls6/l;-><init>()V

    invoke-virtual {v4, p2}, Ls6/l;->a(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->c()Ls6/k;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    const-string v4, "code"

    .line 7
    invoke-virtual {p2, v4}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v4

    invoke-virtual {v4}, Ls6/i;->a()I

    move-result v4

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v11, "pcode"

    invoke-static {v6, v11, v5}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-static {v6, v3}, Lf8/h;->l0(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const/16 v5, 0x3e8

    const-string v11, "psetapponoff"

    if-eq v4, v5, :cond_1

    const/16 v5, 0x1a0a

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    :try_start_1
    invoke-static {v6, v11, v3}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 11
    invoke-static {v6}, Lf8/g;->N(Landroid/content/Context;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v6, v11, v3}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 13
    invoke-static {v6}, Lf8/g;->N(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 14
    :goto_0
    :try_start_2
    invoke-virtual {p2, v2}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v2

    invoke-virtual {v2}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 16
    invoke-static {v1, v2}, Lf8/g;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v6, v0, v1}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 20
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {p2, v8}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v0

    invoke-virtual {v0}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v6, v8, v0}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 22
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :goto_2
    :try_start_6
    const-string v0, "help"

    .line 24
    invoke-virtual {p2, v0}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v0

    invoke-virtual {v0}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "01htP*PkU@3d2KuP"

    .line 26
    invoke-static {v1, v0}, Lf8/g;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hurl"

    .line 27
    invoke-static {v6, v1, v0}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 28
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :cond_3
    :goto_3
    :try_start_8
    const-string v0, "billing"

    .line 30
    invoke-virtual {p2, v0}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v0

    invoke-virtual {v0}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v6}, Lf8/h;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "lkTY6y7#bhZA4ff4"

    .line 32
    invoke-static {v1, v0}, Lf8/g;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "psetub"

    invoke-static {v6, v1, v0}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 33
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :cond_4
    :goto_4
    :try_start_a
    const-string v0, "needsp"

    .line 35
    invoke-virtual {p2, v0}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v0

    invoke-virtual {v0}, Ls6/i;->a()I

    move-result v0

    if-ne v0, v10, :cond_5

    .line 36
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/a;->j(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 37
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :cond_5
    :goto_5
    :try_start_c
    const-string v0, "commandid"

    .line 38
    invoke-virtual {p2, v0}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v0

    invoke-virtual {v0}, Ls6/i;->a()I

    move-result v0

    const-string v1, "commandcode"

    .line 39
    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v1

    invoke-virtual {v1}, Ls6/i;->a()I

    move-result v1

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/mglab/scm/api/AlarmJobIntentService;->e(II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 41
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :goto_6
    :try_start_e
    const-string v0, "message"

    .line 43
    invoke-virtual {p2, v0}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v0

    invoke-virtual {v0}, Ls6/i;->c()Ls6/k;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ls6/i;->toString()Ljava/lang/String;

    .line 45
    invoke-virtual {v0}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pmessage"

    .line 46
    invoke-static {v6, v1, v0}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    .line 47
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 49
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "pilc"

    .line 50
    invoke-static {v6, v2, v0, v1}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v0, "initserver"

    .line 51
    invoke-virtual {p2, v0}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v0

    invoke-virtual {v0}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gH#Yu87&kHna%Oe3"

    .line 52
    invoke-static {v1, v0}, Lf8/g;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "iurl"

    .line 53
    invoke-static {v6, v1, v0}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2, v7}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v0

    invoke-virtual {v0}, Ls6/i;->a()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 55
    :goto_8
    invoke-virtual {p2, v7}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v1

    invoke-virtual {v1}, Ls6/i;->a()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preinitserver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v1

    invoke-virtual {v1}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 57
    :cond_6
    invoke-static {v6, v0}, Lf8/h;->m0(Landroid/content/Context;[Ljava/lang/String;)V

    .line 58
    invoke-static {v6}, Lf8/h;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/mglab/scm/api/AlarmJobIntentService;->h()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_9

    :catch_7
    move-exception p1

    .line 60
    invoke-static {v6}, Lf8/h;->z(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v10

    .line 61
    invoke-static {v6, p2}, Lf8/h;->l0(Landroid/content/Context;I)V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 64
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/e;

    const-string v0, ".PreInitexception"

    invoke-direct {p2, v0, v10}, Lk8/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    invoke-static {v9, p1}, La6/d;->f(ILba/b;)V

    goto :goto_9

    .line 66
    :cond_7
    invoke-static {v6}, Lf8/h;->z(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v10

    .line 67
    invoke-static {v6, p1}, Lf8/h;->l0(Landroid/content/Context;I)V

    .line 68
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/e;

    const-string v0, ".PreInit no result"

    invoke-direct {p2, v0, v10}, Lk8/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    invoke-static {v9, p1}, La6/d;->f(ILba/b;)V

    :goto_9
    return-void

    .line 70
    :goto_a
    iget-object p1, p0, Ly2/k;->b:Ljava/lang/Object;

    check-cast p1, Lm8/i;

    iget-object v6, p0, Ly2/k;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    check-cast p2, Ls6/k;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x8

    if-eqz p2, :cond_9

    .line 71
    :try_start_10
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {p2, v5}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v6

    invoke-virtual {v6}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-virtual {p2, v5}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 75
    new-instance v4, Ls6/l;

    invoke-direct {v4}, Ls6/l;-><init>()V

    invoke-virtual {v4, p2}, Ls6/l;->a(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->c()Ls6/k;

    move-result-object p2

    .line 76
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 77
    :try_start_11
    invoke-virtual {p2, v2}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->d()Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 79
    sget-object v2, Lm8/i;->r:Landroid/content/Context;

    invoke-static {v1, p2}, Lf8/g;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 80
    invoke-static {v2, v0, p2}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lm8/i;->c()V

    goto :goto_b

    .line 82
    :cond_8
    iget-object p2, p1, Lm8/i;->l:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object p2, p1, Lm8/i;->k:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object p2, p1, Lm8/i;->o:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_b

    :catch_8
    move-exception p2

    .line 85
    :try_start_12
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    iget-object p2, p1, Lm8/i;->l:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object p2, p1, Lm8/i;->k:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object p2, p1, Lm8/i;->o:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_b

    :catch_9
    move-exception p2

    .line 89
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    iget-object p2, p1, Lm8/i;->l:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object p2, p1, Lm8/i;->k:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object p1, p1, Lm8/i;->o:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 93
    :cond_9
    iget-object p2, p1, Lm8/i;->l:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object p2, p1, Lm8/i;->k:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object p1, p1, Lm8/i;->o:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ly2/k;->b:Ljava/lang/Object;

    check-cast v0, Ly2/n;

    iget-object v1, p0, Ly2/k;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    .line 1
    iget-object v0, v0, Ly2/n;->c:Lz2/c;

    invoke-interface {v0, v1}, Lz2/c;->e(Ljava/lang/Iterable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Ly2/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/a;

    iget-object v1, p0, Ly2/k;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Date;

    sget-object v2, Lcom/google/firebase/remoteconfig/internal/a;->k:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/firebase/remoteconfig/internal/a;->h:Lcom/google/firebase/remoteconfig/internal/b;

    .line 3
    iget-object v2, v0, Lcom/google/firebase/remoteconfig/internal/b;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v0, v0, Lcom/google/firebase/remoteconfig/internal/b;->a:Landroid/content/SharedPreferences;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "last_fetch_status"

    const/4 v4, -0x1

    .line 6
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "last_fetch_time_in_millis"

    .line 7
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    instance-of v1, v1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    if-eqz v1, :cond_2

    .line 12
    iget-object v0, v0, Lcom/google/firebase/remoteconfig/internal/a;->h:Lcom/google/firebase/remoteconfig/internal/b;

    .line 13
    iget-object v1, v0, Lcom/google/firebase/remoteconfig/internal/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_1
    iget-object v0, v0, Lcom/google/firebase/remoteconfig/internal/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_fetch_status"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 16
    :cond_2
    iget-object v0, v0, Lcom/google/firebase/remoteconfig/internal/a;->h:Lcom/google/firebase/remoteconfig/internal/b;

    .line 17
    iget-object v1, v0, Lcom/google/firebase/remoteconfig/internal/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_2
    iget-object v0, v0, Lcom/google/firebase/remoteconfig/internal/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_fetch_status"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    monitor-exit v1

    :goto_0
    return-object p1

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1
.end method
