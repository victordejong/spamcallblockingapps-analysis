.class final synthetic Lcom/google/android/gms/internal/ads/zzald;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakp;


# instance fields
.field private final zzdjk:Lcom/google/android/gms/internal/ads/zzakz;

.field private final zzdjs:Lcom/google/android/gms/internal/ads/zzalq;

.field private final zzdjt:Lcom/google/android/gms/internal/ads/zzakm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakz;Lcom/google/android/gms/internal/ads/zzalq;Lcom/google/android/gms/internal/ads/zzakm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzald;->zzdjk:Lcom/google/android/gms/internal/ads/zzakz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzald;->zzdjs:Lcom/google/android/gms/internal/ads/zzalq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzald;->zzdjt:Lcom/google/android/gms/internal/ads/zzakm;

    return-void
.end method


# virtual methods
.method public final zzuk()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzald;->zzdjk:Lcom/google/android/gms/internal/ads/zzakz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzald;->zzdjs:Lcom/google/android/gms/internal/ads/zzalq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzald;->zzdjt:Lcom/google/android/gms/internal/ads/zzakm;

    .line 2
    sget-object v3, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzalc;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzalc;-><init>(Lcom/google/android/gms/internal/ads/zzakz;Lcom/google/android/gms/internal/ads/zzalq;Lcom/google/android/gms/internal/ads/zzakm;)V

    sget v0, Lcom/google/android/gms/internal/ads/zzalk;->zzdkc:I

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzdvl;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
