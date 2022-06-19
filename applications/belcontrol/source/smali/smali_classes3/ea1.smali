.class public Lea1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z

.field public b:Li91;

.field public c:I

.field public d:Li91$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lea1;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lea1;->b:Li91;

    const/4 v0, 0x4

    iput v0, p0, Lea1;->c:I

    sget-object v0, Li91$b;->b:Li91$b;

    iput-object v0, p0, Lea1;->d:Li91$b;

    return-void
.end method


# virtual methods
.method public a(Li91;)Z
    .locals 4

    iget-object v0, p0, Lea1;->b:Li91;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lea1;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\D+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lea1;->b:Li91;

    iget-object v3, p0, Lea1;->d:Li91$b;

    invoke-virtual {v2, v3}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lea1;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lea1;->b:Li91;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "number"

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p1

    invoke-virtual {p0, p1}, Lea1;->d(Li91;)V

    const-string p1, "maskDigits"

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lea1;->c:I

    iget-object p1, p0, Lea1;->b:Li91;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Li91;->s()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lea1;->b:Li91;

    invoke-virtual {p1}, Li91;->q()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lea1;->b:Li91;

    invoke-virtual {p1}, Li91;->n()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lea1;->b:Li91;

    invoke-virtual {p1}, Li91;->o()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lea1;->b:Li91;

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v2, p0, Lea1;->c:I

    if-gt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "isEnabled"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lea1;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v0, "Error reloading option"

    invoke-static {p0, v0, p1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lea1;->b:Li91;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lea1;->d:Li91$b;

    invoke-virtual {v0, v1}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Li91;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lea1;->b:Li91;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Li91;->s()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lea1;->b:Li91;

    invoke-virtual {p1}, Li91;->q()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lea1;->b:Li91;

    invoke-virtual {p1}, Li91;->n()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lea1;->b:Li91;

    invoke-virtual {p1}, Li91;->o()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lea1;->b:Li91;

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v1, p0, Lea1;->c:I

    if-gt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lea1;->b:Li91;

    invoke-virtual {p1}, Li91;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lea1;->b:Li91;

    invoke-virtual {p1}, Li91;->r()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Li91$b;->c:Li91$b;

    iput-object p1, p0, Lea1;->d:Li91$b;

    goto :goto_0

    :cond_1
    sget-object p1, Li91$b;->g:Li91$b;

    iput-object p1, p0, Lea1;->d:Li91$b;

    iget-object p1, p0, Lea1;->b:Li91;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lea1;->b:Li91;

    invoke-virtual {v2}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lea1;->b:Li91;

    invoke-virtual {v3}, Li91;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lea1;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Li91;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :try_start_1
    iput-object p1, p0, Lea1;->b:Li91;

    sget-object p1, Li91$b;->b:Li91$b;

    iput-object p1, p0, Lea1;->d:Li91$b;

    iput-boolean v0, p0, Lea1;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lea1;->b:Li91;

    if-eqz v1, :cond_0

    const-string v2, "number"

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "maskDigits"

    iget v2, p0, Lea1;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "isEnabled"

    iget-boolean v2, p0, Lea1;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    :try_start_1
    const-string v0, "Error saving option"

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
