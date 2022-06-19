.class public final Lcom/google/android/gms/internal/ads/zzdbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzdbl;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdtx:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzv;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzazn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbk;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbk;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdbk;->zzdtx:Lcom/google/android/gms/internal/ads/zzazn;

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdbl;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbk;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdbn;-><init>(Lcom/google/android/gms/internal/ads/zzdbk;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzatb()Lcom/google/android/gms/internal/ads/zzdbl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbk;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnp;->zzhla:Lcom/google/android/gms/internal/ads/zzvx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbk;->zzdtx:Lcom/google/android/gms/internal/ads/zzazn;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdbl;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Lcom/google/android/gms/internal/ads/zzazn;)V

    return-object v0
.end method
