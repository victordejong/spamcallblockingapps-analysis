.class public final Lcom/google/android/gms/internal/ads/zzdsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzhrj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhrk:Lcom/google/android/gms/internal/ads/zzdsd;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdsd;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrk:Lcom/google/android/gms/internal/ads/zzdsd;

    return-void
.end method

.method public static zzgx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;
    .locals 3

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdsa;-><init>()V

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static zzgy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;
    .locals 2

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdsa;-><init>()V

    const-string v1, "request_id"

    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzayy;)Lcom/google/android/gms/internal/ads/zzdsa;
    .locals 2

    .line 22
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    if-nez v0, :cond_0

    return-object p0

    .line 24
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    .line 25
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdsa;->zzb(Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzdsa;

    .line 27
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhkp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhkp:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdmw;

    .line 29
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhiy:I

    const-string v0, "ad_format"

    packed-switch p1, :pswitch_data_0

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    const-string p2, "unknown"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 40
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    const-string v1, "app_open_ad"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    .line 43
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzayy;->zzyf()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "1"

    goto :goto_0

    :cond_2
    const-string p2, "0"

    :goto_0
    const-string v0, "as"

    .line 44
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 38
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    const-string p2, "rewarded"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 36
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    const-string p2, "native_advanced"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 34
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    const-string p2, "native_express"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 32
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    const-string p2, "interstitial"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    const-string p2, "banner"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-object p0

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

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzdsa;
    .locals 2

    .line 47
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzdmw;)Lcom/google/android/gms/internal/ads/zzdsa;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzdlu:Ljava/lang/String;

    const-string v1, "aai"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzgz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrk:Lcom/google/android/gms/internal/ads/zzdsd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdsd;->zzha(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzls()Ljava/util/Map;
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

    .line 52
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrk:Lcom/google/android/gms/internal/ads/zzdsd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsd;->zzaxl()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdsg;

    .line 54
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzdsg;->label:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdsg;->value:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzq(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdsa;
    .locals 3

    const-string v0, "cnt"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "network_coarse"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "gnt"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "network_fine"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrj:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzv(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhrk:Lcom/google/android/gms/internal/ads/zzdsd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsd;->zzw(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
