.class public final Lcom/google/android/gms/internal/ads/zzdhv;
.super Lcom/google/android/gms/internal/ads/zzdif;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdif<",
        "Lcom/google/android/gms/internal/ads/zzblg;",
        "Lcom/google/android/gms/internal/ads/zzbkx;",
        "Lcom/google/android/gms/internal/ads/zzbla;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbgc;Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdil;Lcom/google/android/gms/internal/ads/zzdnr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzbgc;",
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "Lcom/google/android/gms/internal/ads/zzbkx;",
            "Lcom/google/android/gms/internal/ads/zzblg;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdil;",
            "Lcom/google/android/gms/internal/ads/zzdnr;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zzdif;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbgc;Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdil;Lcom/google/android/gms/internal/ads/zzdnr;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/internal/ads/zzblu;Lcom/google/android/gms/internal/ads/zzbqx;Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzbqy;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhv;->zzgzs:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafj()Lcom/google/android/gms/internal/ads/zzbla;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbla;->zzc(Lcom/google/android/gms/internal/ads/zzblu;)Lcom/google/android/gms/internal/ads/zzbla;

    move-result-object p1

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbla;->zzc(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzbla;

    move-result-object p1

    .line 8
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzbla;->zzc(Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzbla;

    move-result-object p1

    return-object p1
.end method
