.class final Lcom/google/android/gms/common/api/internal/ae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/b;

.field private final synthetic b:Lcom/google/android/gms/common/api/internal/f$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/f$b;Lcom/google/android/gms/common/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ae;->b:Lcom/google/android/gms/common/api/internal/f$b;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ae;->a:Lcom/google/android/gms/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ae;->b:Lcom/google/android/gms/common/api/internal/f$b;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/f$b;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/f;->j(Lcom/google/android/gms/common/api/internal/f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ae;->b:Lcom/google/android/gms/common/api/internal/f$b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/f$b;->a(Lcom/google/android/gms/common/api/internal/f$b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/f$a;

    .line 3
    if-nez v0, :cond_0

    .line 18
    :goto_0
    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ae;->a:Lcom/google/android/gms/common/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ae;->b:Lcom/google/android/gms/common/api/internal/f$b;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/f$b;->a(Lcom/google/android/gms/common/api/internal/f$b;Z)Z

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ae;->b:Lcom/google/android/gms/common/api/internal/f$b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/f$b;->b(Lcom/google/android/gms/common/api/internal/f$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ae;->b:Lcom/google/android/gms/common/api/internal/f$b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/f$b;->c(Lcom/google/android/gms/common/api/internal/f$b;)V

    goto :goto_0

    .line 9
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ae;->b:Lcom/google/android/gms/common/api/internal/f$b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/f$b;->b(Lcom/google/android/gms/common/api/internal/f$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/ae;->b:Lcom/google/android/gms/common/api/internal/f$b;

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/f$b;->b(Lcom/google/android/gms/common/api/internal/f$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->l()Ljava/util/Set;

    move-result-object v3

    .line 11
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/l;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    const-string/jumbo v2, "GoogleApiManager"

    const-string/jumbo v3, "Failed to get service from broker. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    new-instance v1, Lcom/google/android/gms/common/b;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/b;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/f$a;->b(Lcom/google/android/gms/common/b;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ae;->a:Lcom/google/android/gms/common/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/f$a;->b(Lcom/google/android/gms/common/b;)V

    goto :goto_0
.end method
