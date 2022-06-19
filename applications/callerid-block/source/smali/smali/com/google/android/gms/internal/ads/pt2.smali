.class final Lcom/google/android/gms/internal/ads/pt2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/c1;

.field private final c:Lcom/google/android/gms/internal/ads/v6;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/c1;Lcom/google/android/gms/internal/ads/v6;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pt2;->b:Lcom/google/android/gms/internal/ads/c1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pt2;->c:Lcom/google/android/gms/internal/ads/v6;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pt2;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pt2;->b:Lcom/google/android/gms/internal/ads/c1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c1;->q()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pt2;->c:Lcom/google/android/gms/internal/ads/v6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/v6;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pt2;->b:Lcom/google/android/gms/internal/ads/c1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pt2;->c:Lcom/google/android/gms/internal/ads/v6;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/v6;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c1;->x(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pt2;->b:Lcom/google/android/gms/internal/ads/c1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pt2;->c:Lcom/google/android/gms/internal/ads/v6;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/v6;->c:Lcom/google/android/gms/internal/ads/zzal;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c1;->y(Lcom/google/android/gms/internal/ads/zzal;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pt2;->c:Lcom/google/android/gms/internal/ads/v6;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/v6;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pt2;->b:Lcom/google/android/gms/internal/ads/c1;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c1;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pt2;->b:Lcom/google/android/gms/internal/ads/c1;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c1;->h(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pt2;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
