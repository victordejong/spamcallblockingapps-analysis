.class final synthetic Lcom/google/android/gms/internal/ads/edd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cov;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ede;

.field private final b:Lcom/google/android/gms/internal/ads/ect;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ede;Lcom/google/android/gms/internal/ads/ect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/edd;->a:Lcom/google/android/gms/internal/ads/ede;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/edd;->b:Lcom/google/android/gms/internal/ads/ect;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edd;->a:Lcom/google/android/gms/internal/ads/ede;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/edd;->b:Lcom/google/android/gms/internal/ads/ect;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ede;->b(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
