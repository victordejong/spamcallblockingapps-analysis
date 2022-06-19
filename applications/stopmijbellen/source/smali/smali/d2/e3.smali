.class public Ld2/e3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Ld2/e3$h;

    invoke-direct {v0, p0}, Ld2/e3$h;-><init>(Ld2/e3;)V

    const-string v1, "System.open_store"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 2
    new-instance v0, Ld2/e3$i;

    invoke-direct {v0, p0}, Ld2/e3$i;-><init>(Ld2/e3;)V

    const-string v1, "System.telephone"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 3
    new-instance v0, Ld2/e3$j;

    invoke-direct {v0, p0}, Ld2/e3$j;-><init>(Ld2/e3;)V

    const-string v1, "System.sms"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 4
    new-instance v0, Ld2/e3$k;

    invoke-direct {v0, p0}, Ld2/e3$k;-><init>(Ld2/e3;)V

    const-string v1, "System.vibrate"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 5
    new-instance v0, Ld2/e3$l;

    invoke-direct {v0, p0}, Ld2/e3$l;-><init>(Ld2/e3;)V

    const-string v1, "System.open_browser"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 6
    new-instance v0, Ld2/e3$m;

    invoke-direct {v0, p0}, Ld2/e3$m;-><init>(Ld2/e3;)V

    const-string v1, "System.mail"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 7
    new-instance v0, Ld2/e3$n;

    invoke-direct {v0, p0}, Ld2/e3$n;-><init>(Ld2/e3;)V

    const-string v1, "System.launch_app"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 8
    new-instance v0, Ld2/e3$o;

    invoke-direct {v0, p0}, Ld2/e3$o;-><init>(Ld2/e3;)V

    const-string v1, "System.create_calendar_event"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 9
    new-instance v0, Ld2/e3$p;

    invoke-direct {v0, p0}, Ld2/e3$p;-><init>(Ld2/e3;)V

    const-string v1, "System.social_post"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 10
    new-instance v0, Ld2/e3$a;

    invoke-direct {v0, p0}, Ld2/e3$a;-><init>(Ld2/e3;)V

    const-string v1, "System.make_in_app_purchase"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 11
    new-instance v0, Ld2/e3$b;

    invoke-direct {v0, p0}, Ld2/e3$b;-><init>(Ld2/e3;)V

    const-string v1, "System.close"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 12
    new-instance v0, Ld2/e3$c;

    invoke-direct {v0, p0}, Ld2/e3$c;-><init>(Ld2/e3;)V

    const-string v1, "System.expand"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 13
    new-instance v0, Ld2/e3$d;

    invoke-direct {v0, p0}, Ld2/e3$d;-><init>(Ld2/e3;)V

    const-string v1, "System.use_custom_close"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 14
    new-instance v0, Ld2/e3$e;

    invoke-direct {v0, p0}, Ld2/e3$e;-><init>(Ld2/e3;)V

    const-string v1, "System.set_orientation_properties"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 15
    new-instance v0, Ld2/e3$f;

    invoke-direct {v0, p0}, Ld2/e3$f;-><init>(Ld2/e3;)V

    const-string v1, "System.click_override"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/q;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v1, Ld2/q;->a:Landroid/support/v4/media/a;

    if-eqz v2, :cond_0

    .line 5
    iget-boolean v3, v1, Ld2/q;->m:Z

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2, v1}, Landroid/support/v4/media/a;->w(Ld2/q;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, v0, Ld2/k0;->f:Ljava/util/Map;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld2/j;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Ld2/j;->getListener()Ld2/k;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 10
    iget-boolean v1, p1, Ld2/j;->n:Z

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Ld2/k;->a(Ld2/j;)V

    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ld2/k0;->f:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/j;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    const-string v1, "ad_session_id"

    .line 5
    invoke-static {v0, v1, p1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    new-instance p1, Ld2/t0;

    const-string v1, "MRAID.on_event"

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {p1}, Ld2/t0;->b()V

    return v2
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/q;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v1, Ld2/q;->a:Landroid/support/v4/media/a;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, v1}, Landroid/support/v4/media/a;->D(Ld2/q;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Ld2/k0;->f:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld2/j;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ld2/j;->getListener()Ld2/k;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Ld2/k;->c(Ld2/j;)V

    :cond_2
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ld2/e3$g;

    invoke-direct {v0, p0, p1}, Ld2/e3$g;-><init>(Ld2/e3;Ljava/lang/String;)V

    invoke-static {v0}, Ld2/i3;->j(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Executing ADCSystem.sendOpenCustomMessage failed"

    .line 2
    invoke-static {p1}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v1, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public f(Ld2/t0;)Z
    .locals 6

    .line 1
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 2
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "product_id"

    .line 3
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_session_id"

    .line 4
    invoke-virtual {v1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "handle"

    .line 6
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {p0, v2}, Ld2/e3;->e(Ljava/lang/String;)V

    .line 9
    invoke-static {v1}, Ld2/i3;->g(Landroid/content/Intent;)Z

    move-result v1

    const-string v2, "success"

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v2, v1}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 11
    invoke-virtual {p1, v0}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    .line 12
    invoke-virtual {p0, v3}, Ld2/e3;->d(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v3}, Ld2/e3;->b(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v3}, Ld2/e3;->c(Ljava/lang/String;)Z

    return v1

    :cond_1
    const-string v1, "Unable to open."

    const/4 v3, 0x0

    .line 15
    invoke-static {v1, v3}, Ld2/i3;->l(Ljava/lang/String;I)Z

    .line 16
    invoke-static {v0, v2, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 17
    invoke-virtual {p1, v0}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    return v3
.end method
