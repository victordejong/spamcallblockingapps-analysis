.class public final Lcom/google/android/gms/internal/ads/pb;
.super Lcom/google/android/gms/internal/ads/ov;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

.field private b:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

.field private c:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ov;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pb;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/oq;Lcom/google/android/gms/internal/ads/ms;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oq;",
            "Lcom/google/android/gms/internal/ads/ms;",
            ")",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/google/android/gms/internal/ads/ph;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ph;-><init>(Lcom/google/android/gms/internal/ads/pb;Lcom/google/android/gms/internal/ads/oq;Lcom/google/android/gms/internal/ads/ms;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/pb;Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pb;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/pb;Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAd;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pb;->c:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;)Ljava/lang/String;
    .locals 1

    .line 148
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvq;->zzadx:Ljava/lang/String;

    .line 149
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "max_ad_content_rating"

    .line 150
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method private static a(Lcom/google/android/gms/internal/ads/zzvq;)Z
    .locals 0

    .line 147
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzcid:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yq;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final b(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;
    .locals 1

    .line 154
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvq;->zzcih:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 155
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvq;->zzcih:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 158
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method private static b(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Server parameters: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    .line 135
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_2

    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 139
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object v0, p0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    const-string v0, ""

    .line 145
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzaqr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/Adapter;->getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqr;->zza(Lcom/google/android/gms/ads/mediation/VersionInfo;)Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/ox;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/pe;

    invoke-direct {v0, p0, p6}, Lcom/google/android/gms/internal/ads/pe;-><init>(Lcom/google/android/gms/internal/ads/pb;Lcom/google/android/gms/internal/ads/ox;)V

    .line 105
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 107
    new-instance v1, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    const/4 v2, -0x1

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "rewarded_interstitial"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "interstitial"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "rewarded"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "native"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v3, "banner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    .line 113
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->NATIVE:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_1

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Internal Error"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_2
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->REWARDED_INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_1

    .line 111
    :cond_3
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_1

    .line 110
    :cond_4
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_1

    .line 109
    :cond_5
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 115
    :goto_1
    invoke-direct {v1, p2, p4}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;-><init>(Lcom/google/android/gms/ads/AdFormat;Landroid/os/Bundle;)V

    .line 116
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance p4, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;

    .line 119
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget v1, p5, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    iget v2, p5, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    .line 120
    invoke-static {v1, v2, p5}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p5

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;)V

    .line 122
    invoke-virtual {p6, p4, v0}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->collectSignals(Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Error generating signals for RTB"

    .line 125
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_4
        -0x3ebdafe9 -> :sswitch_3
        -0xe47b3f2 -> :sswitch_2
        0x240b672c -> :sswitch_1
        0x71ef0bbd -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pb;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/of;Lcom/google/android/gms/internal/ads/ms;Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p7

    .line 5
    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/ads/pa;

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/pa;-><init>(Lcom/google/android/gms/internal/ads/pb;Lcom/google/android/gms/internal/ads/of;Lcom/google/android/gms/internal/ads/ms;)V

    .line 6
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 7
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pb;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/pb;->b(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;

    move-result-object v9

    .line 10
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/pb;->a(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzng:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadv:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadw:I

    .line 11
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/pb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;)Ljava/lang/String;

    move-result-object v14

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    .line 12
    invoke-static {v0, v5, v2}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/pb;->d:Ljava/lang/String;

    move-object v5, v15

    move-object/from16 v7, p1

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v16, v2

    invoke-direct/range {v5 .. v16}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Adapter failed to render banner ad."

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/ok;Lcom/google/android/gms/internal/ads/ms;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 31
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/pc;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/pc;-><init>(Lcom/google/android/gms/internal/ads/pb;Lcom/google/android/gms/internal/ads/ok;Lcom/google/android/gms/internal/ads/ms;)V

    .line 32
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 33
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    .line 34
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pb;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 35
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/pb;->b(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;

    move-result-object v8

    .line 36
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/pb;->a(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzng:Landroid/location/Location;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadv:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadw:I

    .line 37
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/pb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/pb;->d:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "Adapter failed to render interstitial ad."

    .line 41
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/ol;Lcom/google/android/gms/internal/ads/ms;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 69
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/pb;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/ol;Lcom/google/android/gms/internal/ads/ms;Lcom/google/android/gms/internal/ads/zzaei;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/ol;Lcom/google/android/gms/internal/ads/ms;Lcom/google/android/gms/internal/ads/zzaei;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 71
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/pf;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/pf;-><init>(Lcom/google/android/gms/internal/ads/pb;Lcom/google/android/gms/internal/ads/ol;Lcom/google/android/gms/internal/ads/ms;)V

    .line 72
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 73
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    .line 74
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pb;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 75
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/pb;->b(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;

    move-result-object v8

    .line 76
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/pb;->a(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzng:Landroid/location/Location;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadv:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadw:I

    .line 77
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/pb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/pb;->d:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    move-object v0, v15

    move-object/from16 v15, p7

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaei;)V

    .line 78
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "Adapter failed to render native ad."

    .line 81
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/oq;Lcom/google/android/gms/internal/ads/ms;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 44
    :try_start_0
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/pb;->a(Lcom/google/android/gms/internal/ads/oq;Lcom/google/android/gms/internal/ads/ms;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v2

    .line 45
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 46
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    .line 47
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pb;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 48
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/pb;->b(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;

    move-result-object v8

    .line 49
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/pb;->a(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzng:Landroid/location/Location;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadv:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadw:I

    .line 50
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/pb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/pb;->d:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "Adapter failed to render rewarded ad."

    .line 54
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a([Ljava/lang/String;[Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzaqr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/Adapter;->getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqr;->zza(Lcom/google/android/gms/ads/mediation/VersionInfo;)Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/of;Lcom/google/android/gms/internal/ads/ms;Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p7

    .line 18
    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/ads/pd;

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/pd;-><init>(Lcom/google/android/gms/internal/ads/pb;Lcom/google/android/gms/internal/ads/of;Lcom/google/android/gms/internal/ads/ms;)V

    .line 19
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 20
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    .line 21
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pb;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 22
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/pb;->b(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;

    move-result-object v9

    .line 23
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/pb;->a(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzng:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadv:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadw:I

    .line 24
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/pb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;)Ljava/lang/String;

    move-result-object v14

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    .line 25
    invoke-static {v0, v5, v2}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/pb;->d:Ljava/lang/String;

    move-object v5, v15

    move-object/from16 v7, p1

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v16, v2

    invoke-direct/range {v5 .. v16}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbInterscrollerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Adapter failed to render interscroller ad."

    .line 29
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/oq;Lcom/google/android/gms/internal/ads/ms;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 57
    :try_start_0
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/pb;->a(Lcom/google/android/gms/internal/ads/oq;Lcom/google/android/gms/internal/ads/ms;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v2

    .line 58
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 59
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    .line 60
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/pb;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 61
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/pb;->b(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;

    move-result-object v8

    .line 62
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/pb;->a(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzng:Landroid/location/Location;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadv:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvq;->zzadw:I

    .line 63
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/pb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/pb;->d:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbRewardedInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "Adapter failed to render rewarded interstitial ad."

    .line 67
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/dynamic/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pb;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;->showAd(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, ""

    .line 88
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final c()Lcom/google/android/gms/internal/ads/emk;
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/zza;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 99
    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/zza;

    .line 100
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/zza;->getVideoController()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 102
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final c(Lcom/google/android/gms/dynamic/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pb;->c:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;->showAd(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, ""

    .line 95
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
