.class public final Lcom/google/android/gms/common/internal/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/d;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bd;->a:Lcom/google/android/gms/common/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/bd;->b:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/bd;->a:Lcom/google/android/gms/common/internal/d;

    const/16 p2, 0x10

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/d;->zzc(Lcom/google/android/gms/common/internal/d;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/bd;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->zzd(Lcom/google/android/gms/common/internal/d;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/bd;->a:Lcom/google/android/gms/common/internal/d;

    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 2
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 3
    instance-of v2, v1, Lcom/google/android/gms/common/internal/l;

    if-eqz v2, :cond_1

    .line 5
    :try_start_1
    check-cast v1, Lcom/google/android/gms/common/internal/l;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lcom/google/android/gms/common/internal/as;

    .line 4
    invoke-direct {v1, p2}, Lcom/google/android/gms/common/internal/as;-><init>(Landroid/os/IBinder;)V

    .line 6
    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/d;->zze(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/internal/l;)Lcom/google/android/gms/common/internal/l;

    .line 7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/bd;->a:Lcom/google/android/gms/common/internal/d;

    const/4 p2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/internal/bd;->b:I

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/common/internal/d;->zzb(ILandroid/os/Bundle;I)V

    return-void

    :catchall_0
    move-exception p2

    .line 7
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/common/internal/bd;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->zzd(Lcom/google/android/gms/common/internal/d;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/bd;->a:Lcom/google/android/gms/common/internal/d;

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/d;->zze(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/internal/l;)Lcom/google/android/gms/common/internal/l;

    .line 2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/bd;->a:Lcom/google/android/gms/common/internal/d;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/d;->zzb:Landroid/os/Handler;

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/common/internal/bd;->b:I

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
