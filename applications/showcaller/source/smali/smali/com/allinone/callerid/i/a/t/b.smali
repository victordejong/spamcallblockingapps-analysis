.class public Lcom/allinone/callerid/i/a/t/b;
.super Ljava/lang/Object;
.source "MainSmallFunction.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->I()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->m1(Z)V

    .line 3
    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/allinone/callerid/util/h1;->n0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "install_googleplay"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/allinone/callerid/util/f0;->b(Landroid/content/Context;)V

    .line 6
    invoke-static {p0}, Lcom/allinone/callerid/util/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "is_ou_meng_country"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "first_enter_main_online"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lcom/allinone/callerid/util/f0;->o(Landroid/content/Context;)V

    .line 10
    invoke-static {p0}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    sget-object v2, Lcom/allinone/callerid/util/g1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/b1;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    sget-object v2, Lcom/allinone/callerid/util/g1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/b1;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    sget-object v2, Lcom/allinone/callerid/util/g1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/b1;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    sget-object v2, Lcom/allinone/callerid/util/g1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/b1;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    sget-object v2, Lcom/allinone/callerid/util/g1;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 20
    :cond_5
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_7

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_7

    .line 21
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_6

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldcallend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->g0(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tony"

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_6
    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->g0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 24
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->Q2(Ljava/lang/Boolean;)V

    .line 25
    :cond_7
    invoke-static {}, Lcom/allinone/callerid/util/a1;->A()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 26
    invoke-static {p0}, Lcom/allinone/callerid/util/d;->g(Landroid/content/Context;)V

    .line 27
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->d1(Z)V

    :cond_8
    return-void
.end method

.method public static b(ILandroid/content/Context;)V
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "response_8"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :pswitch_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "response_7"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "response_6"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "response_5"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "response_4"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "response_3"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "response_2"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "response_1"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static c(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->s0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_2

    const-string v0, ""

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Lcom/allinone/callerid/util/g;

    invoke-direct {v0, p1, p0}, Lcom/allinone/callerid/util/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "wbb"

    const-string v0, "\u526a\u8d34\u677f\u79bb\u7ebf\u67e5\u8be2"

    .line 6
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/allinone/callerid/l/a/f;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
