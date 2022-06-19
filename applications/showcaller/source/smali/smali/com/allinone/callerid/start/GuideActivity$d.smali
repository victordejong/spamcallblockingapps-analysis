.class Lcom/allinone/callerid/start/GuideActivity$d;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/GuideActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/GuideActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/GuideActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {v0}, Lcom/allinone/callerid/start/GuideActivity;->c0(Lcom/allinone/callerid/start/GuideActivity;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {v0, v2}, Lcom/allinone/callerid/start/GuideActivity;->d0(Lcom/allinone/callerid/start/GuideActivity;Z)Z

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {v0}, Lcom/allinone/callerid/start/GuideActivity;->f0(Lcom/allinone/callerid/start/GuideActivity;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/allinone/callerid/start/GuideActivity;->e0(Lcom/allinone/callerid/start/GuideActivity;Ljava/util/List;)Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "first_enter_laucher_oncreate_online"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 6
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    const-string v3, "first_enter"

    if-eqz v0, :cond_0

    const-string v0, "first_enter_laucher"

    .line 7
    invoke-static {v3, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->c0(Landroid/content/Context;)Z

    move-result v0

    const-string v4, "country"

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v5, "have_simcard"

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 10
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "have_sim"

    .line 11
    invoke-static {v4, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "no_sim"

    .line 13
    invoke-static {v4, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v4, "no_simcard"

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 15
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "first_enter_guide1"

    .line 16
    invoke-static {v3, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, ""

    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {v0}, Lcom/allinone/callerid/start/GuideActivity;->g0(Lcom/allinone/callerid/start/GuideActivity;)I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    goto :goto_1

    .line 20
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "get_unmatched_countrycode"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "get_matched_countrycode"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "not_get_countrycode"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {v0}, Lcom/allinone/callerid/start/GuideActivity;->h0(Lcom/allinone/callerid/start/GuideActivity;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v3, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {v3}, Lcom/allinone/callerid/start/GuideActivity;->h0(Lcom/allinone/callerid/start/GuideActivity;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/allinone/callerid/util/p;->h(Landroid/content/Context;Lcom/allinone/callerid/model/EZCountryCode;)V

    .line 25
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->m1(Z)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->e1(J)V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v3, 0x5265c00

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->X1(J)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->J1(J)V

    goto :goto_3

    .line 30
    :cond_a
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->m1(Z)V

    .line 31
    :goto_3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->J()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->a1(J)V

    .line 33
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->n1(Z)V

    .line 34
    :cond_b
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->e0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    .line 35
    :goto_4
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$d;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->e0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x0()Ljava/lang/String;

    :goto_5
    return-void
.end method
