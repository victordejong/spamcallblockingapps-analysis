.class final Lcom/google/android/gms/internal/ads/zzamn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbae<",
        "Lcom/google/android/gms/internal/ads/zzalx;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$input:Ljava/lang/Object;

.field private final synthetic zzdik:Lcom/google/android/gms/internal/ads/zzbaa;

.field private final synthetic zzdlb:Lcom/google/android/gms/internal/ads/zzalm;

.field private final synthetic zzdlc:Lcom/google/android/gms/internal/ads/zzamk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzalm;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdlc:Lcom/google/android/gms/internal/ads/zzamk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdlb:Lcom/google/android/gms/internal/ads/zzalm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamn;->val$input:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdik:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzg(Ljava/lang/Object;)V
    .locals 4

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzalx;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdlc:Lcom/google/android/gms/internal/ads/zzamk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdlb:Lcom/google/android/gms/internal/ads/zzalm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamn;->val$input:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdik:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzamk;->zza(Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzalx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbaa;)V

    return-void
.end method
