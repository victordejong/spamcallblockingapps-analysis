.class public final Lkj0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkj0;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lkj0$a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lkj0;->a()Lkj0$b;

    move-result-object v0

    invoke-virtual {v0}, Lkj0$b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lnm0;->o(Ljava/lang/String;Z)Lmm0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmm0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzl0;->h(Landroid/content/Context;)Lzl0;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzl0;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lzl0;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lzl0;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "advertiser_id"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fields"

    const-string v4, "auto_event_setup_enabled"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v2}, Lcom/facebook/GraphRequest;->J(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$e;)Lcom/facebook/GraphRequest;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequest;->a0(Z)V

    invoke-virtual {v0, v3}, Lcom/facebook/GraphRequest;->Z(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->g()Laj0;

    move-result-object v0

    invoke-virtual {v0}, Laj0;->h()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lkj0;->b()Lkj0$b;

    move-result-object v2

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lkj0$b;->b:Ljava/lang/Boolean;

    invoke-static {}, Lkj0;->b()Lkj0$b;

    move-result-object v0

    iget-wide v2, p0, Lkj0$a;->a:J

    iput-wide v2, v0, Lkj0$b;->d:J

    invoke-static {}, Lkj0;->b()Lkj0$b;

    move-result-object v0

    invoke-static {v0}, Lkj0;->c(Lkj0$b;)V

    :cond_1
    invoke-static {}, Lkj0;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
