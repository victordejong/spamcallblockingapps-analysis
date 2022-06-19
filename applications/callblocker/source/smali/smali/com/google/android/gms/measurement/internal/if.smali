.class final Lcom/google/android/gms/measurement/internal/if;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/r;

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/kb;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/hu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hu;ZZLcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/if;->f:Lcom/google/android/gms/measurement/internal/hu;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/if;->a:Z

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/if;->b:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/if;->c:Lcom/google/android/gms/measurement/internal/r;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/if;->d:Lcom/google/android/gms/measurement/internal/kb;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/if;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/if;->f:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->d(Lcom/google/android/gms/measurement/internal/hu;)Lcom/google/android/gms/measurement/internal/dq;

    move-result-object v1

    .line 3
    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/if;->f:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 15
    :goto_0
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/if;->a:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/if;->f:Lcom/google/android/gms/measurement/internal/hu;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/if;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/if;->d:Lcom/google/android/gms/measurement/internal/kb;

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/dq;Lcom/google/android/gms/common/internal/safeparcel/a;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 14
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/if;->f:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->e(Lcom/google/android/gms/measurement/internal/hu;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/if;->c:Lcom/google/android/gms/measurement/internal/r;

    goto :goto_1

    .line 8
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/if;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/if;->c:Lcom/google/android/gms/measurement/internal/r;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/if;->d:Lcom/google/android/gms/measurement/internal/kb;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/dq;->a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 12
    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/if;->f:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to send event to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/if;->c:Lcom/google/android/gms/measurement/internal/r;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/if;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/if;->f:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/dq;->a(Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
