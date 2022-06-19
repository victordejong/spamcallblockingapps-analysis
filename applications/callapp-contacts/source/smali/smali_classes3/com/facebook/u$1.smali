.class final Lcom/facebook/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/u;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 151
    iput-wide p1, p0, Lcom/facebook/u$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "auto_event_setup_enabled"

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 154
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/u;->f()Lcom/facebook/u$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/u$a;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 157
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v1, v2}, Lcom/facebook/internal/q;->a(Ljava/lang/String;Z)Lcom/facebook/internal/p;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1045
    iget-boolean v1, v1, Lcom/facebook/internal/p;->g:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 160
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v3

    .line 162
    invoke-static {v3}, Lcom/facebook/internal/b;->b(Landroid/content/Context;)Lcom/facebook/internal/b;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {v3}, Lcom/facebook/internal/b;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 164
    invoke-virtual {v3}, Lcom/facebook/internal/b;->a()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 167
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "advertiser_id"

    .line 169
    invoke-virtual {v3}, Lcom/facebook/internal/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "fields"

    .line 170
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {v3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v3

    const/4 v4, 0x1

    .line 1731
    iput-boolean v4, v3, Lcom/facebook/GraphRequest;->h:Z

    .line 1749
    iput-object v1, v3, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    .line 1962
    invoke-static {v3}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v1

    .line 2121
    iget-object v1, v1, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 179
    invoke-static {}, Lcom/facebook/u;->g()Lcom/facebook/u$a;

    move-result-object v3

    .line 180
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/u$a;->b:Ljava/lang/Boolean;

    .line 181
    invoke-static {}, Lcom/facebook/u;->g()Lcom/facebook/u$a;

    move-result-object v0

    iget-wide v3, p0, Lcom/facebook/u$1;->a:J

    iput-wide v3, v0, Lcom/facebook/u$a;->d:J

    .line 182
    invoke-static {}, Lcom/facebook/u;->g()Lcom/facebook/u$a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/u;->a(Lcom/facebook/u$a;)V

    .line 187
    :cond_2
    invoke-static {}, Lcom/facebook/u;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 188
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
