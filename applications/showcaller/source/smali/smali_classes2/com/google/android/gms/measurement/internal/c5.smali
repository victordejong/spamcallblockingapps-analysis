.class final Lcom/google/android/gms/measurement/internal/c5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/l5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l5;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c5;->e:Lcom/google/android/gms/measurement/internal/l5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->e:Lcom/google/android/gms/measurement/internal/l5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/l5;->a3(Lcom/google/android/gms/measurement/internal/l5;)Lcom/google/android/gms/measurement/internal/o9;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->e:Lcom/google/android/gms/measurement/internal/l5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/l5;->a3(Lcom/google/android/gms/measurement/internal/l5;)Lcom/google/android/gms/measurement/internal/o9;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/zzp;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    .line 8
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/f;->c(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    .line 10
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/o9;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    const-string v6, "Setting consent, package, consent"

    .line 13
    invoke-virtual {v4, v6, v5, v2}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/measurement/internal/o9;->f0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)V

    .line 16
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/f;->i(Lcom/google/android/gms/measurement/internal/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/o9;->m(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void
.end method
