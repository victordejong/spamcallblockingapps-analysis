.class final Lcom/google/android/gms/measurement/internal/u7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/google/android/gms/internal/measurement/kc;

.field final synthetic g:Lcom/google/android/gms/measurement/internal/k8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k8;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/kc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u7;->g:Lcom/google/android/gms/measurement/internal/k8;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/u7;->d:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/u7;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/u7;->f:Lcom/google/android/gms/internal/measurement/kc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u7;->g:Lcom/google/android/gms/measurement/internal/k8;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/k8;->z(Lcom/google/android/gms/measurement/internal/k8;)Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u7;->g:Lcom/google/android/gms/measurement/internal/k8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u7;->g:Lcom/google/android/gms/measurement/internal/k8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 4
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s4;->G()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u7;->f:Lcom/google/android/gms/internal/measurement/kc;

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/u9;->U(Lcom/google/android/gms/internal/measurement/kc;[B)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u7;->d:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/u7;->e:Ljava/lang/String;

    .line 6
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/f3;->u3(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u7;->g:Lcom/google/android/gms/measurement/internal/k8;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/k8;->A(Lcom/google/android/gms/measurement/internal/k8;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u7;->g:Lcom/google/android/gms/measurement/internal/k8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u7;->g:Lcom/google/android/gms/measurement/internal/k8;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u7;->g:Lcom/google/android/gms/measurement/internal/k8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    goto :goto_0

    .line 11
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u7;->g:Lcom/google/android/gms/measurement/internal/k8;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->G()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/u7;->f:Lcom/google/android/gms/internal/measurement/kc;

    .line 13
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/u9;->U(Lcom/google/android/gms/internal/measurement/kc;[B)V

    .line 14
    throw v1
.end method
