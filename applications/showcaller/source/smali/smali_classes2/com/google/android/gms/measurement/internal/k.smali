.class final Lcom/google/android/gms/measurement/internal/k;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/measurement/internal/o5;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l;Lcom/google/android/gms/measurement/internal/o5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/l;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/k;->d:Lcom/google/android/gms/measurement/internal/o5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->d:Lcom/google/android/gms/measurement/internal/o5;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/o5;->c()Lcom/google/android/gms/measurement/internal/ka;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/ka;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->d:Lcom/google/android/gms/measurement/internal/o5;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/o5;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/p4;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/l;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/l;

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/l;->e(Lcom/google/android/gms/measurement/internal/l;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/l;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l;->a()V

    :cond_1
    return-void
.end method
