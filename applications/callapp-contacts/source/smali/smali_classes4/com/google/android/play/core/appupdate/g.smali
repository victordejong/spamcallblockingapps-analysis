.class final Lcom/google/android/play/core/appupdate/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/appupdate/c;


# instance fields
.field private final a:Lcom/google/android/play/core/appupdate/r;

.field private final b:Lcom/google/android/play/core/appupdate/e;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/appupdate/r;Lcom/google/android/play/core/appupdate/e;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/g;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/g;->a:Lcom/google/android/play/core/appupdate/r;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/g;->b:Lcom/google/android/play/core/appupdate/e;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/g;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/tasks/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/appupdate/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/g;->a:Lcom/google/android/play/core/appupdate/r;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1000
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/r;->b:Lcom/google/android/play/core/internal/r;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/play/core/appupdate/r;->a()Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lcom/google/android/play/core/appupdate/r;->a:Lcom/google/android/play/core/internal/h;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "requestUpdateInfo(%s)"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/play/core/tasks/p;

    invoke-direct {v2}, Lcom/google/android/play/core/tasks/p;-><init>()V

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/r;->b:Lcom/google/android/play/core/internal/r;

    new-instance v4, Lcom/google/android/play/core/appupdate/m;

    invoke-direct {v4, v0, v2, v1, v2}, Lcom/google/android/play/core/appupdate/m;-><init>(Lcom/google/android/play/core/appupdate/r;Lcom/google/android/play/core/tasks/p;Ljava/lang/String;Lcom/google/android/play/core/tasks/p;)V

    invoke-virtual {v3, v4}, Lcom/google/android/play/core/internal/r;->a(Lcom/google/android/play/core/internal/i;)V

    .line 2000
    iget-object v0, v2, Lcom/google/android/play/core/tasks/p;->a:Lcom/google/android/play/core/tasks/s;

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/google/android/play/core/install/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/g;->b:Lcom/google/android/play/core/appupdate/e;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/a/c;->a(Lcom/google/android/play/core/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/android/play/core/appupdate/a;Landroid/app/Activity;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 4000
    new-instance v0, Lcom/google/android/play/core/appupdate/v;

    invoke-direct {v0}, Lcom/google/android/play/core/appupdate/v;-><init>()V

    const/4 v1, 0x0

    .line 5000
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/play/core/appupdate/v;->a:Ljava/lang/Integer;

    .line 4000
    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/d$a;->a()Lcom/google/android/play/core/appupdate/d$a;

    .line 3000
    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/d$a;->b()Lcom/google/android/play/core/appupdate/d;

    move-result-object v0

    new-instance v2, Lcom/google/android/play/core/appupdate/f;

    invoke-direct {v2, p2}, Lcom/google/android/play/core/appupdate/f;-><init>(Landroid/app/Activity;)V

    .line 7000
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/a;->a(Lcom/google/android/play/core/appupdate/d;)Landroid/app/PendingIntent;

    move-result-object p2

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    return v1

    .line 6000
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/a;->a(Lcom/google/android/play/core/appupdate/d;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    const/16 p2, 0x22b

    invoke-interface {v2, p1, p2}, Lcom/google/android/play/core/common/a;->a(Landroid/content/IntentSender;I)V

    return v3
.end method

.method public final b()Lcom/google/android/play/core/tasks/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/g;->a:Lcom/google/android/play/core/appupdate/r;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 8000
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/r;->b:Lcom/google/android/play/core/internal/r;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/play/core/appupdate/r;->a()Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lcom/google/android/play/core/appupdate/r;->a:Lcom/google/android/play/core/internal/h;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "completeUpdate(%s)"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/play/core/tasks/p;

    invoke-direct {v2}, Lcom/google/android/play/core/tasks/p;-><init>()V

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/r;->b:Lcom/google/android/play/core/internal/r;

    new-instance v4, Lcom/google/android/play/core/appupdate/n;

    invoke-direct {v4, v0, v2, v2, v1}, Lcom/google/android/play/core/appupdate/n;-><init>(Lcom/google/android/play/core/appupdate/r;Lcom/google/android/play/core/tasks/p;Lcom/google/android/play/core/tasks/p;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/android/play/core/internal/r;->a(Lcom/google/android/play/core/internal/i;)V

    .line 9000
    iget-object v0, v2, Lcom/google/android/play/core/tasks/p;->a:Lcom/google/android/play/core/tasks/s;

    return-object v0
.end method
