.class public final Lcom/google/android/gms/internal/ads/zzbnz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field public final zzfwk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbnt;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnt;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnz;->zzfwk:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbnt;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnz;->zzfwk:Ljava/util/List;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcrj;)Lcom/google/android/gms/internal/ads/zzcrj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcrj<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbnt;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcrj<",
            "Lcom/google/android/gms/internal/ads/zzbnz;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbob;->zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcrm;-><init>(Lcom/google/android/gms/internal/ads/zzcrj;Lcom/google/android/gms/internal/ads/zzdvz;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcty;)Lcom/google/android/gms/internal/ads/zzcrj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcty<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbnt;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcrj<",
            "Lcom/google/android/gms/internal/ads/zzbnz;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzboc;->zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcrm;-><init>(Lcom/google/android/gms/internal/ads/zzcrj;Lcom/google/android/gms/internal/ads/zzdvz;)V

    return-object v0
.end method
