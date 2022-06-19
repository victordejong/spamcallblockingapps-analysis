.class final Lcom/google/android/gms/measurement/internal/ie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/r;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/internal/measurement/mj;

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/hu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hu;Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/hu;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ie;->a:Lcom/google/android/gms/measurement/internal/r;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/ie;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/ie;->c:Lcom/google/android/gms/internal/measurement/mj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->d(Lcom/google/android/gms/measurement/internal/hu;)Lcom/google/android/gms/measurement/internal/dq;

    move-result-object v0

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Discarding data. Failed to send event to service to bundle"

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ie;->c:Lcom/google/android/gms/internal/measurement/mj;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;[B)V

    .line 17
    :goto_0
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ie;->a:Lcom/google/android/gms/measurement/internal/r;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ie;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/dq;->a(Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)[B

    move-result-object v1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->e(Lcom/google/android/gms/measurement/internal/hu;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ie;->c:Lcom/google/android/gms/internal/measurement/mj;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;[B)V

    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ie;->c:Lcom/google/android/gms/internal/measurement/mj;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;[B)V

    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ie;->c:Lcom/google/android/gms/internal/measurement/mj;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;[B)V

    .line 19
    throw v0
.end method
