.class public final Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;
.super Lcom/google/android/gms/ads/AdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;Lcom/google/android/gms/ads/admanager/zza;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;-><init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    .line 1052
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emr;->m:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    .line 1041
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emr;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdt()Lcom/google/android/gms/internal/ads/emr;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    return-object v0
.end method
