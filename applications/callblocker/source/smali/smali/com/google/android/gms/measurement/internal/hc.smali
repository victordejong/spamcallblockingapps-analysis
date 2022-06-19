.class final Lcom/google/android/gms/measurement/internal/hc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/gk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gk;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/gk;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/hc;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->A()Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/hc;->a:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/fd;->a(Z)V

    .line 5
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/hc;->a:Z

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Default data collection state already set to"

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/hc;->a:Z

    .line 9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->A()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Default data collection is different than actual status"

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/hc;->a:Z

    .line 15
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 17
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/gk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/gk;->a(Lcom/google/android/gms/measurement/internal/gk;)V

    .line 19
    return-void
.end method
