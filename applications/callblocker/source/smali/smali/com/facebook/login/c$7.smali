.class Lcom/facebook/login/c$7;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/c;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Date;

.field final synthetic c:Ljava/util/Date;

.field final synthetic d:Lcom/facebook/login/c;


# direct methods
.method constructor <init>(Lcom/facebook/login/c;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/facebook/login/c$7;->d:Lcom/facebook/login/c;

    iput-object p2, p0, Lcom/facebook/login/c$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/c$7;->b:Ljava/util/Date;

    iput-object p4, p0, Lcom/facebook/login/c$7;->c:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/n;)V
    .locals 7

    .prologue
    .line 420
    iget-object v0, p0, Lcom/facebook/login/c$7;->d:Lcom/facebook/login/c;

    invoke-static {v0}, Lcom/facebook/login/c;->c(Lcom/facebook/login/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/n;->a()Lcom/facebook/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/facebook/login/c$7;->d:Lcom/facebook/login/c;

    invoke-virtual {p1}, Lcom/facebook/n;->a()Lcom/facebook/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/i;->f()Lcom/facebook/FacebookException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/c;->a(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 433
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/n;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 434
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-static {v0}, Lcom/facebook/internal/x;->b(Lorg/json/JSONObject;)Lcom/facebook/internal/x$b;

    move-result-object v2

    .line 436
    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 441
    iget-object v0, p0, Lcom/facebook/login/c$7;->d:Lcom/facebook/login/c;

    .line 442
    invoke-static {v0}, Lcom/facebook/login/c;->e(Lcom/facebook/login/c;)Lcom/facebook/login/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/c$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Lcom/facebook/b/a/a;->c(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/m;->a(Ljava/lang/String;)Lcom/facebook/internal/l;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Lcom/facebook/internal/l;->f()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v3, Lcom/facebook/internal/w;->c:Lcom/facebook/internal/w;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 448
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/login/c$7;->d:Lcom/facebook/login/c;

    invoke-static {v0}, Lcom/facebook/login/c;->h(Lcom/facebook/login/c;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/facebook/login/c$7;->d:Lcom/facebook/login/c;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/facebook/login/c;->a(Lcom/facebook/login/c;Z)Z

    .line 450
    iget-object v0, p0, Lcom/facebook/login/c$7;->d:Lcom/facebook/login/c;

    iget-object v3, p0, Lcom/facebook/login/c$7;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/login/c$7;->b:Ljava/util/Date;

    iget-object v6, p0, Lcom/facebook/login/c$7;->c:Ljava/util/Date;

    invoke-static/range {v0 .. v6}, Lcom/facebook/login/c;->a(Lcom/facebook/login/c;Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    iget-object v1, p0, Lcom/facebook/login/c$7;->d:Lcom/facebook/login/c;

    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/facebook/login/c;->a(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/c$7;->d:Lcom/facebook/login/c;

    iget-object v3, p0, Lcom/facebook/login/c$7;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/login/c$7;->b:Ljava/util/Date;

    iget-object v5, p0, Lcom/facebook/login/c$7;->c:Ljava/util/Date;

    invoke-static/range {v0 .. v5}, Lcom/facebook/login/c;->a(Lcom/facebook/login/c;Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_0
.end method
