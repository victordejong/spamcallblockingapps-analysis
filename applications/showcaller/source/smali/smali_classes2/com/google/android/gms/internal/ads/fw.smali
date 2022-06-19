.class final synthetic Lcom/google/android/gms/internal/ads/fw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jv2;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/iw;

.field private final e:Lcom/google/android/gms/internal/ads/cw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/iw;Lcom/google/android/gms/internal/ads/cw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fw;->d:Lcom/google/android/gms/internal/ads/iw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fw;->e:Lcom/google/android/gms/internal/ads/cw;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->d:Lcom/google/android/gms/internal/ads/iw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fw;->e:Lcom/google/android/gms/internal/ads/cw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/iw;->e(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
