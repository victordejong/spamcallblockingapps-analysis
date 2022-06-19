.class final Lcom/google/android/gms/measurement/internal/ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/ik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ik;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ia;->e:Lcom/google/android/gms/measurement/internal/ik;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ia;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/ia;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/ia;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/ia;->d:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ia;->a:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ia;->e:Lcom/google/android/gms/measurement/internal/ik;

    .line 1000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ik;->b:Lcom/google/android/gms/measurement/internal/df;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ia;->e:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "(legacy) Failed to get conditional properties; not connected to service"

    .line 10
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ia;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/ia;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ia;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ia;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 1
    :cond_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ia;->d:Lcom/google/android/gms/measurement/internal/zzp;

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ia;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ia;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/ia;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/ia;->d:Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/df;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ia;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ia;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/ia;->c:Ljava/lang/String;

    .line 5
    invoke-interface {v2, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/df;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ia;->e:Lcom/google/android/gms/measurement/internal/ik;

    .line 2001
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ik;->i()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ia;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 6
    :try_start_4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ia;->e:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 3000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "(legacy) Failed to get conditional properties; remote exception"

    .line 14
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/ia;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ia;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ia;->a:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_1

    .line 18
    :goto_2
    monitor-exit v0

    return-void

    .line 8
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ia;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 17
    throw v1

    :catchall_1
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
