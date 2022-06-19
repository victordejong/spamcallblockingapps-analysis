.class public Lcom/google/android/gms/ads/AdRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final zzada:Lcom/google/android/gms/internal/ads/emu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/emu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/emu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/emu;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/emu;->b(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emu;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emu;->a(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/emu;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 10
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_emulatorLiveAds"

    .line 11
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    .line 1032
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/emu;->d:Ljava/util/HashSet;

    const-string p2, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emu;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/AdRequest;
    .locals 1

    .line 18
    new-instance v0, Lcom/google/android/gms/ads/AdRequest;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-object v0
.end method

.method public setAdInfo(Lcom/google/android/gms/ads/query/AdInfo;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    .line 1067
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/emu;->q:Lcom/google/android/gms/ads/query/AdInfo;

    return-object p0
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    .line 1034
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/emu;->g:Ljava/util/Date;

    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 5

    const-string v0, "Content URL must be non-null."

    .line 21
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content URL must be non-empty."

    .line 22
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x200

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "Content URL must not exceed %d in length.  Provided length was %d."

    .line 27
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    .line 1036
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/emu;->h:Ljava/lang/String;

    return-object p0
.end method

.method public setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    .line 1046
    iput p1, v0, Lcom/google/android/gms/internal/ads/emu;->j:I

    return-object p0
.end method

.method public setHttpTimeoutMillis(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    .line 1078
    iput p1, v0, Lcom/google/android/gms/internal/ads/emu;->t:I

    return-object p0
.end method

.method public setIsDesignedForFamilies(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    .line 1065
    iput-boolean p1, v0, Lcom/google/android/gms/internal/ads/emu;->p:Z

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    .line 1048
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/emu;->k:Landroid/location/Location;

    return-object p0
.end method

.method public setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emu;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public setNeighboringContentUrls(Ljava/util/List;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "neighboring content URLs list should not be null"

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    return-object p0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emu;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    .line 1054
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/emu;->n:Ljava/lang/String;

    return-object p0
.end method

.method public setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emu;->a(I)V

    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emu;->a(Z)V

    return-object p0
.end method
