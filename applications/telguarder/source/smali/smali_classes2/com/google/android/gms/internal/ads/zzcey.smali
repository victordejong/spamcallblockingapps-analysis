.class final synthetic Lcom/google/android/gms/internal/ads/zzcey;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzgig:Lcom/google/android/gms/internal/ads/zzdzw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcey;->zzgig:Lcom/google/android/gms/internal/ads/zzdzw;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcey;->zzgig:Lcom/google/android/gms/internal/ads/zzdzw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabc()Lcom/google/android/gms/internal/ads/zzbev;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcva;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    const-string v1, "Retrieve video view in instream ad response failed."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcva;-><init>(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;)V

    throw p1
.end method
