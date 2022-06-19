.class public final Li2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public c:Li2/b;

.field public final synthetic d:Lcom/android/billingclient/api/b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;Li2/b;)V
    .locals 0

    iput-object p1, p0, Li2/m;->d:Lcom/android/billingclient/api/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/m;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Li2/m;->b:Z

    iput-object p2, p0, Li2/m;->c:Li2/b;

    return-void
.end method


# virtual methods
.method public final a(Li2/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li2/m;->c:Li2/b;

    if-eqz v1, :cond_0

    check-cast v1, Lf8/a$e;

    invoke-virtual {v1, p1}, Lf8/a$e;->a(Li2/c;)V

    .line 2
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Li2/m;->d:Lcom/android/billingclient/api/b;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzd;->zzo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zze;

    move-result-object p2

    .line 3
    iput-object p2, p1, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    .line 4
    iget-object v0, p0, Li2/m;->d:Lcom/android/billingclient/api/b;

    new-instance v1, Li2/l;

    invoke-direct {v1, p0}, Li2/l;-><init>(Li2/m;)V

    new-instance v4, Li2/k;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Li2/k;-><init>(Ljava/lang/Object;I)V

    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/b;->f()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v2, 0x7530

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/android/billingclient/api/b;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Li2/m;->d:Lcom/android/billingclient/api/b;

    .line 8
    invoke-virtual {p1}, Lcom/android/billingclient/api/b;->h()Li2/c;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Li2/m;->a(Li2/c;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Li2/m;->d:Lcom/android/billingclient/api/b;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    .line 3
    iget-object p1, p0, Li2/m;->d:Lcom/android/billingclient/api/b;

    const/4 v0, 0x0

    .line 4
    iput v0, p1, Lcom/android/billingclient/api/b;->a:I

    .line 5
    iget-object p1, p0, Li2/m;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Li2/m;->c:Li2/b;

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
