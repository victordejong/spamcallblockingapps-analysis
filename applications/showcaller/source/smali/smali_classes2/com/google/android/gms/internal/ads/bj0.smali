.class final Lcom/google/android/gms/internal/ads/bj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zi0;

.field final synthetic b:Lcom/google/android/gms/internal/ads/xi0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cj0;Lcom/google/android/gms/internal/ads/zi0;Lcom/google/android/gms/internal/ads/xi0;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bj0;->a:Lcom/google/android/gms/internal/ads/zi0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bj0;->b:Lcom/google/android/gms/internal/ads/xi0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bj0;->b:Lcom/google/android/gms/internal/ads/xi0;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/xi0;->zza()V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bj0;->a:Lcom/google/android/gms/internal/ads/zi0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zi0;->a(Ljava/lang/Object;)V

    return-void
.end method
