.class final Lcom/google/android/gms/internal/ads/mz2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/zzfoe;

.field final synthetic e:Lcom/google/android/gms/internal/ads/nz2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nz2;Lcom/google/android/gms/internal/ads/zzfoe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mz2;->e:Lcom/google/android/gms/internal/ads/nz2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mz2;->d:Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mz2;->e:Lcom/google/android/gms/internal/ads/nz2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mz2;->d:Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/nz2;->V(Lcom/google/android/gms/internal/ads/nz2;Lcom/google/android/gms/internal/ads/zzfoe;)V

    return-void
.end method
