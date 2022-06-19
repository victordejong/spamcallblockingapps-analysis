.class final synthetic Lcom/google/android/gms/internal/ads/ml0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ph;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/rl0;

.field private final b:Lcom/google/android/gms/internal/ads/ph;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rl0;Lcom/google/android/gms/internal/ads/ph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ml0;->a:Lcom/google/android/gms/internal/ads/rl0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ml0;->b:Lcom/google/android/gms/internal/ads/ph;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/qh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ml0;->a:Lcom/google/android/gms/internal/ads/rl0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ml0;->b:Lcom/google/android/gms/internal/ads/ph;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rl0;->f0(Lcom/google/android/gms/internal/ads/ph;)Lcom/google/android/gms/internal/ads/qh;

    move-result-object v0

    return-object v0
.end method
