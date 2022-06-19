.class final Lcom/google/android/gms/internal/ads/zzdyk$zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdyk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final future:Lcom/google/android/gms/internal/ads/zzdzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "+TV;>;"
        }
    .end annotation
.end field

.field final zzhzi:Lcom/google/android/gms/internal/ads/zzdyk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdyk<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdzw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdyk<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->zzhzi:Lcom/google/android/gms/internal/ads/zzdyk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->zzhzi:Lcom/google/android/gms/internal/ads/zzdyk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zzb(Lcom/google/android/gms/internal/ads/zzdyk;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zzf(Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdyk;->zzazu()Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->zzhzi:Lcom/google/android/gms/internal/ads/zzdyk;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->zzhzi:Lcom/google/android/gms/internal/ads/zzdyk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zzc(Lcom/google/android/gms/internal/ads/zzdyk;)V

    :cond_1
    return-void
.end method
