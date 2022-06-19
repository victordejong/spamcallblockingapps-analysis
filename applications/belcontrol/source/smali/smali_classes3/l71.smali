.class public Ll71;
.super Lk71;
.source ""

# interfaces
.implements Ln71;
.implements Lm91$b;


# static fields
.field public static f:Li91;

.field public static g:Ln91$b;


# instance fields
.field public b:Lra1;

.field public c:Z

.field public d:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lk71;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll71;->b:Lra1;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ll71;->c:Z

    iput-object v0, p0, Ll71;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lfa1;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr71$a;->v:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ll71;->n(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ll71;->o(Landroid/content/Intent;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Ll71;->o(Landroid/content/Intent;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent action is ignored - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj91;->G(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/kedlin/cca/core/call/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore requested for call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public c(Lcom/kedlin/cca/core/call/Call;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hangup requested for call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lk71;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lj91;->u(Ljava/lang/Throwable;)V

    const-string v0, "Unfortunately none of the end call methods worked"

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ll71;->b(Lcom/kedlin/cca/core/call/Call;)V

    return-void
.end method

.method public d()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lq71$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lq71$a;->d:Lq71$a;

    sget-object v1, Lq71$a;->f:Lq71$a;

    sget-object v2, Lq71$a;->g:Lq71$a;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/kedlin/cca/core/call/Call;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/kedlin/cca/core/call/Call;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/core/call/Call;->f(Z)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kedlin.cca.action.LLPP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.kedlin.cca.extra.LLPPC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/core/call/Call;->f(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "UI is not ready"

    invoke-static {p0, v1, v0}, Lj91;->H(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pickup requested for call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_1
    invoke-virtual {p0}, Lk71;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    :try_start_2
    invoke-virtual {p0}, Lk71;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lj91;->u(Ljava/lang/Throwable;)V

    :try_start_3
    invoke-virtual {p0}, Lk71;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lj91;->u(Ljava/lang/Throwable;)V

    const-string v0, "Unfortunately none of the answering call methods worked"

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ll71;->b(Lcom/kedlin/cca/core/call/Call;)V

    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm91$c;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    iget-object p1, p0, Ll71;->d:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object p2, p0, Ll71;->d:Landroid/os/Handler;

    :cond_0
    check-cast p3, Li91;

    invoke-static {}, Lfa1;->x()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lq71$e;->b:Lq71$e;

    invoke-static {p3, p1}, Ln91;->a(Li91;Lq71$e;)Ln91$b;

    move-result-object p1

    invoke-static {}, Lfa1$e;->f()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    invoke-static {}, Lq71$a;->b()Lq71$a;

    move-result-object p2

    iput-object p2, p1, Ln91$b;->c:Lq71$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Forcing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Ln91$b;->c:Lq71$a;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " blocking mode for the second line calls"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    sput-object p1, Ll71;->g:Ln91$b;

    iget-boolean p2, p1, Ln91$b;->b:Z

    if-eqz p2, :cond_5

    invoke-static {p3, p1}, Lz91;->q(Li91;Ln91$b;)V

    invoke-virtual {p3}, Li91;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lfa1$e;->h(Ljava/lang/String;)Lcom/kedlin/cca/core/call/Call;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p1, Ln91$b;->c:Lq71$a;

    invoke-virtual {v0}, Lq71$a;->d()Lq71$a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kedlin/cca/core/call/Call;->a(Lq71$a;)V

    :cond_2
    iget-object p2, p1, Ln91$b;->c:Lq71$a;

    invoke-virtual {p2}, Lq71$a;->d()Lq71$a;

    move-result-object p2

    sget-object v0, Lq71$a;->f:Lq71$a;

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Ll71;->b:Lra1;

    if-nez p2, :cond_3

    new-instance p2, Lra1;

    invoke-direct {p2}, Lra1;-><init>()V

    iput-object p2, p0, Ll71;->b:Lra1;

    invoke-virtual {p2}, Lra1;->f()V

    :cond_3
    const/4 p2, 0x0

    invoke-static {p3, p1, p2}, Lra1;->h(Li91;Ln91$b;Z)V

    :cond_4
    sget-object p2, Lw91$a;->d:Lw91$a;

    iget-object p1, p1, Ln91$b;->a:Ln91$a;

    invoke-static {p0, p2, p1}, Lw91;->d(Ljava/lang/Object;Lw91$a;Ln91$a;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lo91;->e()V

    :goto_0
    return-void
.end method

.method public final n(Landroid/content/Intent;)V
    .locals 11

    sget-object v0, Lta1;->H:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lfa1$e;->j()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BLOCKING"

    const/4 v3, 0x0

    if-eqz v0, :cond_1c

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const-string p1, "Call state returned doesn\'t match any known states"

    :goto_0
    invoke-static {p0, p1}, Lj91;->G(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    invoke-static {}, Lo91;->e()V

    sget-object p1, Ll71;->g:Ln91$b;

    if-eqz p1, :cond_2

    iget-boolean v0, p1, Ln91$b;->b:Z

    if-eqz v0, :cond_2

    iget-object p1, p1, Ln91$b;->c:Lq71$a;

    invoke-virtual {p1}, Lq71$a;->d()Lq71$a;

    move-result-object p1

    sget-object v0, Lq71$a;->d:Lq71$a;

    if-ne p1, v0, :cond_2

    sget-object p1, Lr71$a;->d:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    sput-object v1, Ll71;->f:Li91;

    sput-object v1, Ll71;->g:Ln91$b;

    :cond_3
    invoke-static {}, Lra1;->d()V

    const-string p1, "Call time until OFFHOOK"

    :goto_1
    invoke-static {v2, p1}, Lj91;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_4
    iput-boolean v3, p0, Ll71;->c:Z

    invoke-static {v2}, Lj91;->C(Ljava/lang/String;)V

    invoke-static {p1}, Lfa1$e;->g(Landroid/content/Intent;)Lcom/kedlin/cca/core/call/Call;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "Cannot find call object. Nothing else to do other than skip"

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/kedlin/cca/core/call/Call;->b()Li91;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incoming call from "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "CACHING"

    invoke-static {v1}, Lj91;->C(Ljava/lang/String;)V

    invoke-static {v0}, Lo71;->e(Li91;)Ln91$b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time to check cache for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    if-nez v5, :cond_7

    const-string v1, "FILTERING"

    invoke-static {v1}, Lj91;->C(Ljava/lang/String;)V

    sget-object v5, Lq71$e;->b:Lq71$e;

    invoke-static {v0, v5}, Ln91;->a(Li91;Lq71$e;)Ln91$b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time to filter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    iget-object v1, v5, Ln91$b;->a:Ln91$a;

    sget-object v6, Ln91$a;->q:Ln91$a;

    if-eq v1, v6, :cond_7

    sget-object v6, Ln91$a;->y:Ln91$a;

    if-eq v1, v6, :cond_7

    const-string v1, "CACHE_SAVE"

    invoke-static {v1}, Lj91;->C(Ljava/lang/String;)V

    iget-object v6, v5, Ln91$b;->a:Ln91$a;

    sget-object v7, Ln91$a;->p:Ln91$a;

    if-ne v6, v7, :cond_6

    const-wide/32 v6, 0x5265c00

    goto :goto_2

    :cond_6
    const-wide/16 v6, -0x1

    :goto_2
    invoke-static {v0, v5, v6, v7}, Lo71;->h(Li91;Ln91$b;J)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time to save "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to cache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    :cond_7
    iget-boolean v1, v5, Ln91$b;->b:Z

    if-nez v1, :cond_8

    invoke-static {v0}, Lz91;->h(Li91;)V

    :cond_8
    sget-object v1, Lq71$e;->b:Lq71$e;

    invoke-static {v0, v5, v1}, Lz91;->o(Li91;Ln91$b;Lq71$e;)V

    iget-object v6, v5, Ln91$b;->h:Ljava/util/EnumSet;

    invoke-virtual {v6}, Ljava/util/EnumSet;->size()I

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    iput-object v6, v5, Ln91$b;->h:Ljava/util/EnumSet;

    :cond_9
    iget-object v6, v5, Ln91$b;->h:Ljava/util/EnumSet;

    invoke-virtual {v6, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    iput-boolean v3, v5, Ln91$b;->b:Z

    sget-object v6, Ln91$a;->b:Ln91$a;

    iput-object v6, v5, Ln91$b;->a:Ln91$a;

    :cond_a
    iget-object v6, v5, Ln91$b;->a:Ln91$a;

    sget-object v7, Ln91$a;->q:Ln91$a;

    if-ne v6, v7, :cond_c

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lu71;->E(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v6}, Ln91;->b(Li91;Lq71$e;Ljava/lang/Boolean;)Ln91$b;

    move-result-object v1

    iget-boolean v6, v1, Ln91$b;->b:Z

    iput-boolean v6, v5, Ln91$b;->b:Z

    iget-boolean v6, v1, Ln91$b;->b:Z

    if-eqz v6, :cond_b

    iget-object v1, v1, Ln91$b;->a:Ln91$a;

    goto :goto_3

    :cond_b
    sget-object v1, Ln91$a;->r:Ln91$a;

    :goto_3
    iput-object v1, v5, Ln91$b;->a:Ln91$a;

    :cond_c
    iget-boolean v1, v5, Ln91$b;->b:Z

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter decided to block because of "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Ln91$b;->a:Ln91$a;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, v5, Ln91$b;->d:Ljava/lang/String;

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mask matched: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Ln91$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_d
    sget-object v1, Lr71$a;->d:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v5, Ln91$b;->c:Lq71$a;

    invoke-virtual {v1}, Lq71$a;->d()Lq71$a;

    move-result-object v1

    sget-object v6, Lq71$a;->f:Lq71$a;

    if-eq v1, v6, :cond_e

    iput-object v6, v5, Ln91$b;->c:Lq71$a;

    :cond_e
    sget-object v1, Lo91$c;->a:Lo91$c;

    invoke-static {v1}, Lo91;->a(Lo91$c;)V

    invoke-static {v0, v5}, Lz91;->q(Li91;Ln91$b;)V

    invoke-static {}, Lfa1$e;->f()I

    move-result v1

    if-le v1, v4, :cond_f

    invoke-static {}, Lq71$a;->b()Lq71$a;

    move-result-object v1

    iput-object v1, v5, Ln91$b;->c:Lq71$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Forcing "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Ln91$b;->c:Lq71$a;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " blocking mode for the second line calls"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    iget-object v1, v5, Ln91$b;->c:Lq71$a;

    invoke-virtual {v1}, Lq71$a;->d()Lq71$a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kedlin/cca/core/call/Call;->a(Lq71$a;)V

    goto :goto_4

    :cond_10
    const/4 p1, 0x1

    goto :goto_5

    :cond_11
    :goto_4
    const/4 p1, 0x0

    :goto_5
    invoke-static {v0, v5}, Lba1;->b(Li91;Ln91$b;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, v5, Ln91$b;->b:Z

    if-nez v1, :cond_13

    invoke-static {}, Lfa1;->x()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lm91$c;->g:Lm91$c;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Class;

    invoke-static {p0, v1, v6}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    sget-object v1, Lo91$c;->a:Lo91$c;

    invoke-static {v1}, Lo91;->a(Lo91$c;)V

    iget-object v1, p0, Ll71;->d:Landroid/os/Handler;

    if-nez v1, :cond_12

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ll71;->d:Landroid/os/Handler;

    :cond_12
    iget-object v1, p0, Ll71;->d:Landroid/os/Handler;

    new-instance v6, Ll71$a;

    invoke-direct {v6, p0}, Ll71$a;-><init>(Ll71;)V

    const-wide/16 v7, 0x1388

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    new-instance v1, Lm81;

    invoke-direct {v1}, Lm81;-><init>()V

    invoke-virtual {v1, v0}, Lm81;->H(Li91;)Lm81;

    iget-wide v6, v1, Lm81;->d:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_17

    cmp-long v10, v6, v8

    if-lez v10, :cond_16

    iget v6, v1, Lm81;->j:I

    if-eq v6, v4, :cond_14

    iget v6, v1, Lm81;->h:I

    if-lez v6, :cond_15

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    sub-long/2addr v6, v8

    iget-wide v8, v1, Lm81;->l:J

    cmp-long v10, v6, v8

    if-gtz v10, :cond_17

    :cond_15
    iget v6, v1, Lm81;->j:I

    if-nez v6, :cond_16

    iget v6, v1, Lm81;->h:I

    if-nez v6, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xdbba0

    sub-long/2addr v6, v8

    iget-wide v8, v1, Lm81;->l:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_16

    goto :goto_6

    :cond_16
    sget-object v1, Lm91$c;->g:Lm91$c;

    invoke-static {p0, v1, v0}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    goto :goto_7

    :cond_17
    :goto_6
    invoke-static {v0, v5}, Lba1;->a(Li91;Ln91$b;)V

    iput-boolean v4, p0, Ll71;->c:Z

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter decided to pass because of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Ln91$b;->a:Ln91$a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_18
    sput-object v0, Ll71;->f:Li91;

    sput-object v5, Ll71;->g:Ln91$b;

    iget-object v1, v5, Ln91$b;->a:Ln91$a;

    sget-object v4, Ln91$a;->y:Ln91$a;

    if-eq v1, v4, :cond_19

    iget-boolean v1, v5, Ln91$b;->b:Z

    if-eqz v1, :cond_19

    iget-object v1, v5, Ln91$b;->c:Lq71$a;

    invoke-virtual {v1}, Lq71$a;->d()Lq71$a;

    move-result-object v1

    sget-object v4, Lq71$a;->f:Lq71$a;

    if-eq v1, v4, :cond_19

    if-eqz p1, :cond_1a

    :cond_19
    new-instance p1, Lra1;

    invoke-direct {p1}, Lra1;-><init>()V

    iput-object p1, p0, Ll71;->b:Lra1;

    invoke-virtual {p1}, Lra1;->f()V

    invoke-static {v0, v5, v3}, Lra1;->h(Li91;Ln91$b;Z)V

    :cond_1a
    sget-object p1, Lw91$a;->a:Lw91$a;

    invoke-static {p0, p1}, Lw91;->b(Ljava/lang/Object;Lw91$a;)V

    iget-boolean p1, v5, Ln91$b;->b:Z

    if-eqz p1, :cond_1b

    sget-object p1, Lr71$a;->d:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_1b

    sget-object p1, Lw91$a;->d:Lw91$a;

    iget-object v0, v5, Ln91$b;->a:Ln91$a;

    invoke-static {p0, p1, v0}, Lw91;->d(Ljava/lang/Object;Lw91$a;Ln91$a;)V

    :cond_1b
    const-string p1, "Blocking actions performed. Awaiting phone events to complete "

    goto/16 :goto_1

    :cond_1c
    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    invoke-static {}, Lo91;->e()V

    invoke-static {}, Lra1;->d()V

    sget-object p1, Ll71;->f:Li91;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu71;->F(Ljava/lang/String;)V

    iget-boolean p1, p0, Ll71;->c:Z

    if-eqz p1, :cond_1d

    iput-boolean v3, p0, Ll71;->c:Z

    sget-object p1, Ll71;->f:Li91;

    sget-object v0, Lq71$e;->b:Lq71$e;

    invoke-static {p1, v0}, Ln91;->a(Li91;Lq71$e;)Ln91$b;

    move-result-object p1

    sput-object p1, Ll71;->g:Ln91$b;

    :cond_1d
    sget-object p1, Lq71$e;->b:Lq71$e;

    sget-object v0, Ll71;->f:Li91;

    sget-object v3, Ll71;->g:Ln91$b;

    invoke-static {p1, v0, v3}, Lfa1;->D(Lq71$e;Li91;Ln91$b;)V

    :cond_1e
    sput-object v1, Ll71;->f:Li91;

    sput-object v1, Ll71;->g:Ln91$b;

    const-string p1, "Call time until IDLE"

    invoke-static {v2, p1}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    invoke-static {}, Lca1;->a()V

    :goto_8
    return-void
.end method

.method public final o(Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lfa1;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo91;->e()V

    const-string p1, "We are not set as default messaging app, letting message go through anyway"

    :goto_0
    invoke-static {p0, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lfa1$f;->b(Landroid/content/Intent;)Li91;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "We can\'t processing a wrong phone number"

    goto :goto_0

    :cond_1
    sget-object v1, Lr71$a;->d:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "CACHING"

    invoke-static {v1}, Lj91;->C(Ljava/lang/String;)V

    invoke-static {v0}, Lo71;->e(Li91;)Ln91$b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time to check cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    if-nez v2, :cond_3

    sget-object v1, Lq71$e;->c:Lq71$e;

    invoke-static {v0, v1}, Ln91;->a(Li91;Lq71$e;)Ln91$b;

    move-result-object v2

    iget-object v1, v2, Ln91$b;->a:Ln91$a;

    sget-object v3, Ln91$a;->q:Ln91$a;

    if-eq v1, v3, :cond_3

    sget-object v3, Ln91$a;->y:Ln91$a;

    if-eq v1, v3, :cond_3

    const-string v1, "CACHE_SAVE"

    invoke-static {v1}, Lj91;->C(Ljava/lang/String;)V

    iget-object v3, v2, Ln91$b;->a:Ln91$a;

    sget-object v4, Ln91$a;->p:Ln91$a;

    if-ne v3, v4, :cond_2

    const-wide/32 v3, 0x5265c00

    goto :goto_1

    :cond_2
    const-wide/16 v3, -0x1

    :goto_1
    invoke-static {v0, v2, v3, v4}, Lo71;->h(Li91;Ln91$b;J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time to save "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS filtering gave us: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Ln91$b;->a:Ln91$a;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Ln91$b;->b:Z

    if-eqz v3, :cond_4

    const-string v3, "Should block"

    goto :goto_2

    :cond_4
    const-string v3, "Should let in"

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    :cond_5
    new-instance v2, Ln91$b;

    invoke-direct {v2}, Ln91$b;-><init>()V

    :goto_3
    iget-object v1, v2, Ln91$b;->h:Ljava/util/EnumSet;

    sget-object v3, Lq71$e;->c:Lq71$e;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    iput-boolean v1, v2, Ln91$b;->b:Z

    sget-object v1, Ln91$a;->b:Ln91$a;

    iput-object v1, v2, Ln91$b;->a:Ln91$a;

    :cond_6
    invoke-static {}, Lfa1;->u()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, v2, Ln91$b;->b:Z

    if-nez v1, :cond_8

    :cond_7
    invoke-static {v0, v2, v3}, Lz91;->o(Li91;Ln91$b;Lq71$e;)V

    :cond_8
    invoke-static {p1, v2}, Lfa1$f;->c(Landroid/content/Intent;Ln91$b;)V

    iget-boolean p1, v2, Ln91$b;->b:Z

    if-eqz p1, :cond_9

    sget-object p1, Lo91$c;->b:Lo91$c;

    invoke-static {p1}, Lo91;->b(Lo91$c;)V

    invoke-static {v3, v0, v2}, Lfa1;->D(Lq71$e;Li91;Ln91$b;)V

    goto :goto_4

    :cond_9
    invoke-static {}, Lo91;->e()V

    invoke-static {}, Lfa1;->F()V

    :goto_4
    sget-object p1, Lw91$a;->b:Lw91$a;

    invoke-static {p0, p1}, Lw91;->b(Ljava/lang/Object;Lw91$a;)V

    iget-boolean p1, v2, Ln91$b;->b:Z

    if-eqz p1, :cond_a

    sget-object p1, Lw91$a;->f:Lw91$a;

    iget-object v0, v2, Ln91$b;->a:Ln91$a;

    invoke-static {p0, p1, v0}, Lw91;->d(Ljava/lang/Object;Lw91$a;Ln91$a;)V

    :cond_a
    invoke-static {}, Lca1;->a()V

    return-void
.end method
