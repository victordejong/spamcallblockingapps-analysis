.class public final Lcom/google/android/gms/internal/ads/zzayi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzayk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaza;->zzbo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzayl;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayl;-><init>(Lcom/google/android/gms/internal/ads/zzayi;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbaa;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-object p2
.end method

.method public final zza(Ljava/lang/String;Landroid/content/pm/PackageInfo;I)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
