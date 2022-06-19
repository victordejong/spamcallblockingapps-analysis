.class final Lcom/google/android/gms/common/api/internal/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic b:Lcom/google/android/gms/common/api/internal/ai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ai;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ah;->b:Lcom/google/android/gms/common/api/internal/ai;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ah;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->b:Lcom/google/android/gms/common/api/internal/ai;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ai;->d:Lcom/google/android/gms/common/api/internal/f;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/f;->l(Lcom/google/android/gms/common/api/internal/f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->b:Lcom/google/android/gms/common/api/internal/ai;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ai;->b:Lcom/google/android/gms/common/api/internal/b;

    .line 1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/af;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->a:Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->b:Lcom/google/android/gms/common/api/internal/ai;

    const/4 v3, 0x1

    .line 2000
    iput-boolean v3, v1, Lcom/google/android/gms/common/api/internal/ai;->c:Z

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->b:Lcom/google/android/gms/common/api/internal/ai;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ai;->a:Lcom/google/android/gms/common/api/a$f;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->b:Lcom/google/android/gms/common/api/internal/ai;

    .line 4000
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ai;->a()V

    return-void

    .line 5
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->b:Lcom/google/android/gms/common/api/internal/ai;

    .line 5000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ai;->a:Lcom/google/android/gms/common/api/a$f;

    .line 5
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/ah;->b:Lcom/google/android/gms/common/api/internal/ai;

    .line 6000
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/ai;->a:Lcom/google/android/gms/common/api/a$f;

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->a()Ljava/util/Set;

    move-result-object v3

    .line 7
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/common/api/a$f;->getRemoteService(Lcom/google/android/gms/common/internal/i;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "GoogleApiManager"

    const-string v4, "Failed to get service from broker. "

    .line 8
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->b:Lcom/google/android/gms/common/api/internal/ai;

    .line 7000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ai;->a:Lcom/google/android/gms/common/api/a$f;

    const-string v3, "Failed to get service from broker."

    .line 9
    invoke-interface {v1, v3}, Lcom/google/android/gms/common/api/a$f;->disconnect(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0xa

    .line 10
    invoke-direct {v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/af;->a(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->a:Lcom/google/android/gms/common/ConnectionResult;

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/af;->a(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void
.end method
