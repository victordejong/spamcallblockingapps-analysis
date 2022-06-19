.class final Lcom/google/android/gms/measurement/internal/il;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/kb;

.field private final synthetic d:Lcom/google/android/gms/internal/measurement/mj;

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/hu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hu;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/kb;Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/il;->e:Lcom/google/android/gms/measurement/internal/hu;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/il;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/il;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/il;->c:Lcom/google/android/gms/measurement/internal/kb;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/il;->d:Lcom/google/android/gms/internal/measurement/mj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/il;->e:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->d(Lcom/google/android/gms/measurement/internal/hu;)Lcom/google/android/gms/measurement/internal/dq;

    move-result-object v0

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/il;->e:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Failed to get conditional properties; not connected to service"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/il;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/il;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/il;->e:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/il;->d:Lcom/google/android/gms/internal/measurement/mj;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/util/ArrayList;)V

    .line 21
    :goto_0
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/il;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/il;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/il;->c:Lcom/google/android/gms/measurement/internal/kb;

    .line 11
    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/dq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/kb;)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/il;->e:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->e(Lcom/google/android/gms/measurement/internal/hu;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/il;->e:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/il;->d:Lcom/google/android/gms/internal/measurement/mj;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/il;->e:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Failed to get conditional properties; remote exception"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/il;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/il;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/il;->e:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/il;->d:Lcom/google/android/gms/internal/measurement/mj;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/il;->e:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/il;->d:Lcom/google/android/gms/internal/measurement/mj;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/util/ArrayList;)V

    .line 23
    throw v0
.end method
