.class Lcom/facebook/login/c$4;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/c;->av()Lcom/facebook/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/c;


# direct methods
.method constructor <init>(Lcom/facebook/login/c;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/n;)V
    .locals 6

    .prologue
    .line 301
    iget-object v0, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    invoke-static {v0}, Lcom/facebook/login/c;->c(Lcom/facebook/login/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/n;->a()Lcom/facebook/i;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_3

    .line 309
    invoke-virtual {v0}, Lcom/facebook/i;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 330
    iget-object v0, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    invoke-virtual {p1}, Lcom/facebook/n;->a()Lcom/facebook/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/i;->f()Lcom/facebook/FacebookException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/c;->a(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 313
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    invoke-static {v0}, Lcom/facebook/login/c;->d(Lcom/facebook/login/c;)V

    goto :goto_0

    .line 316
    :sswitch_1
    iget-object v0, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    invoke-static {v0}, Lcom/facebook/login/c;->e(Lcom/facebook/login/c;)Lcom/facebook/login/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    .line 318
    invoke-static {v0}, Lcom/facebook/login/c;->e(Lcom/facebook/login/c;)Lcom/facebook/login/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/c$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Lcom/facebook/b/a/a;->c(Ljava/lang/String;)V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    invoke-static {v0}, Lcom/facebook/login/c;->f(Lcom/facebook/login/c;)Lcom/facebook/login/j$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    iget-object v1, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    invoke-static {v1}, Lcom/facebook/login/c;->f(Lcom/facebook/login/c;)Lcom/facebook/login/j$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/c;->a(Lcom/facebook/login/j$c;)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    invoke-virtual {v0}, Lcom/facebook/login/c;->as()V

    goto :goto_0

    .line 327
    :sswitch_2
    iget-object v0, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    invoke-virtual {v0}, Lcom/facebook/login/c;->as()V

    goto :goto_0

    .line 338
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/n;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    const-string/jumbo v2, "access_token"

    .line 340
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "expires_in"

    .line 341
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "data_access_expiration_time"

    .line 342
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 339
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/login/c;->a(Lcom/facebook/login/c;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    iget-object v1, p0, Lcom/facebook/login/c$4;->a:Lcom/facebook/login/c;

    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/facebook/login/c;->a(Lcom/facebook/FacebookException;)V

    goto/16 :goto_0

    .line 309
    nop

    :sswitch_data_0
    .sparse-switch
        0x149620 -> :sswitch_1
        0x149634 -> :sswitch_0
        0x149635 -> :sswitch_2
        0x149636 -> :sswitch_0
    .end sparse-switch
.end method
