.class final synthetic Lcom/google/android/gms/internal/ads/zzchx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaif;


# instance fields
.field private final zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzgjx:Lcom/google/android/gms/internal/ads/zzchs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchs;Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzgjx:Lcom/google/android/gms/internal/ads/zzchs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzgjx:Lcom/google/android/gms/internal/ads/zzchs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzchs;->zza(Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V

    return-void
.end method
