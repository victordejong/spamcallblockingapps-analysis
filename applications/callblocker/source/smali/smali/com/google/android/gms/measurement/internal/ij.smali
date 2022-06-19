.class final Lcom/google/android/gms/measurement/internal/ij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/kn;

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/kb;

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/kn;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/hu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hu;ZZLcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;Lcom/google/android/gms/measurement/internal/kn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ij;->f:Lcom/google/android/gms/measurement/internal/hu;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/ij;->a:Z

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/ij;->b:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/ij;->c:Lcom/google/android/gms/measurement/internal/kn;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/ij;->d:Lcom/google/android/gms/measurement/internal/kb;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/ij;->e:Lcom/google/android/gms/measurement/internal/kn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ij;->f:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->d(Lcom/google/android/gms/measurement/internal/hu;)Lcom/google/android/gms/measurement/internal/dq;

    move-result-object v1

    .line 3
    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ij;->f:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Discarding data. Failed to send conditional user property to service"

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 19
    :goto_0
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ij;->a:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ij;->f:Lcom/google/android/gms/measurement/internal/hu;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ij;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ij;->d:Lcom/google/android/gms/measurement/internal/kb;

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/dq;Lcom/google/android/gms/common/internal/safeparcel/a;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 18
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ij;->f:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->e(Lcom/google/android/gms/measurement/internal/hu;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ij;->c:Lcom/google/android/gms/measurement/internal/kn;

    goto :goto_1

    .line 10
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ij;->e:Lcom/google/android/gms/measurement/internal/kn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ij;->c:Lcom/google/android/gms/measurement/internal/kn;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ij;->d:Lcom/google/android/gms/measurement/internal/kb;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/dq;->a(Lcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 14
    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ij;->f:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to send conditional user property to the service"

    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ij;->c:Lcom/google/android/gms/measurement/internal/kn;

    invoke-interface {v1, v0}, Lcom/google/android/gms/measurement/internal/dq;->a(Lcom/google/android/gms/measurement/internal/kn;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
