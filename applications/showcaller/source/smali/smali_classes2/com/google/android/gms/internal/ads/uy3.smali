.class final Lcom/google/android/gms/internal/ads/uy3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/dz3;

.field private final e:Lcom/google/android/gms/internal/ads/jz3;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dz3;Lcom/google/android/gms/internal/ads/jz3;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uy3;->d:Lcom/google/android/gms/internal/ads/dz3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uy3;->e:Lcom/google/android/gms/internal/ads/jz3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/uy3;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uy3;->d:Lcom/google/android/gms/internal/ads/dz3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dz3;->o()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uy3;->e:Lcom/google/android/gms/internal/ads/jz3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jz3;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uy3;->d:Lcom/google/android/gms/internal/ads/dz3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uy3;->e:Lcom/google/android/gms/internal/ads/jz3;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/jz3;->a:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dz3;->v(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uy3;->d:Lcom/google/android/gms/internal/ads/dz3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uy3;->e:Lcom/google/android/gms/internal/ads/jz3;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/jz3;->c:Lcom/google/android/gms/internal/ads/zzwl;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dz3;->w(Lcom/google/android/gms/internal/ads/zzwl;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uy3;->e:Lcom/google/android/gms/internal/ads/jz3;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/jz3;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uy3;->d:Lcom/google/android/gms/internal/ads/dz3;

    const-string v1, "intermediate-response"

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dz3;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uy3;->d:Lcom/google/android/gms/internal/ads/dz3;

    const-string v1, "done"

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dz3;->g(Ljava/lang/String;)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uy3;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
