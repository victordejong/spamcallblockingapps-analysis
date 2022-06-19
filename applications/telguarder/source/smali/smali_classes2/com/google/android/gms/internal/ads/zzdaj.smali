.class public final Lcom/google/android/gms/internal/ads/zzdaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyu<",
        "Lcom/google/android/gms/internal/ads/zzatq;",
        "Lcom/google/android/gms/internal/ads/zzdak;",
        ">;"
    }
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private zzhad:Lcom/google/android/gms/internal/ads/zzcmx;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcmx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaj;->executor:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzhad:Lcom/google/android/gms/internal/ads/zzcmx;

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzatq;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaj;->zzhad:Lcom/google/android/gms/internal/ads/zzcmx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcmx;->zzg(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdai;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdai;-><init>(Lcom/google/android/gms/internal/ads/zzatq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaj;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
