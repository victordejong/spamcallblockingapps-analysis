.class public final Lcom/google/android/gms/internal/ads/zzzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final zzado:I

.field private final zzadp:I

.field private final zzadq:Ljava/lang/String;

.field private final zzbni:Z

.field private final zzcho:I

.field private final zzchr:Ljava/lang/String;

.field private final zzcht:Ljava/lang/String;

.field private final zzchv:Landroid/os/Bundle;

.field private final zzchx:Ljava/lang/String;

.field private final zzchz:Z

.field private final zzcib:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcic:I

.field private final zzcka:Landroid/os/Bundle;

.field private final zzcke:Lcom/google/android/gms/ads/query/AdInfo;

.field private final zzckf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final zzckg:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field private final zzckh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcki:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmx:Ljava/util/Date;

.field private final zzmz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zznb:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzj;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzzk;-><init>(Lcom/google/android/gms/internal/ads/zzzj;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzj;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zza(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzmx:Ljava/util/Date;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzb(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcht:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzc(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcib:Ljava/util/List;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Lcom/google/android/gms/internal/ads/zzzj;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcho:I

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zze(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzmz:Ljava/util/Set;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzf(Lcom/google/android/gms/internal/ads/zzzj;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zznb:Landroid/location/Location;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzg(Lcom/google/android/gms/internal/ads/zzzj;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzbni:Z

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzh(Lcom/google/android/gms/internal/ads/zzzj;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcka:Landroid/os/Bundle;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzi(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzckf:Ljava/util/Map;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzj(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzchr:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzk(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzchx:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzckg:Lcom/google/android/gms/ads/search/SearchAdRequest;

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzl(Lcom/google/android/gms/internal/ads/zzzj;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzado:I

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzm(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzckh:Ljava/util/Set;

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzn(Lcom/google/android/gms/internal/ads/zzzj;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzchv:Landroid/os/Bundle;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzo(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcki:Ljava/util/Set;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzp(Lcom/google/android/gms/internal/ads/zzzj;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzchz:Z

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzq(Lcom/google/android/gms/internal/ads/zzzj;)Lcom/google/android/gms/ads/query/AdInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcke:Lcom/google/android/gms/ads/query/AdInfo;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzr(Lcom/google/android/gms/internal/ads/zzzj;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzadp:I

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzs(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzadq:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzt(Lcom/google/android/gms/internal/ads/zzzj;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcic:I

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzmx:Ljava/util/Date;

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcht:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcka:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzchv:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getGender()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcho:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzmz:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zznb:Landroid/location/Location;

    return-object v0
.end method

.method public final getManualImpressionsEnabled()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzbni:Z

    return v0
.end method

.method public final getMaxAdContentRating()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzadq:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzckf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object p1
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcka:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzchr:Ljava/lang/String;

    return-object v0
.end method

.method public final isDesignedForFamilies()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzchz:Z

    return v0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .locals 2

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzn;->zzrs()Lcom/google/android/gms/internal/ads/zzzn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzn;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaza;->zzbm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzckh:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTestDeviceIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzrh()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcib:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final zzri()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzchx:Ljava/lang/String;

    return-object v0
.end method

.method public final zzrj()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzckg:Lcom/google/android/gms/ads/search/SearchAdRequest;

    return-object v0
.end method

.method public final zzrk()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzckf:Ljava/util/Map;

    return-object v0
.end method

.method public final zzrl()Landroid/os/Bundle;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcka:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzrm()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzado:I

    return v0
.end method

.method public final zzrn()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcki:Ljava/util/Set;

    return-object v0
.end method

.method public final zzro()Lcom/google/android/gms/ads/query/AdInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcke:Lcom/google/android/gms/ads/query/AdInfo;

    return-object v0
.end method

.method public final zzrp()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzadp:I

    return v0
.end method

.method public final zzrq()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzk;->zzcic:I

    return v0
.end method
