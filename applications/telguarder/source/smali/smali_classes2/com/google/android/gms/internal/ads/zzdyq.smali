.class final Lcom/google/android/gms/internal/ads/zzdyq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzhzu:Lcom/google/android/gms/internal/ads/zzdwy;

.field private final synthetic zzhzv:Lcom/google/android/gms/internal/ads/zzdyo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdyo;Lcom/google/android/gms/internal/ads/zzdwy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zzhzv:Lcom/google/android/gms/internal/ads/zzdyo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zzhzu:Lcom/google/android/gms/internal/ads/zzdwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zzhzv:Lcom/google/android/gms/internal/ads/zzdyo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zzhzu:Lcom/google/android/gms/internal/ads/zzdwy;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyo;->zzb(Lcom/google/android/gms/internal/ads/zzdyo;Lcom/google/android/gms/internal/ads/zzdwy;)V

    return-void
.end method
