.class final synthetic Lcom/google/android/gms/internal/ads/zzcdv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfq;


# instance fields
.field private final zzehx:Ljava/util/Map;

.field private final zzggq:Lcom/google/android/gms/internal/ads/zzcdp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcdp;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzggq:Lcom/google/android/gms/internal/ads/zzcdp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzehx:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzal(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzggq:Lcom/google/android/gms/internal/ads/zzcdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzehx:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcdp;->zzb(Ljava/util/Map;Z)V

    return-void
.end method
