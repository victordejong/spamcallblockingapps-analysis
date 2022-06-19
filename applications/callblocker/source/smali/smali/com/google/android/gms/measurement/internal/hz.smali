.class final Lcom/google/android/gms/measurement/internal/hz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/kb;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/mj;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/hu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hu;Lcom/google/android/gms/measurement/internal/kb;Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hz;->c:Lcom/google/android/gms/measurement/internal/hu;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/hz;->a:Lcom/google/android/gms/measurement/internal/kb;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/hz;->b:Lcom/google/android/gms/internal/measurement/mj;

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
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hz;->c:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->d(Lcom/google/android/gms/measurement/internal/hu;)Lcom/google/android/gms/measurement/internal/dq;

    move-result-object v0

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hz;->c:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Failed to get app instance id"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hz;->c:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hz;->b:Lcom/google/android/gms/internal/measurement/mj;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;)V

    .line 18
    :goto_0
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hz;->a:Lcom/google/android/gms/measurement/internal/kb;

    invoke-interface {v0, v2}, Lcom/google/android/gms/measurement/internal/dq;->c(Lcom/google/android/gms/measurement/internal/kb;)Ljava/lang/String;

    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hz;->c:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->b()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hz;->c:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->j:Lcom/google/android/gms/measurement/internal/er;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/er;->a(Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hz;->c:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->e(Lcom/google/android/gms/measurement/internal/hu;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hz;->c:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hz;->b:Lcom/google/android/gms/internal/measurement/mj;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hz;->c:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Failed to get app instance id"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hz;->c:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hz;->b:Lcom/google/android/gms/internal/measurement/mj;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hz;->c:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hz;->b:Lcom/google/android/gms/internal/measurement/mj;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;)V

    .line 20
    throw v0
.end method
