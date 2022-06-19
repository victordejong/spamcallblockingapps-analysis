.class final Lcom/google/android/gms/internal/ads/zzdtf;
.super Lcom/google/android/gms/internal/ads/zzdtb;
.source "com.google.android.gms:play-services-gass@@19.7.0"


# instance fields
.field private zzhso:Ljava/lang/String;

.field private zzhsp:Ljava/lang/Boolean;

.field private zzhsq:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaxo()Lcom/google/android/gms/internal/ads/zzdtc;
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhso:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, " clientVersion"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhsp:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " shouldGetAdvertisingId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhsq:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " isGooglePlayServicesAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhso:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhsp:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhsq:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdtd;-><init>(Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzdtg;)V

    return-object v0
.end method

.method public final zzbo(Z)Lcom/google/android/gms/internal/ads/zzdtb;
    .locals 0

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhsp:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzbp(Z)Lcom/google/android/gms/internal/ads/zzdtb;
    .locals 0

    const/4 p1, 0x1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhsq:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzhe(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdtb;
    .locals 1

    const-string v0, "Null clientVersion"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzhso:Ljava/lang/String;

    return-object p0
.end method
