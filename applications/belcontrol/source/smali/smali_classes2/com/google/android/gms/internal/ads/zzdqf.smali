.class public final Lcom/google/android/gms/internal/ads/zzdqf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzdzv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaws()Lcom/google/android/gms/internal/ads/zzdqf;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqi;->zzawv()Lcom/google/android/gms/internal/ads/zzdqf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvd;->zzayx()Lcom/google/android/gms/internal/ads/zzdve;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzdvm;->zzhvh:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdve;->zzem(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzy;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzv;

    return-object v0
.end method
