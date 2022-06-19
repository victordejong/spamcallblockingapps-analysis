.class final synthetic Lcom/google/android/gms/internal/ads/v40;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uy1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/y40;

.field private final b:Lcom/google/android/gms/internal/ads/zzdsy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/y40;Lcom/google/android/gms/internal/ads/zzdsy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v40;->a:Lcom/google/android/gms/internal/ads/y40;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/v40;->b:Lcom/google/android/gms/internal/ads/zzdsy;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v40;->a:Lcom/google/android/gms/internal/ads/y40;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v40;->b:Lcom/google/android/gms/internal/ads/zzdsy;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzawc;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/y40;->h(Lcom/google/android/gms/internal/ads/zzdsy;Lcom/google/android/gms/internal/ads/zzawc;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method
