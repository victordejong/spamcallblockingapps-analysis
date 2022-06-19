.class public Lcom/android/billingclient/api/b;
.super Lcom/android/billingclient/api/a;
.source "SourceFile"


# instance fields
.field public volatile a:I

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/Handler;

.field public volatile d:Landroidx/appcompat/widget/z;

.field public e:Landroid/content/Context;

.field public volatile f:Lcom/google/android/gms/internal/play_billing/zze;

.field public volatile g:Li2/m;

.field public h:Z

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(ZLandroid/content/Context;Ls2/c;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/b;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/billingclient/api/a;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/billingclient/api/b;->a:I

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/billingclient/api/b;->c:Landroid/os/Handler;

    iput v1, p0, Lcom/android/billingclient/api/b;->i:I

    iput-object v0, p0, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    new-instance v0, Landroidx/appcompat/widget/z;

    .line 4
    invoke-direct {v0, p2, p3}, Landroidx/appcompat/widget/z;-><init>(Landroid/content/Context;Ls2/c;)V

    iput-object v0, p0, Lcom/android/billingclient/api/b;->d:Landroidx/appcompat/widget/z;

    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->q:Z

    iput-boolean v1, p0, Lcom/android/billingclient/api/b;->r:Z

    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.android.billingclient.ktx.BuildConfig"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "VERSION_NAME"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "4.1.0"

    return-object v0
.end method


# virtual methods
.method public final a(Li2/d;Li2/e;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Li2/n;->l:Li2/c;

    .line 3
    iget-object p1, p1, Li2/d;->a:Ljava/lang/String;

    .line 4
    invoke-interface {p2, v0, p1}, Li2/e;->a(Li2/c;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Li2/u;

    invoke-direct {v2, p0, p1, p2}, Li2/u;-><init>(Lcom/android/billingclient/api/b;Li2/d;Li2/e;)V

    new-instance v5, Li2/y;

    const/4 v0, 0x0

    invoke-direct {v5, p2, p1, v0}, Li2/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v3, 0x7530

    .line 5
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->f()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p0

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/b;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Li2/c;

    move-result-object v0

    .line 8
    iget-object p1, p1, Li2/d;->a:Ljava/lang/String;

    .line 9
    invoke-interface {p2, v0, p1}, Li2/e;->a(Li2/c;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x3

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/b;->d:Landroidx/appcompat/widget/z;

    invoke-virtual {v1}, Landroidx/appcompat/widget/z;->c()V

    iget-object v1, p0, Lcom/android/billingclient/api/b;->g:Li2/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/billingclient/api/b;->g:Li2/m;

    .line 2
    iget-object v3, v1, Li2/m;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v2, v1, Li2/m;->c:Li2/b;

    const/4 v4, 0x1

    iput-boolean v4, v1, Li2/m;->b:Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/billingclient/api/b;->g:Li2/m;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    if-eqz v1, :cond_1

    const-string v1, "BillingClient"

    const-string v3, "Unbinding from service."

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/b;->g:Li2/m;

    .line 5
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/android/billingclient/api/b;->g:Li2/m;

    :cond_1
    iput-object v2, p0, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    iget-object v1, p0, Lcom/android/billingclient/api/b;->s:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lcom/android/billingclient/api/b;->s:Ljava/util/concurrent/ExecutorService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    iput v0, p0, Lcom/android/billingclient/api/b;->a:I

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :goto_1
    :try_start_3
    const-string v2, "BillingClient"

    const-string v3, "There was an exception while ending connection!"

    .line 7
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8
    iput v0, p0, Lcom/android/billingclient/api/b;->a:I

    return-void

    .line 9
    :goto_2
    iput v0, p0, Lcom/android/billingclient/api/b;->a:I

    .line 10
    throw v1
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/android/billingclient/api/b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Li2/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/String;Li2/g;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Li2/n;->l:Li2/c;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzh()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object v0

    .line 4
    invoke-interface {p2, p1, v0}, Li2/g;->b(Li2/c;Ljava/util/List;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid product type."

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Li2/n;->g:Li2/c;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzh()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object v0

    .line 9
    invoke-interface {p2, p1, v0}, Li2/g;->b(Li2/c;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance v2, Lcom/android/billingclient/api/e;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/billingclient/api/e;-><init>(Lcom/android/billingclient/api/b;Ljava/lang/String;Li2/g;)V

    new-instance v5, Li2/k;

    const/4 p1, 0x1

    invoke-direct {v5, p2, p1}, Li2/k;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v3, 0x7530

    .line 10
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->f()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p0

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/b;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Li2/c;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzh()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object v0

    .line 13
    invoke-interface {p2, p1, v0}, Li2/g;->b(Li2/c;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final e(Li2/h;Li2/i;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Li2/n;->l:Li2/c;

    invoke-interface {p2, p1, v1}, Li2/i;->e(Li2/c;Ljava/util/List;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Li2/h;->a:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Li2/h;->b:Ljava/util/List;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "BillingClient"

    if-nez v2, :cond_5

    if-eqz p1, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    new-instance v4, Li2/p;

    invoke-direct {v4, v3}, Li2/p;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SKU must be set."

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance v3, Li2/x;

    invoke-direct {v3, p0, v0, v2, p2}, Li2/x;-><init>(Lcom/android/billingclient/api/b;Ljava/lang/String;Ljava/util/List;Li2/i;)V

    new-instance v6, Li2/z;

    const/4 p1, 0x0

    invoke-direct {v6, p2, p1}, Li2/z;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v4, 0x7530

    .line 14
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->f()Landroid/os/Handler;

    move-result-object v7

    move-object v2, p0

    .line 15
    invoke-virtual/range {v2 .. v7}, Lcom/android/billingclient/api/b;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Li2/c;

    move-result-object p1

    .line 17
    invoke-interface {p2, p1, v1}, Li2/i;->e(Li2/c;Ljava/util/List;)V

    :cond_3
    return-void

    :cond_4
    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty - set SKU list or SkuWithOffer list."

    .line 18
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object p1, Li2/n;->e:Li2/c;

    invoke-interface {p2, p1, v1}, Li2/i;->e(Li2/c;Ljava/util/List;)V

    return-void

    :cond_5
    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    .line 20
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object p1, Li2/n;->f:Li2/c;

    invoke-interface {p2, p1, v1}, Li2/i;->e(Li2/c;Ljava/util/List;)V

    return-void
.end method

.method public final f()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/b;->c:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    return-object v0
.end method

.method public final g(Li2/c;)Li2/c;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->c:Landroid/os/Handler;

    new-instance v1, Li2/w;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Li2/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method public final h()Li2/c;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/b;->a:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/billingclient/api/b;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Li2/n;->j:Li2/c;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Li2/n;->l:Li2/c;

    :goto_1
    return-object v0
.end method

.method public final j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 2

    long-to-double p2, p2

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double p2, p2, v0

    double-to-long p2, p2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->s:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/play_billing/zzb;->zza:I

    new-instance v1, Li2/j;

    invoke-direct {v1, p0}, Li2/j;-><init>(Lcom/android/billingclient/api/b;)V

    .line 2
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/b;->s:Ljava/util/concurrent/ExecutorService;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->s:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Li2/w;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p4, v1}, Li2/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {p5, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Async task throws exception!"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
