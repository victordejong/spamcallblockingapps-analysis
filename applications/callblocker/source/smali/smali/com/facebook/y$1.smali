.class final Lcom/facebook/y$1;
.super Ljava/lang/Object;
.source "UserSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/y;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/facebook/y$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 154
    invoke-static {}, Lcom/facebook/y;->g()Lcom/facebook/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/y$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/internal/m;->a(Ljava/lang/String;Z)Lcom/facebook/internal/l;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/internal/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcom/facebook/internal/a;->b(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v2

    .line 162
    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v2}, Lcom/facebook/internal/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v2}, Lcom/facebook/internal/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string/jumbo v3, "advertiser_id"

    .line 169
    invoke-virtual {v2}, Lcom/facebook/internal/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v2, "fields"

    const-string/jumbo v3, "auto_event_setup_enabled"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v1, v2, v1}, Lcom/facebook/k;->a(Lcom/facebook/a;Ljava/lang/String;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v1

    .line 174
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/k;->a(Z)V

    .line 175
    invoke-virtual {v1, v0}, Lcom/facebook/k;->a(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {v1}, Lcom/facebook/k;->i()Lcom/facebook/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/n;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/facebook/y;->h()Lcom/facebook/y$a;

    move-result-object v1

    const-string/jumbo v2, "auto_event_setup_enabled"

    .line 179
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/y$a;->b:Ljava/lang/Boolean;

    .line 180
    invoke-static {}, Lcom/facebook/y;->h()Lcom/facebook/y$a;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/y$1;->a:J

    iput-wide v2, v0, Lcom/facebook/y$a;->d:J

    .line 181
    invoke-static {}, Lcom/facebook/y;->h()Lcom/facebook/y$a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/y;->a(Lcom/facebook/y$a;)V

    .line 186
    :cond_0
    invoke-static {}, Lcom/facebook/y;->i()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
