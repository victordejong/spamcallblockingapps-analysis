.class final synthetic Lcom/google/android/gms/internal/ads/iy1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/ky1;

.field private final e:Lcom/google/android/gms/internal/ads/rj2;

.field private final f:Lcom/google/android/gms/internal/ads/ej2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ky1;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iy1;->d:Lcom/google/android/gms/internal/ads/ky1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/iy1;->e:Lcom/google/android/gms/internal/ads/rj2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/iy1;->f:Lcom/google/android/gms/internal/ads/ej2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iy1;->d:Lcom/google/android/gms/internal/ads/ky1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iy1;->e:Lcom/google/android/gms/internal/ads/rj2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/iy1;->f:Lcom/google/android/gms/internal/ads/ej2;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ky1;->f(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)V

    return-void
.end method
