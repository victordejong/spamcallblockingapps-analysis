.class public final Lcom/google/android/gms/internal/ads/zzfin;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfiu;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzA()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfiu;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfin;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    const-string v1, "new_csi"

    const-string v2, "1"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfin;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfin;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfin;-><init>()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    const-string v2, "action"

    .line 2
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfin;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfin;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfin;-><init>()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    const-string v2, "request_id"

    .line 2
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfin;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfin;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfin;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfiu;->zzb(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfin;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfin;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfiu;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzfdn;)Lcom/google/android/gms/internal/ads/zzfin;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfdn;->zzx:Ljava/lang/String;

    const-string v1, "aai"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzfdq;)Lcom/google/android/gms/internal/ads/zzfin;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfdq;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfdq;->zzb:Ljava/lang/String;

    const-string v1, "gqi"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzfdz;Lcom/google/android/gms/internal/ads/zzcio;)Lcom/google/android/gms/internal/ads/zzfin;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfdz;->zzb:Lcom/google/android/gms/internal/ads/zzfdy;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfdy;->zzb:Lcom/google/android/gms/internal/ads/zzfdq;

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfin;->zzg(Lcom/google/android/gms/internal/ads/zzfdq;)Lcom/google/android/gms/internal/ads/zzfin;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfdy;->zza:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfdy;->zza:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfdn;

    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfdn;->zzb:I

    const-string v1, "ad_format"

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    const-string v0, "unknown"

    .line 6
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    const-string v2, "app_open_ad"

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcio;->zzj()Z

    move-result p2

    if-eq v1, p2, :cond_0

    const-string p2, "0"

    goto :goto_0

    :cond_0
    const-string p2, "1"

    :goto_0
    const-string v1, "as"

    .line 9
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    const-string v0, "rewarded"

    .line 10
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    const-string v0, "native_advanced"

    .line 11
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    const-string v0, "native_express"

    .line 12
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    const-string v0, "interstitial"

    .line 13
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    const-string v0, "banner"

    .line 14
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzblj;->zzfs:Lcom/google/android/gms/internal/ads/zzblb;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgq;->zzc()Lcom/google/android/gms/internal/ads/zzblh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzblh;->zzb(Lcom/google/android/gms/internal/ads/zzblb;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zze;->zzd(Lcom/google/android/gms/internal/ads/zzfdz;)Z

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    .line 19
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zze;->zzb(Lcom/google/android/gms/internal/ads/zzfdz;)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    const-string v1, "ragent"

    .line 22
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zze;->zza(Lcom/google/android/gms/internal/ads/zzfdz;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    const-string v0, "rtype"

    .line 25
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzi(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfin;
    .locals 3

    const-string v0, "cnt"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "network_coarse"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "gnt"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "network_fine"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final zzj()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfin;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfiu;->zza()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfit;

    .line 3
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfit;->zza:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfit;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
