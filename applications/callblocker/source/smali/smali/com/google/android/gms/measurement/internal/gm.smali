.class final synthetic Lcom/google/android/gms/measurement/internal/gm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/gk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gm;->a:Lcom/google/android/gms/measurement/internal/gk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gm;->a:Lcom/google/android/gms/measurement/internal/gk;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->t:Lcom/google/android/gms/measurement/internal/en;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/en;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Deferred Deep Link already retrieved. Not fetching again."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 15
    :goto_0
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->u:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->u:Lcom/google/android/gms/measurement/internal/ep;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 8
    const-wide/16 v4, 0x5

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->t:Lcom/google/android/gms/measurement/internal/en;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/en;->a(Z)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->H()V

    goto :goto_0
.end method
