.class final Lcom/google/android/gms/internal/ads/bz3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Lcom/google/android/gms/internal/ads/dz3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dz3;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bz3;->f:Lcom/google/android/gms/internal/ads/dz3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bz3;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/bz3;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bz3;->f:Lcom/google/android/gms/internal/ads/dz3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dz3;->a(Lcom/google/android/gms/internal/ads/dz3;)Lcom/google/android/gms/internal/ads/lz3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bz3;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/bz3;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/lz3;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bz3;->f:Lcom/google/android/gms/internal/ads/dz3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dz3;->a(Lcom/google/android/gms/internal/ads/dz3;)Lcom/google/android/gms/internal/ads/lz3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bz3;->f:Lcom/google/android/gms/internal/ads/dz3;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dz3;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lz3;->b(Ljava/lang/String;)V

    return-void
.end method
