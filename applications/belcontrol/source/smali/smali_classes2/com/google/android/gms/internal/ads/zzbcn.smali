.class public final synthetic Lcom/google/android/gms/internal/ads/zzbcn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzoq;


# instance fields
.field private final zzepb:Lcom/google/android/gms/internal/ads/zzbck;

.field private final zzepc:Lcom/google/android/gms/internal/ads/zzoq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbck;Lcom/google/android/gms/internal/ads/zzoq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcn;->zzepb:Lcom/google/android/gms/internal/ads/zzbck;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcn;->zzepc:Lcom/google/android/gms/internal/ads/zzoq;

    return-void
.end method


# virtual methods
.method public final zzip()Lcom/google/android/gms/internal/ads/zzon;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcn;->zzepb:Lcom/google/android/gms/internal/ads/zzbck;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcn;->zzepc:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbck;->zza(Lcom/google/android/gms/internal/ads/zzoq;)Lcom/google/android/gms/internal/ads/zzon;

    move-result-object v0

    return-object v0
.end method
